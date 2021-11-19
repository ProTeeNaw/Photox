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
            //Response.Write($"<script>alert('{imageURLs[0].ToString()}')</script>");
            //Response.Write($"<script>alert('{imageURLs[1].ToString()}')</script>");

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
    }
}