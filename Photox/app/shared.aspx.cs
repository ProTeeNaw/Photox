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
    public partial class shared : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Auth auth = new Auth();

            auth.InitializeApp();

            OpenAlbum();
        }

        private async void OpenAlbum()
        {
            //Get user details by UID
            //try
            //{
            //    var decodedToken = await FirebaseAuth.DefaultInstance.VerifySessionCookieAsync(Request.Cookies["session"].Value, true);

            //    UserRecord userRecord = await FirebaseAuth.DefaultInstance.GetUserAsync(decodedToken.Uid);

            //    FirestoreDb db = FirestoreDb.Create("photox-4e1e1");

            //    CollectionReference usersRef = db.Collection(userRecord.Uid).Document("Shared").Collection("");

            //    QuerySnapshot allCitiesQuerySnapshot = await usersRef.GetSnapshotAsync();

            //    List<object> imageURLs = new List<object>();

            //    foreach (DocumentSnapshot documentSnapshot in allCitiesQuerySnapshot.Documents)
            //    {
            //        Dictionary<string, object> city = documentSnapshot.ToDictionary();

            //        foreach (KeyValuePair<string, object> pair in city)
            //        {
            //            imageURLs = city.Values.ToList();
            //        }
            //    }

            //    try
            //    {
            //        //Set image tag sources from download URLs
            //        Image1.ImageUrl = imageURLs[0].ToString();
            //        Image2.ImageUrl = imageURLs[1].ToString();
            //        Image3.ImageUrl = imageURLs[2].ToString();
            //        Image4.ImageUrl = imageURLs[3].ToString();

            //        //Set sources for slides
            //        src1.HRef = imageURLs[0].ToString();
            //        src2.HRef = imageURLs[1].ToString();
            //        src3.HRef = imageURLs[2].ToString();
            //        src4.HRef = imageURLs[3].ToString();

            //    }
            //    catch (Exception)
            //    {
            //        Response.Write("<script>alert('You don't have any photos yet')</script>");
            //    }
            //}
            //catch (FirebaseAuthException)
            //{
            //    Response.Redirect("../auth/access.html", false);
            //}
        }
    }
}