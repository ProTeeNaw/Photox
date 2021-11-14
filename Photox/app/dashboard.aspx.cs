using Firebase.Storage;
using FirebaseAdmin.Auth;
using Photox.auth.FirebaseAuth;
using System;
using System.IO;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI.HtmlControls;

namespace Photox.app
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();

            auth.InitializeApp();

            CheckAuth();
        }

        private async void CheckAuth()
        {
            //var qq = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);
            //Console.WriteLine(qq);
            if (Request.Cookies["_snbslg"] != null)
            {
                try
                {
                    var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);

                    UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

                    //Create Session Cookie
                    // Set session expiration to 5 days.
                    var options = new SessionCookieOptions()
                    {
                        ExpiresIn = TimeSpan.FromDays(5),
                    };

                    try
                    {
                        var sessionCookie = await FirebaseAuth.DefaultInstance.CreateSessionCookieAsync(Request.Cookies["_snbslg"].Value, options);

                        HttpCookie strname = new HttpCookie("session")
                        {
                            Value = sessionCookie,
                            Expires = DateTime.Now.AddDays(10),
                            Secure = true
                        };

                        Response.Cookies.Add(strname);
                        Response.Write($"<script>alert('Added + {strname}')</script>");
                    }
                    catch (FirebaseAuthException ex)
                    {
                        Response.Write($"<script>alert('{ex.Message}')</script>");
                    }


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
                        Response.Redirect("http://localhost:5000", false);
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

        protected async void UploadFile(object sender, EventArgs e)
        {
            if (Request.Cookies["_snbslg"] != null)
            {
                if (Request.Cookies["file_path"] != null)
                {
                    try
                    {
                        var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

                        // Get any Stream - it can be FileStream, MemoryStream or any other type of Stream
                        var stream = File.Open(Request.Cookies["file_path"].Value, FileMode.Open);

                        //authentication
                        // Constructr FirebaseStorage, path to where you want to upload the file and Put it there
                        var task = new FirebaseStorage(
                            "photox-4e1e1.appspot.com",

                             new FirebaseStorageOptions
                             {
                             //AuthTokenAsyncFactory = () => Task.FromResult(Request.Cookies["session"].Value),
                             ThrowOnCancel = true,
                             })

                            .Child("data")
                            .PutAsync(stream);

                        // Track progress of the upload
                        //task.Progress.ProgressChanged += (s, e) => Console.WriteLine($"Progress: {e.Percentage} %");

                        // await the task to wait until upload completes and get the download url
                        var downloadUrl = await task;
                        Console.WriteLine(downloadUrl);
                    }
                    catch (FirebaseAuthException ex)
                    {
                        Response.Write($"<script>alert('{ex.Message}')</script>");
                    }
                }
                else
                {

                }

            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }

        }

        private async void SessionCookie()
        {

        }
    }
}
