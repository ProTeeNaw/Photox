<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Photox.app.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photox | Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="video-bg">
 <video width="320" height="240" autoplay loop muted>
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
   <a class="menu-link notify" href="#">Uploads</a>
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
   <img class="profile-img" src="https://images.unsplash.com/photo-1600353068440-6361ef3a86e8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80" alt="">
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
       
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" x="0px" y="0px" viewBox="0 0 100 125" fill="#FFFFFF" xml:space="preserve"><g><circle cx="50" cy="21.7" r="21.7"/><path d="M96.6,89.3C91.7,68,72.7,52.2,50,52.2S8.3,68,3.4,89.3C2.1,94.7,6.2,100,11.9,100h76.3C93.8,100,97.9,94.7,96.6,89.3z"/></g></svg>

      Profile
     </a>
     <a href="#">
      
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
    <div class="content-wrapper-header">
     <div class="content-wrapper-context">
      <h3 class="img-content">
       <svg viewBox="0 0 512 512">
        <path d="M467 0H45C20.099 0 0 20.099 0 45v422c0 24.901 20.099 45 45 45h422c24.901 0 45-20.099 45-45V45c0-24.901-20.099-45-45-45z" fill="#d6355b" data-original="#ff468c" />
        <path xmlns="http://www.w3.org/2000/svg" d="M512 45v422c0 24.901-20.099 45-45 45H256V0h211c24.901 0 45 20.099 45 45z" fill="#d6355b" data-original="#d72878" />
        <path xmlns="http://www.w3.org/2000/svg" d="M467 30H45c-8.401 0-15 6.599-15 15v422c0 8.401 6.599 15 15 15h422c8.401 0 15-6.599 15-15V45c0-8.401-6.599-15-15-15z" fill="#2e000a" data-original="#700029" />
        <path xmlns="http://www.w3.org/2000/svg" d="M482 45v422c0 8.401-6.599 15-15 15H256V30h211c8.401 0 15 6.599 15 15z" fill="#2e000a" data-original="#4d0e06" />
        <path xmlns="http://www.w3.org/2000/svg" d="M181 391c-41.353 0-75-33.647-75-75 0-8.291 6.709-15 15-15s15 6.709 15 15c0 24.814 20.186 45 45 45s45-20.186 45-45-20.186-45-45-45c-41.353 0-75-33.647-75-75s33.647-75 75-75 75 33.647 75 75c0 8.291-6.709 15-15 15s-15-6.709-15-15c0-24.814-20.186-45-45-45s-45 20.186-45 45 20.186 45 45 45c41.353 0 75 33.647 75 75s-33.647 75-75 75z" fill="#d6355b" data-original="#ff468c" />
        <path xmlns="http://www.w3.org/2000/svg" d="M391 361h-30c-8.276 0-15-6.724-15-15V211h45c8.291 0 15-6.709 15-15s-6.709-15-15-15h-45v-45c0-8.291-6.709-15-15-15s-15 6.709-15 15v45h-15c-8.291 0-15 6.709-15 15s6.709 15 15 15h15v135c0 24.814 20.186 45 45 45h30c8.291 0 15-6.709 15-15s-6.709-15-15-15z" fill="#d6355b" data-original="#d72878" />
       </svg>
       Adobe Stock
      </h3>
      <div class="content-text">Grab yourself 10 free images from Adobe Stock in a 30-day free trial plan and find perfect image, that will help you with your new project.</div>
      <button class="content-button">Start free trial</button>
     </div>
     <img class="content-wrapper-img" src="https://assets.codepen.io/3364143/glass.png" alt="">
    </div>
    <div class="content-section">
     <div class="content-section-title">Installed</div>
     <ul>
      <li class="adobe-product">
       <div class="products">
        <svg viewBox="0 0 52 52" style="border:1px solid #3291b8">
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M40.824 52H11.176C5.003 52 0 46.997 0 40.824V11.176C0 5.003 5.003 0 11.176 0h29.649C46.997 0 52 5.003 52 11.176v29.649C52 46.997 46.997 52 40.824 52z" fill="#061e26" data-original="#393687" />
          <path d="M12.16 39H9.28V11h9.64c2.613 0 4.553.813 5.82 2.44 1.266 1.626 1.9 3.76 1.9 6.399 0 .934-.027 1.74-.08 2.42-.054.681-.22 1.534-.5 2.561-.28 1.026-.66 1.866-1.14 2.52-.48.654-1.213 1.227-2.2 1.72-.987.494-2.16.74-3.52.74h-7.04V39zm0-12h6.68c.96 0 1.773-.187 2.44-.56.666-.374 1.153-.773 1.46-1.2.306-.427.546-1.04.72-1.84.173-.801.267-1.4.28-1.801.013-.399.02-.973.02-1.72 0-4.053-1.694-6.08-5.08-6.08h-6.52V27zM29.48 33.92l2.8-.12c.106.987.6 1.754 1.48 2.3.88.547 1.893.82 3.04.82s2.14-.26 2.98-.78c.84-.52 1.26-1.266 1.26-2.239s-.36-1.747-1.08-2.32c-.72-.573-1.6-1.026-2.64-1.36-1.04-.333-2.086-.686-3.14-1.06a7.36 7.36 0 01-2.78-1.76c-.987-.934-1.48-2.073-1.48-3.42s.54-2.601 1.62-3.761 2.833-1.739 5.26-1.739c.854 0 1.653.1 2.4.3.746.2 1.28.394 1.6.58l.48.279-.92 2.521c-.854-.666-1.974-1-3.36-1-1.387 0-2.42.26-3.1.78-.68.52-1.02 1.18-1.02 1.979 0 .88.426 1.574 1.28 2.08.853.507 1.813.934 2.88 1.28 1.066.347 2.126.733 3.18 1.16 1.053.427 1.946 1.094 2.68 2s1.1 2.106 1.1 3.6c0 1.494-.6 2.794-1.8 3.9-1.2 1.106-2.954 1.66-5.26 1.66-2.307 0-4.114-.547-5.42-1.64-1.307-1.093-1.987-2.44-2.04-4.04z" fill="#c1dbe6" data-original="#89d3ff" />
         </g>
        </svg>
        Photoshop
       </div>
       <span class="status">
        <span class="status-circle green"></span>
        Updated</span>
       <div class="button-wrapper">
        <button class="content-button status-button open">Open</button>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#">Go to Discover</a></li>
           <li><a href="#">Learn more</a></li>
           <li><a href="#">Uninstall</a></li>
          </ul>
         </button>
        </div>
       </div>
      </li>
      <li class="adobe-product">
       <div class="products">
        <svg viewBox="0 0 52 52" style="border:1px solid #b65a0b">
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M40.824 52H11.176C5.003 52 0 46.997 0 40.824V11.176C0 5.003 5.003 0 11.176 0h29.649C46.997 0 52 5.003 52 11.176v29.649C52 46.997 46.997 52 40.824 52z" fill="#261400" data-original="#6d4c13" />
          <path d="M30.68 39h-3.24l-2.76-9.04h-8.32L13.72 39H10.6l8.24-28h3.32l8.52 28zm-6.72-12l-3.48-11.36L17.12 27h6.84zM37.479 12.24c0 .453-.16.84-.48 1.16-.32.319-.7.479-1.14.479-.44 0-.827-.166-1.16-.5-.334-.333-.5-.713-.5-1.14s.166-.807.5-1.141c.333-.333.72-.5 1.16-.5.44 0 .82.16 1.14.48.321.322.48.709.48 1.162zM37.24 39h-2.88V18.96h2.88V39z" fill="#e6d2c0" data-original="#ffbd2e" />
         </g>
        </svg>
        Illustrator
       </div>

       <span class="status">
        <span class="status-circle"></span>
        Update Available</span>
       <div class="button-wrapper">
        <button class="content-button status-button">Update this app</button>
        <div class="pop-up">
         <div class="pop-up__title">Update This App
          <svg class="close" width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x-circle">
           <circle cx="12" cy="12" r="10" />
           <path d="M15 9l-6 6M9 9l6 6" />
          </svg>
         </div>
         <div class="pop-up__subtitle">Adjust your selections for advanced options as desired before continuing. <a href="#">Learn more</a></div>
         <div class="checkbox-wrapper">
          <input type="checkbox" id="check1" class="checkbox">
          <label for="check1">Import previous settings and preferences</label>
         </div>
         <div class="checkbox-wrapper">
          <input type="checkbox" id="check2" class="checkbox">
          <label for="check2">Remove old versions</label>
         </div>
         <div class="content-button-wrapper">
          <button class="content-button status-button open close">Cancel</button>
          <button class="content-button status-button">Continue</button>
         </div>
        </div>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#">Go to Discover</a></li>
           <li><a href="#">Learn more</a></li>
           <li><a href="#">Uninstall</a></li>
          </ul>
         </button>
        </div>
       </div>
      </li>
      <li class="adobe-product">
       <div class="products">
        <svg viewBox="0 0 52 52" style="border: 1px solid #C75DEB">
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M40.824 52H11.176C5.003 52 0 46.997 0 40.824V11.176C0 5.003 5.003 0 11.176 0h29.649C46.997 0 52 5.003 52 11.176v29.649C52 46.997 46.997 52 40.824 52z" fill="#3a3375" data-original="#3a3375" />
          <path d="M27.44 39H24.2l-2.76-9.04h-8.32L10.48 39H7.36l8.24-28h3.32l8.52 28zm-6.72-12l-3.48-11.36L13.88 27h6.84zM31.48 33.48c0 2.267 1.333 3.399 4 3.399 1.653 0 3.466-.546 5.44-1.64L42 37.6c-2.054 1.254-4.2 1.881-6.44 1.881-4.64 0-6.96-1.946-6.96-5.841v-8.2c0-2.16.673-3.841 2.02-5.04 1.346-1.2 3.126-1.801 5.34-1.801s3.94.594 5.18 1.78c1.24 1.187 1.86 2.834 1.86 4.94V30.8l-11.52.6v2.08zm8.6-5.24v-3.08c0-1.413-.44-2.42-1.32-3.021-.88-.6-1.907-.899-3.08-.899-1.174 0-2.167.359-2.98 1.08-.814.72-1.22 1.773-1.22 3.16v3.199l8.6-.439z" fill="#e4d1eb" data-original="#e7adfb" />
         </g>
        </svg>
        After Effects
       </div>
       <span class="status">
        <span class="status-circle green"></span>
        Updated</span>
       <div class="button-wrapper">
        <button class="content-button status-button open">Open</button>
        <div class="menu">
         <button class="dropdown">
          <ul>
           <li><a href="#">Go to Discover</a></li>
           <li><a href="#">Learn more</a></li>
           <li><a href="#">Uninstall</a></li>
          </ul>
         </button>
        </div>
       </div>
      </li>
     </ul>
    </div>
    <div class="content-section">
     <div class="content-section-title">Apps in your plan</div>
     <div class="apps-card">
      <div class="app-card">
       <span>
        <svg viewBox="0 0 512 512" style="border: 1px solid #a059a9">
         <path xmlns="http://www.w3.org/2000/svg" d="M480 0H32C14.368 0 0 14.368 0 32v448c0 17.664 14.368 32 32 32h448c17.664 0 32-14.336 32-32V32c0-17.632-14.336-32-32-32z" fill="#210027" data-original="#7b1fa2" />
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M192 64h-80c-8.832 0-16 7.168-16 16v352c0 8.832 7.168 16 16 16s16-7.168 16-16V256h64c52.928 0 96-43.072 96-96s-43.072-96-96-96zm0 160h-64V96h64c35.296 0 64 28.704 64 64s-28.704 64-64 64zM400 256h-32c-18.08 0-34.592 6.24-48 16.384V272c0-8.864-7.168-16-16-16s-16 7.136-16 16v160c0 8.832 7.168 16 16 16s16-7.168 16-16v-96c0-26.464 21.536-48 48-48h32c8.832 0 16-7.168 16-16s-7.168-16-16-16z" fill="#f6e7fa" data-original="#e1bee7" />
         </g>
        </svg>
        Premiere Pro
       </span>
       <div class="app-card__subtext">Edit, master and create fully proffesional videos</div>
       <div class="app-card-buttons">
        <button class="content-button status-button">Update</button>
        <div class="menu"></div>
       </div>
      </div>
      <div class="app-card">
       <span>
        <svg viewBox="0 0 52 52" style="border: 1px solid #c1316d">
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M40.824 52H11.176C5.003 52 0 46.997 0 40.824V11.176C0 5.003 5.003 0 11.176 0h29.649C46.997 0 52 5.003 52 11.176v29.649C52 46.997 46.997 52 40.824 52z" fill="#2f0015" data-original="#6f2b41" />
          <path d="M18.08 39H15.2V13.72l-2.64-.08V11h5.52v28zM27.68 19.4c1.173-.507 2.593-.761 4.26-.761s3.073.374 4.22 1.12V11h2.88v28c-2.293.32-4.414.48-6.36.48-1.947 0-3.707-.4-5.28-1.2-2.08-1.066-3.12-2.92-3.12-5.561v-7.56c0-2.799 1.133-4.719 3.4-5.759zm8.48 3.12c-1.387-.746-2.907-1.119-4.56-1.119-1.574 0-2.714.406-3.42 1.22-.707.813-1.06 1.847-1.06 3.1v7.12c0 1.227.44 2.188 1.32 2.88.96.719 2.146 1.079 3.56 1.079 1.413 0 2.8-.106 4.16-.319V22.52z" fill="#e1c1cf" data-original="#ff70bd" />
         </g>
        </svg>
        InDesign
       </span>
       <div class="app-card__subtext">Design and publish great projects & mockups</div>
       <div class="app-card-buttons">
        <button class="content-button status-button">Update</button>
        <div class="menu"></div>
       </div>
      </div>
      <div class="app-card">
       <span>
        <svg viewBox="0 0 52 52" style="border: 1px solid #C75DEB">
         <g xmlns="http://www.w3.org/2000/svg">
          <path d="M40.824 52H11.176C5.003 52 0 46.997 0 40.824V11.176C0 5.003 5.003 0 11.176 0h29.649C46.997 0 52 5.003 52 11.176v29.649C52 46.997 46.997 52 40.824 52z" fill="#3a3375" data-original="#3a3375" />
          <path d="M27.44 39H24.2l-2.76-9.04h-8.32L10.48 39H7.36l8.24-28h3.32l8.52 28zm-6.72-12l-3.48-11.36L13.88 27h6.84zM31.48 33.48c0 2.267 1.333 3.399 4 3.399 1.653 0 3.466-.546 5.44-1.64L42 37.6c-2.054 1.254-4.2 1.881-6.44 1.881-4.64 0-6.96-1.946-6.96-5.841v-8.2c0-2.16.673-3.841 2.02-5.04 1.346-1.2 3.126-1.801 5.34-1.801s3.94.594 5.18 1.78c1.24 1.187 1.86 2.834 1.86 4.94V30.8l-11.52.6v2.08zm8.6-5.24v-3.08c0-1.413-.44-2.42-1.32-3.021-.88-.6-1.907-.899-3.08-.899-1.174 0-2.167.359-2.98 1.08-.814.72-1.22 1.773-1.22 3.16v3.199l8.6-.439z" fill="#e4d1eb" data-original="#e7adfb" />
         </g>
        </svg>
        After Effects
       </span>
       <div class="app-card__subtext">Industry Standart motion graphics & visual effects</div>
       <div class="app-card-buttons">
        <button class="content-button status-button">Update</button>
        <div class="menu"></div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </div>
 <div class="overlay-app"></div>
</div>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script  src="assets/js/script.js"></script>

    </form>
</body>
</html>
