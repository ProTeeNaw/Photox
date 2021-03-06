
   
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Async="true" Inherits="Photox.app.dashboard"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photox | Dashboard</title>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="generator" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1"/>

    <%-- FRONT-DASH CSS INJECTION --%>

    <link rel="stylesheet" href="assets/front-dashboard/assets/css/vendor.min.css"/>
    <link rel="stylesheet" href="assets/front-dashboard/assets/vendor/icon-set/style.css"/>
    <link rel="stylesheet" href="assets/front-dashboard/assets/css/theme.min.css"/>

    <%-- FRONT-DASH CSS INJECTION END --%>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="assets/css/wickedcss.min.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<div class="video-bg">
 <video width="320" height="240" autoplay="autoplay" loop="loop" muted="muted">
  <source src="https://assets.codepen.io/3364143/7btrrd.mp4" type="video/mp4"/>
Your browser does not support the video tag.
</video>
</div>
<div class="dark-light">
    <svg viewBox="0 0 24 24" stroke="currentColor" stroke-width="1.5" fill="none" stroke-linecap="round" stroke-linejoin="round">
     <path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z" /></svg>
   </div>
<div class="app">
 <div class="header">
  <div class="menu-circle"></div>
  <div class="header-menu">
   <a class="menu-link is-active" href="#">Albums</a>
   <a class="menu-link notify" href="#" id="uploadButton">Create</a>
   <a class="menu-link" href="#">Discover</a>
   <a class="menu-link notify" href="#">Share</a>
  </div>
  <div class="search-bar">
   <input type="text" placeholder="Search"/>
  </div>
  <div class="header-profile">
   <div class="notification">
    <span class="notification-number">3</span>
    <svg viewBox="0 0 24 24" fill="currentColor" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell">
     <path d="M18 8A6 6 0 006 8c0 7-3 9-3 9h18s-3-2-3-9M13.73 21a2 2 0 01-3.46 0" />
    </svg>
   </div>
   <svg viewBox="0 0 512 512" fill="currentColor">
    <path d="M448.773 235.551A135.893 135.893 0 00451 211c0-74.443-60.557-135-135-135-47.52 0-91.567 25.313-115.766 65.537-32.666-10.59-66.182-6.049-93.794 12.979-27.612 19.013-44.092 49.116-45.425 82.031C24.716 253.788 0 290.497 0 331c0 7.031 1.703 13.887 3.006 20.537l.015.015C12.719 400.492 56.034 436 106 436h300c57.891 0 106-47.109 106-105 0-40.942-25.053-77.798-63.227-95.449z" />
   </svg>
      <div >
        <asp:Button runat="server" class="profile-img" style="cursor:pointer">
      </asp:Button>
      </div>
  </div>
 </div>
 <div class="wrapper">
  <div class="left-side">
   <div class="side-wrapper">
    <div class="side-title">Photography</div>
    <div class="side-menu">
     <a href="#">
      <svg viewBox="0 0 488.455 488.455" fill="currentColor">
       <path d="M287.396 216.317c23.845 23.845 23.845 62.505 0 86.35s-62.505 23.845-86.35 0-23.845-62.505 0-86.35 62.505-23.845 86.35 0" />
       <path d="M427.397 91.581H385.21l-30.544-61.059H133.76l-30.515 61.089-42.127.075C27.533 91.746.193 119.115.164 152.715L0 396.86c0 33.675 27.384 61.074 61.059 61.074h366.338c33.675 0 61.059-27.384 61.059-61.059V152.639c-.001-33.674-27.385-61.058-61.059-61.058zM244.22 381.61c-67.335 0-122.118-54.783-122.118-122.118s54.783-122.118 122.118-122.118 122.118 54.783 122.118 122.118S311.555 381.61 244.22 381.61z" />
      </svg>
      All Photos
     </a>
     <a href="#">
      <svg viewBox="0 0 512 512">
       <g xmlns="http://www.w3.org/2000/svg" fill="currentColor">
        <path d="M0 0h128v128H0zm0 0M192 0h128v128H192zm0 0M384 0h128v128H384zm0 0M0 192h128v128H0zm0 0" data-original="#bfc9d1"></path>
       </g>
       <path xmlns="http://www.w3.org/2000/svg" d="M192 192h128v128H192zm0 0" fill="currentColor" data-original="#82b1ff"></path>
       <path xmlns="http://www.w3.org/2000/svg" d="M384 192h128v128H384zm0 0M0 384h128v128H0zm0 0M192 384h128v128H192zm0 0M384 384h128v128H384zm0 0" fill="currentColor" data-original="#bfc9d1"></path>
      </svg>
      Albums
      <span class="notification-number updates">3</span>
     </a>
    </div>
   </div>
   <div class="side-wrapper">
    <div class="side-title">Account</div>
    <div class="side-menu">
     <a href="#">
       
