using Firebase.Storage;
using FirebaseAdmin.Auth;
using Google.Cloud.Firestore;
using Photox.auth.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Photox.app
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();

            auth.InitializeApp();

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
            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }

            GetAlbums();
        }
        private async void CheckAuth()
        {
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
            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }
        }
        protected async void UploadFile(object sender, EventArgs e)
        {
            if (Request.Cookies["_snbslg"] != null)
            {
                string filePath;

                if (ChooseImage.PostedFile != null)
                {
                    string fileName = Path.GetFileName(ChooseImage.PostedFile.FileName); // file name with path.
                    ChooseImage.SaveAs(Server.MapPath(@"~/temp/" + fileName));
                    string filepath;
                    filePath = Server.MapPath(@"~/temp/" + fileName);

                    try
                    {
                        var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

                        // Get any Stream - it can be FileStream, MemoryStream or any other type of Stream
                        var stream = File.Open(filePath, FileMode.Open);

                        //authentication
                        // Constructr FirebaseStorage, path to where you want to upload the file and Put it there
                        var task = new FirebaseStorage(
                            "photox-4e1e1.appspot.com",

                             new FirebaseStorageOptions
                             {
                                 //AuthTokenAsyncFactory = () => Task.FromResult(Request.Cookies["session"].Value),
                                 ThrowOnCancel = true,
                             })

                            .Child($"{decodedToken.Uid}/images/" + fileName)
                            .PutAsync(stream);

                        // Track progress of the upload
                        //task.Progress.ProgressChanged += (s, e) => Console.WriteLine($"Progress: {e.Percentage} %");

                        // await the task to wait until upload completes and get the download url
                        var downloadUrl = await task;

                        if (AlbumName.Text != "")
                        {
                            PhotoDB(AlbumName.Text, downloadUrl);
                        }
                        else
                        {
                            //To upload photos to an existing album
                            //PhotoDB("Testing Album Name", downloadUrl);
                        }

                        Console.WriteLine(downloadUrl);
                    }
                    catch (FirebaseAuthException ex)
                    {
                        Response.Write($"<script>alert('{ex.Message}')</script>");
                    }
                }
                else
                {
                    //Choose an image
                }
            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }
        }
        private async void PhotoDB(string AlbumName, string DownloadURL)
        {
            //Get user details by UID
            var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

            UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

            ////Get or create database
            FirestoreDb db = FirestoreDb.Create("photox-4e1e1"); //A unique collection that has user specific data

            DocumentReference docRef = db.Collection(userRecord.Uid).Document(AlbumName);
            Dictionary<string, string> insert = new Dictionary<string, string>
                {
                    { DownloadURL, "" }
                };

            await docRef.SetAsync(insert);
        }
        private async void GetAlbums()
        {
            //Get user details by UID
            var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

            UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

            FirestoreDb db = FirestoreDb.Create("photox-4e1e1");

            CollectionReference usersRef = db.Collection(userRecord.Uid);

            QuerySnapshot allCitiesQuerySnapshot = await usersRef.GetSnapshotAsync();

            foreach (DocumentSnapshot documentSnapshot in allCitiesQuerySnapshot.Documents)
            {
                HtmlGenericControl li = new HtmlGenericControl("li");

                string AlbumToAdd = "<ul>" +
                    "<li class='adobe-product'>" +

                         "<div class='products'>" +
                        "<asp:Image runat = 'server'/>" +
                           $"{documentSnapshot.Id}" +
                       "</div>" +
                       "<div class='button-wrapper'>" +
                        $"<button ID='{documentSnapshot.Id}' class='content-button status-button open' onclick='open_viewer()'>Open</button>" +
                        "<div class='menu'>" +
                         "<div class='dropdown'>" +
                          "<ul>" +
                           "<li onclick='upload_pop_up_open()'><a href='#'> Upload</a></li>" +
                           "<li><a href = '#' > Delete </a></li>" +
                          "</ul>" +
                         "</div>" +
                        "</div>" +
                       "</div>" +
                      "</li> " +
                      "</ul>";

                li.InnerHtml = AlbumToAdd;

                AlbumListPanel.Controls.Add(li);
            }
        }

    }
}