using FirebaseAdmin.Auth;
using Google.Cloud.Firestore;
using Photox.auth.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Photox.app
{
    public partial class viewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();

            auth.InitializeApp();

            OpenAlbum();

            note.Visible = false;
        }

        private async void CheckAuth()
        {
            //var qq = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);
            //Console.WriteLine(qq);

            if (Request.Cookies["_snbslg"] != null)
            {
                //Create Session Cookie
                // Set session expiration to 5 days.
                var options = new SessionCookieOptions()
                {
                    ExpiresIn = TimeSpan.FromDays(5),
                };

                var sessionCookie = await FirebaseAuth.DefaultInstance.CreateSessionCookieAsync(Request.Cookies["_snbslg"].Value, options);

                HttpCookie strname = new HttpCookie("session")
                {
                    Value = sessionCookie,
                    Expires = DateTime.Now.AddDays(10),
                    Secure = true
                };

                Response.Cookies.Add(strname);
                Response.Write($"<script>alert('Added + {strname}')</script>");

                try
                {
                    var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);

                    UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

                    if (userRecord.DisplayName != null)
                    {
                        if (userRecord.DisplayName.IndexOf(' ') >= 0)
                        {
                            //Username.Text = userRecord.DisplayName.Substring(0, userRecord.DisplayName.IndexOf(' '));
                        }
                        else
                        {
                            //Username.Text = userRecord.DisplayName;
                        }
                    }

                    //EmailAdress.Text = userRecord.Email;


                    if (userRecord.PhotoUrl != null)
                    {
                        //ProfileImage1.ImageUrl = userRecord.PhotoUrl;
                    }
                }
                catch (FirebaseAuthException ex)
                {
                    if (ex.AuthErrorCode == AuthErrorCode.ExpiredIdToken)
                    {
                        Response.Write($"<script>alert('{ex.Message}')</script>");
                    }
                    else
                    {
                        Console.WriteLine(ex.Message);
                    }
                }
            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }
        }
        private async void OpenAlbum()
        {
            //Get user details by UID
            try
            {
                var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

                UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

                FirestoreDb db = FirestoreDb.Create("photox-4e1e1");

                CollectionReference usersRef = db.Collection(userRecord.Uid);

                QuerySnapshot allCitiesQuerySnapshot = await usersRef.GetSnapshotAsync();

                List<object> imageURLs = new List<object>();

                foreach (DocumentSnapshot documentSnapshot in allCitiesQuerySnapshot.Documents)
                {
                    Dictionary<string, object> city = documentSnapshot.ToDictionary();

                    foreach (KeyValuePair<string, object> pair in city)
                    {
                        imageURLs = city.Values.ToList();
                    }
                }

                try
                {
                    //Set image tag sources from download URLs
                    Image1.ImageUrl = imageURLs[0].ToString();
                    Image2.ImageUrl = imageURLs[1].ToString();
                    Image3.ImageUrl = imageURLs[2].ToString();
                    Image4.ImageUrl = imageURLs[3].ToString();

                    //Set sources for slides
                    src1.HRef = imageURLs[0].ToString();
                    src2.HRef = imageURLs[1].ToString();
                    src3.HRef = imageURLs[2].ToString();
                    src4.HRef = imageURLs[3].ToString();

                }
                catch (Exception)
                {
                    Response.Write("<script>alert('You don't have any photos yet')</script>");
                }
            }catch(FirebaseAuthException)
            {
                Response.Redirect("../auth/access.html", false);
            }
        }
        protected async void FillDropDown(object sender, EventArgs e)
        {
            note.Visible = true;
            // Iterate through all users. This will still retrieve users in batches,
            // buffering no more than 1000 users in memory at a time.
            var enumerator = FirebaseAuth.DefaultInstance.ListUsersAsync(null).GetAsyncEnumerator();
            while (await enumerator.MoveNextAsync())
            {
                ExportedUserRecord user = enumerator.Current;

                AllUserNames.Items.Clear();
                AllUserNames.Items.Add(user.Email);
            }
        }
        protected async void Share(object sender, EventArgs e)
        {
            var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

            UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

            GetUsersResult result = await FirebaseAuth.DefaultInstance.GetUsersAsync(
            new List<UserIdentifier>
            {
                new UidIdentifier(userRecord.Uid),
            });

            foreach (UserRecord user in result.Users)
            {
                ////Get or create database
                FirestoreDb db = FirestoreDb.Create("photox-4e1e1"); //A unique collection that has user specific data

                DocumentReference docRef = db.Collection(user.Uid).Document("Shared").Collection(userRecord.Uid).Document("Images");
                
                //Get Shared URL

                Dictionary<string, string> insert = new Dictionary<string, string>
                {
                    { "SharedURL", Request.Cookies["pic"].Value }
                };

                await docRef.SetAsync(insert);
            }
        }
        protected async void Delete(object sender, EventArgs e)
        {
            var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

            UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

            FirestoreDb db = FirestoreDb.Create("photox-4e1e1");

            //CollectionReference usersRef = db.Collection(userRecord.Uid);
            DocumentReference cityRef = db.Collection(userRecord.Uid).Document("Mingo");
            Dictionary<string, object> updates = new Dictionary<string, object>
            {
                { 
                    "aqz", FieldValue.Delete 
                }
            };
            await cityRef.UpdateAsync(updates);
            Response.Write("<script>alert('Image deleted successfully')</script>");
        }
        protected void Test(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Works')</script>");
        }
        protected void Pic1(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Pic')</script>");
        }
    }
}