<%--<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 100 125" fill="#FFFFFF" xml:space="preserve"><g><circle cx="50" cy="21.7" r="21.7"/><path d="M96.6,89.3C91.7,68,72.7,52.2,50,52.2S8.3,68,3.4,89.3C2.1,94.7,6.2,100,11.9,100h76.3C93.8,100,97.9,94.7,96.6,89.3z"/></g></svg>

      Profile
     </a>
     <a href="#">--%>
      
<svg xmlns:x="http://ns.adobe.com/Extensibility/1.0/" xmlns:i="http://ns.adobe.com/AdobeIllustrator/10.0/" xmlns:graph="http://ns.adobe.com/Graphs/1.0/" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 100 125" fill="#FFFFFF" xml:space="preserve"><switch><foreignObject requiredExtensions="http://ns.adobe.com/AdobeIllustrator/10.0/" x="0" y="0" width="1" height="1"/><g i:extraneous="self"><g><path d="M5273.1,2400.1v-2c0-2.8-5-4-9.7-4s-9.7,1.3-9.7,4v2c0,1.8,0.7,3.6,2,4.9l5,4.9c0.3,0.3,0.4,0.6,0.4,1v6.4 c0,0.4,0.2,0.7,0.6,0.8l2.9,0.9c0.5,0.1,1-0.2,1-0.8v-7.2c0-0.4,0.2-0.7,0.4-1l5.1-5C5272.4,2403.7,5273.1,2401.9,5273.1,2400.1z M5263.4,2400c-4.8,0-7.4-1.3-7.5-1.8v0c0.1-0.5,2.7-1.8,7.5-1.8c4.8,0,7.3,1.3,7.5,1.8C5270.7,2398.7,5268.2,2400,5263.4,2400z"/><path d="M5268.4,2410.3c-0.6,0-1,0.4-1,1c0,0.6,0.4,1,1,1h4.3c0.6,0,1-0.4,1-1c0-0.6-0.4-1-1-1H5268.4z"/><path d="M5272.7,2413.7h-4.3c-0.6,0-1,0.4-1,1c0,0.6,0.4,1,1,1h4.3c0.6,0,1-0.4,1-1C5273.7,2414.1,5273.3,2413.7,5272.7,2413.7z"/><path d="M5272.7,2417h-4.3c-0.6,0-1,0.4-1,1c0,0.6,0.4,1,1,1h4.3c0.6,0,1-0.4,1-1C5273.7,2417.5,5273.3,2417,5272.7,2417z"/></g><path d="M75.8,37.6v-9.3C75.8,14.1,64.2,2.5,50,2.5S24.2,14.1,24.2,28.3v9.3c-7,0.6-12.4,6.4-12.4,13.6v32.6 c0,7.6,6.1,13.7,13.7,13.7h49.1c7.6,0,13.7-6.1,13.7-13.7V51.2C88.3,44,82.8,38.2,75.8,37.6z M56,79.4c0.2,1-0.5,1.9-1.5,1.9h-9.1 c-1,0-1.7-0.9-1.5-1.9l3-11.8c-2.5-1.1-4.3-3.6-4.3-6.6c0-4,3.3-7.3,7.3-7.3c4,0,7.3,3.3,7.3,7.3c0,2.9-1.8,5.4-4.3,6.6L56,79.4z M62.7,37.5H37.3v-9.1c0-7,5.7-12.7,12.7-12.7s12.7,5.7,12.7,12.7V37.5z"/></g></switch></svg>
      Passwords
     </a>
     <a href="#">
      
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 80" x="0px" y="0px" fill="#FFFFFF"><title>send arrow</title><g data-name="Layer 21"><path d="M61.45942,2.96494,30.037,61.33166a.31473.31473,0,0,1-.59019-.10872l-2.8421-22.73949,15.0888-15.08831A.76947.76947,0,1,0,40.60536,22.307L25.51649,37.39532,2.77606,34.55315a.3149.3149,0,0,1-.10521-.5917L61.03156,2.54259a.315.315,0,0,1,.42786.42235Z"/></g></svg>
      Sharing
     </a>
    </div>
   </div>
   <div class="side-wrapper">
    <div class="side-title">Resource Links</div>
    <div class="side-menu">
     <a href="#">
    
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 100 125" fill="#FFFFFF" xml:space="preserve"><path d="M65.765,4.809H34.235C18.01,4.809,4.809,18.01,4.809,34.235v31.529c0,16.226,13.201,29.427,29.427,29.427h31.529 c16.226,0,29.427-13.201,29.427-29.427V34.235C95.191,18.01,81.99,4.809,65.765,4.809z M54.705,75.555H44.512v-9.513h10.193V75.555z M61.326,49.754c-3.008,2.239-6.223,4.058-6.852,8.181v2.66h-9.439v-3.146c0.418-6.086,3.285-8.811,6.082-10.979 c2.727-2.166,5.104-3.773,5.104-7.551c0-4.266-2.236-6.293-5.941-6.293c-5.033,0-7.131,4.125-7.203,9.09H32.799 c0.211-9.998,6.783-17.27,16.99-17.27c13.215,0,17.412,8.111,17.412,13.492C67.201,44.722,64.334,47.449,61.326,49.754z"/></svg>
      About App
     </a>
     <a href="#">
      <svg viewBox="0 0 511.441 511.441" fill="currentColor">
       <path d="M255.721 347.484L90.22 266.751v106.57l165.51 73.503 165.509-73.503V266.742z" />
       <path d="M511.441 189.361L255.721 64.617 0 189.361l255.721 124.744 195.522-95.378v111.032h30V204.092z" />
      </svg>
      Tutorials
     </a>
     <a href="https://github.com/ProTeeNaw/Photox">
      
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 100 88.75" version="1.1" x="0px" y="0px" fill="#FFFFFF"><title>Combined Shape</title><desc>Created with Sketch.</desc><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><path d="M21.077908,33.0345128 C20.253739,29.4115435 17.0128047,26.7074621 13.1402983,26.7074621 C8.64453569,26.7074621 5,30.3519978 5,34.8477604 C5,39.3435231 8.64453569,42.9880587 13.1402983,42.9880587 C16.6846353,42.9880587 19.6999077,40.7228644 20.8173981,37.5611932 L29.9120143,37.5611932 C35.7020901,37.5611932 39.0728214,38.5150087 40.833473,40.1984024 C42.0878384,41.3977259 42.556358,42.727801 43.1848324,46.24309 C43.2387195,46.5445002 43.2549292,46.6349077 43.281767,46.7830176 C44.0758207,51.1651602 45.0349164,53.5388985 47.6331974,55.7268756 C50.6813622,58.2936937 55.4941948,59.6006587 62.7502094,59.7129686 C63.7274833,63.1126939 66.8605837,65.5999985 70.5746252,65.5999985 C75.0703878,65.5999985 78.7149235,61.9554628 78.7149235,57.4597002 C78.7149235,52.9639376 75.0703878,49.3194019 70.5746252,49.3194019 C66.8664949,49.3194019 63.7374579,51.7987953 62.7548925,55.1902039 C56.4970882,55.0880129 52.6581846,54.0460995 50.5461909,52.2676183 C48.976097,50.9454634 48.3522805,49.4015331 47.7316901,45.9766818 C47.7057298,45.8334152 47.6898335,45.7447554 47.6366326,45.4471831 C46.9239216,41.4607279 46.2831638,39.4435233 44.5757973,37.5611932 L79.178122,37.5611932 C80.2956124,40.7228644 83.3108849,42.9880587 86.8552218,42.9880587 C91.3509844,42.9880587 94.9955201,39.3435231 94.9955201,34.8477604 C94.9955201,30.3519978 91.3509844,26.7074621 86.8552218,26.7074621 C82.9811862,26.7074621 79.7392215,29.4136795 78.9166369,33.0388053 L35.0787826,33.0388053 C36.7861491,31.1564752 37.4269069,29.1392706 38.1396179,25.1528153 C38.1928188,24.8552431 38.2087151,24.7665833 38.2346754,24.6233166 C38.8552659,21.1984653 39.4790823,19.654535 41.0491763,18.3323802 C42.896886,16.7764489 46.0663538,15.7842785 51.0209453,15.491904 C52.0299025,18.8411477 55.1382776,21.2805966 58.8164166,21.2805966 C63.3121792,21.2805966 66.9567149,17.6360609 66.9567149,13.1402983 C66.9567149,8.64453569 63.3121792,5 58.8164166,5 C55.0735839,5 51.9207341,7.52601711 50.9696632,10.9662554 C44.970313,11.2988 40.8525475,12.5857089 38.1361827,14.8731229 C35.5379018,17.0611 34.578806,19.4348382 33.7847523,23.8169809 C33.7579145,23.9650908 33.7417048,24.0554983 33.6878177,24.3569085 C33.0593433,27.8721975 32.5908237,29.2022726 31.3364583,30.4015961 C29.6441029,32.0196904 26.4641563,32.9637099 21.077908,33.0345128 L21.077908,33.0345128 Z" fill="#FFFFFF"/></g></svg>
      Source Code
     </a>
    </div>
   </div>
  </div>
  <div class="main-container">
   <div class="main-header">
    <a class="menu-link-main">Filter By:</a>
    <div class="header-menu">
     <a class="main-header-link is-active" href="#">Favourites</a>
     <a class="main-header-link" href="#">Date</a>
     <a class="main-header-link" href="#">Location</a>

    </div>
   </div>
   <div class="content-wrapper">
    <div class="content-section">
     <div class="content-section-title">
         <asp:Label runat="server" Text="My Albums"></asp:Label>
     </div>
            <asp:Panel runat="server" ID="AlbumListPanel">
            <div class="apps-card">
      <div class="app-card">
       <asp:Image runat="server" ID="Image1" ImageUrl="https://asia.olympus-imaging.com/content/000090033.jpg" />
       <div class="app-card-buttons">
        <a class="content-button status-button" onclick="upload_pop_up_open()">Add</a>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#" onclick="show_edit()">Edit</a></li>
           <li><a href="#" onclick="share()">Share</a></li>
          </ul>
         </button>
        </div>
       </div>
      </div>
      <div class="app-card">
       <asp:Image runat="server" ID="Image2" ImageUrl="data:image/jpeg;base64,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" />
       <div class="app-card-buttons">
        <a class="content-button status-button" onclick="upload_pop_up_open()">Add</a>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#">Edit</a></li>
           <li><a href="#">Share</a></li>
          </ul>
         </button>
        </div>
       </div>
      </div>
      <div class="app-card">
       <asp:Image runat="server" ID="Image3" ImageUrl="https://asia.olympus-imaging.com/content/000090033.jpg" />
       <div class="app-card-buttons">
        <button class="content-button status-button" onclick="upload_pop_up_open()">Add</button>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#">Edit</a></li>
           <li><a href="#">Share</a></li>
              <li><a href="#">Delete</a></li>
          </ul>
         </button>
        </div>
       </div>
      </div>

                
     </div>
        </asp:Panel>

        <%-- CREATE ALBUM POP UP UI BEGIN --%>

        <div class="button-wrapper" style="display: none; visibility: hidden">
        <div class="pop-up">
         <div class="pop-up__title">Upload Photo
          <svg class="close" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle">
           <circle cx="12" cy="12" r="10" />
           <path d="M15 9l-6 6M9 9l6 6" />
          </svg>
         </div>
         <div class="pop-up__subtitle">Choose a photo from your device and we will upload it to your online storage.</div>
         
            <%-- UPLOAD BEGIN--%>

            <div class="card-body">
                <div class="dz-message custom-file-boxed-label">
                    <img class="avatar avatar-xl avatar-4by3 mb-3" src="assets/front-dashboard/assets/svg/illustrations/browse.svg" alt="Image Description"/>
                    <div class="search-bar">
                        <asp:TextBox runat="server" placeholder="New album name" ID="AlbumName"></asp:TextBox>
                    </div>
                    <asp:FileUpload runat="server" ID="ChooseImage" class="btn btn-sm btn-primary"/>
