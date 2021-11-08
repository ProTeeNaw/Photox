using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FirebaseAdmin;
using FirebaseAdmin.Auth;
using Google.Apis.Auth.OAuth2;
namespace Photox.auth.FirebaseAuth
{
    public class Auth
    {
        public void InitializeApp()
        {
            if (FirebaseApp.DefaultInstance == null)
            {
                Environment.SetEnvironmentVariable("GOOGLE_APPLICATION_CREDENTIALS", @"C:\Users\tnmun\Documents\Photox\Photox\config\serviceaccount.json");
                FirebaseApp.Create(new AppOptions()
                {
                    Credential = GoogleCredential.GetApplicationDefault()
                });
            }
        }
    }
}