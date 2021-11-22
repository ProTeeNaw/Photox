using Firebase.Storage;
using FirebaseAdmin.Auth;
using Photox.auth.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
        SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Data.mdf;Integrated Security=True; MultipleActiveResultSets=true");
        SqlCommand command;
        protected async void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();

            auth.InitializeApp();

            try
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
            catch(FirebaseAuthException ex)
            {
                Console.Write(ex.Message);
                if(ex.AuthErrorCode == AuthErrorCode.InvalidIdToken)
                {
                    Response.Redirect("../auth/access.html", false);
                }
            }

            connect.Open();
            LoadImages();
            connect.Close();
        }
        protected async void UploadFile(object sender, EventArgs e)
        {
            connect.Open();
            if (Request.Cookies["_snbslg"] != null)
            {

                var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

                ChooseImage.SaveAs(Request.PhysicalApplicationPath + "temp/" + ChooseImage.FileName);

                var stream = File.Open(Server.MapPath(ChooseImage.FileName), FileMode.Open);

                //authentication
                // Constructr FirebaseStorage, path to where you want to upload the file and Put it there
                var task = new FirebaseStorage(
                    "photox-4e1e1.appspot.com",

                     new FirebaseStorageOptions
                     {
                             //AuthTokenAsyncFactory = () => Task.FromResult(Request.Cookies["session"].Value),
                             ThrowOnCancel = true,
                     })

                    .Child($"{decodedToken.Uid}/" + ChooseImage.FileName)
                    .PutAsync(stream);

                // Track progress of the upload
                //task.Progress.ProgressChanged += (s, e) => Console.WriteLine($"Progress: {e.Percentage} %");

                // await the task to wait until upload completes and get the download url
                
                var downloadUrl = await task;

                command = new SqlCommand($"INSERT INTO ImageTable VALUES('{downloadUrl}', 'tino', 'tino', 'tino', 'tino', 'tino', 'tino', 'tinomunhenga@gmail.com')", connect);

                command.ExecuteNonQuery();

                connect.Close();

                Response.Write($"<script>alert('Image Inserted Successfully: {downloadUrl}')</script>");
            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }
        }

        protected void Update(object sender, EventArgs e)
        {

        }

        protected void LoadImages()
        {
            if (Request.Cookies["_snbslg"] != null)
            {
               command = new SqlCommand($"SELECT Image FROM ImageTable WHERE Id=6", connect);

               Image1.ImageUrl = command.ExecuteScalar().ToString();

               command = new SqlCommand($"SELECT Image FROM ImageTable WHERE Id=7", connect);
               Image1.ImageUrl = command.ExecuteScalar().ToString();

            }
            else
            {
                Response.Redirect("../auth/access.html", false);
            }
        }

        protected string FileName()
        {
            SqlCommand comm = new SqlCommand($"SELECT FileName FROM ImageTable", connect);

            SqlDataReader read = comm.ExecuteReader();

            string name = "";

            while (read.Read())
            {
                name = read[0].ToString();
            }

            read.Close();

            return name;
        }
        

    }
}