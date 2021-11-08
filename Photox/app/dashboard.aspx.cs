using FirebaseAdmin.Auth;
using Photox.auth.FirebaseAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

        /// <summary>
        /// Check if user is logged in and get user related data.
        /// </summary>
        private async void CheckAuth()
        {
            var qq = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["_snbslg"].Value, true);
            Console.WriteLine(qq);
            if (Request.Cookies["_snbslg"] != null)
            {
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
    }
}