<%--                    <input type="file" runat="server" id="fileupload" onchange="getPath()" class="btn btn-sm btn-primary"/>--%>
                  </div>
              </div>

            <%-- UPLOAD END --%>

            <%-- Reserve button below in case postback needs to be triggered for upload --%>
         <div class="content-button-wrapper">
          <asp:Button runat="server" class="content-button status-button" Text="Continue" OnClick="UploadFile"></asp:Button>
         </div>
        </div>
       </div>

          <%-- CREATE ALBUM POP UP UI END --%>

        <%-- UPLOAD PHOTO POP UP UI BEGIN --%>

        <%-- //////// --%>
        <div id="note" style="display: none; visibility: hidden">
        <div id="cookiesdirective" style="bottom: 0px;">
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; background-color: rgb(0, 0, 0); opacity: 0.8; z-index: 9999;">

            </div>
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; display: flex; align-items: center; z-index: 10000">
                <div class="cookie-wrapper" style="position: relative; width: 100%; max-width: 350px; margin-right: auto; margin-left: auto; padding: 1rem; text-align: center; border-radius: .3rem; box-shadow: 0 10px 40px 0 rgba(0,0,0,0.2); color:#424a4d; background:rgba(234, 239, 241, 0.99);">
                    
                    <div class="button-wrapper" style="max-width:auto">
        <div class="">
         <div class="pop-up__title">Upload Photo
             <div onclick="upload_pop_up_close()">
                <svg class="close" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle">
                           <circle cx="12" cy="12" r="10" />
                           <path d="M15 9l-6 6M9 9l6 6" />
                          </svg>
             </div>
          
         </div>
         <div class="pop-up__subtitle">Choose a photo from your device and we will upload it to your online storage.</div>
         
            <%-- UPLOAD BEGIN--%>

            <div class="card-body">
                <div class="dz-message custom-file-boxed-label">
                    <img class="avatar avatar-xl avatar-4by3 mb-3" src="assets/front-dashboard/assets/svg/illustrations/browse.svg" alt="Image Description">
                    
                    <asp:FileUpload runat="server" ID="FileUpload1" class="btn btn-sm btn-primary"/>
<%--                    <input type="file" runat="server" id="fileupload" onchange="getPath()" class="btn btn-sm btn-primary"/>--%>
                  </div>
              </div>
            <asp:Label runat="server" ID="TempID" Text="TempText" style="visibility: hidden; display: none"></asp:Label>
            <%-- UPLOAD END --%>

            <%-- Reserve button below in case postback needs to be triggered for upload --%>
         <div class="content-button-wrapper">
          <asp:Button runat="server" class="content-button status-button" Text="Continue" OnClick="UploadFile"></asp:Button>
         </div>
        </div>
       </div>
                </div>
            </div>
        </div>
    </div>
        <%-- ///////// --%>

          <%-- UPLOAD PHOTO POP UP UI END --%>

        <%-- Meta data edit begin --%>

        <div id="meta" style="display: none; visibility: hidden">
        <div id="cookiesdirective" style="bottom: 0px;">
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; background-color: rgb(0, 0, 0); opacity: 0.8; z-index: 9999;">

            </div>
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; display: flex; align-items: center; z-index: 10000">
                <div class="cookie-wrapper" style="position: relative; width: 100%; max-width: 350px; margin-right: auto; margin-left: auto; padding: 1rem; text-align: center; border-radius: .3rem; box-shadow: 0 10px 40px 0 rgba(0,0,0,0.2); color:#424a4d; background:rgba(234, 239, 241, 0.99);">
                    
                    <div class="button-wrapper" style="max-width:auto">
        <div class="">
         <div class="pop-up__title">Meta data
             <div onclick="upload_pop_up_close()">
                <svg class="close" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle">
                           <circle cx="12" cy="12" r="10" />
                           <path d="M15 9l-6 6M9 9l6 6" />
                          </svg>
             </div>
          
         </div>
         <div class="pop-up__subtitle">Edit file metadata.</div>
         
            <%-- UPLOAD BEGIN--%>

            <div class="card-body">
                <div class="dz-message custom-file-boxed-label">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                  </div>
              </div>
            <%-- UPLOAD END --%>

            <%-- Reserve button below in case postback needs to be triggered for upload --%>
         <div class="content-button-wrapper">
          <asp:Button runat="server" class="content-button status-button" Text="Update" OnClick="Update"></asp:Button>
         </div>
        </div>
       </div>
                </div>
            </div>
        </div>
    </div>

        <%-- Meta data edit end --%>
    </div>
    <div class="content-section">
        <%-- Put panel here and view images --%>
    </div>
   </div>
  </div>
 </div>
</div>
        </div>
        
<!-- partial -->
  
        
    </form>

    

    <%-- JS INJECTION --%>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="assets/js/script.js"></script>
  <script language="javascript" type="text/javascript">

      function show_edit() {
          var edit = document.getElementById("meta");
          edit.style.display = "block";
          edit.style.visibility = "visible";
      }

      function open_viewer() {
          
          window.open("/app/viewer.aspx", '_blank');
      }
  </script>

</body>
</html>