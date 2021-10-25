<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Photox.app.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Photox | Dashboard</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel='stylesheet' href='https://rawgithub.com/daneden/animate.css/master/animate.css'/>
    <link rel="stylesheet" href="assets/css/style.css"/>
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
			<link rel="stylesheet" href="assets/css/noscript.css" />
		</noscript>
</head>
<body class="is-preload-0 is-preload-1 is-preload-2">
    <form id="form1" runat="server">
        <!-- partial:index.partial.html -->
<div class="menu-bar">
 <div id="menu-icn" class="open"><span></span><span></span><span></span><span></span><span></span><span></span></div>
  </div>

<div class="wDSX5e eejsDc EaDnbd animated fadeInLeft">
 <div class="dyjYy">
  <div class="Jf3Kxd"><img src="//ssl.gstatic.com/social/photosui/images/logo_photos_color_96px.svg" class="dtGoC"><span class="D2RHwc">Photos</span></div>
  <div class="R4TmW">
   <a tabindex="0" class="DOAbib" href="./assistant" data-location="3" jslog="8826; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M19 2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h4l3 3 3-3h4c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm-5.12 10.88L12 17l-1.88-4.12L6 11l4.12-1.88L12 5l1.88 4.12L18 11l-4.12 1.88z"></path>
    </svg>
    <div class="w8iOwc">Assistant</div>
   </a>
   <a tabindex="0" class="DOAbib ixImeb" href="" data-location="1" jslog="8830; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.5 13.5l2.5 3.01L14.5 12l4.5 6H5l3.5-4.5z"></path>
    </svg>
    <div class="w8iOwc">Photos</div>
   </a>
   <a tabindex="0" class="DOAbib" href="" data-location="2" jslog="8827; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M4 6H2v14c0 1.1.9 2 2 2h14v-2H4V6z M20 2H8c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm0 10l-2.5-1.5L15 12V4h5v8z"></path>
    </svg>
    <div class="w8iOwc">Collections</div>
   </a>
  </div>
  <div class="R4TmW">
   <a tabindex="0" class="DOAbib" href="" data-location="5" jslog="8832; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5c-1.66 0-3 1.34-3 3s1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5C6.34 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V19h14v-2.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05 1.16.84 1.97 1.97 1.97 3.45V19h6v-2.5c0-2.33-4.67-3.5-7-3.5z"></path>
    </svg>
    <div class="w8iOwc">Shared links</div>
   </a>
   <a tabindex="0" class="DOAbib" href="" data-location="4" jslog="8833; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M6,19c0,1.1,0.9,2,2,2h8c1.1,0,2-0.9,2-2V7H6V19z M19,4h-3.5l-1-1h-5l-1,1H5v2h14V4z"></path>
    </svg>
    <div class="w8iOwc">Trash</div>
   </a>
   <a tabindex="0" class="DOAbib" href="" data-location="6" jslog="8831; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M19.4,13c0-0.3,0.1-0.6,0.1-1s0-0.7-0.1-1l2.1-1.7c0.2-0.2,0.2-0.4,0.1-0.6l-2-3.5C19.5,5.1,19.3,5,19,5.1l-2.5,1 c-0.5-0.4-1.1-0.7-1.7-1l-0.4-2.6C14.5,2.2,14.2,2,14,2h-4C9.8,2,9.5,2.2,9.5,2.4L9.1,5.1C8.5,5.3,8,5.7,7.4,6.1L5,5.1 C4.7,5,4.5,5.1,4.3,5.3l-2,3.5C2.2,8.9,2.3,9.2,2.5,9.4L4.6,11c0,0.3-0.1,0.6-0.1,1s0,0.7,0.1,1l-2.1,1.7 c-0.2,0.2-0.2,0.4-0.1,0.6l2,3.5C4.5,18.9,4.7,19,5,18.9l2.5-1c0.5,0.4,1.1,0.7,1.7,1l0.4,2.6c0,0.2,0.2,0.4,0.5,0.4h4 c0.2,0,0.5-0.2,0.5-0.4l0.4-2.6c0.6-0.3,1.2-0.6,1.7-1l2.5,1c0.2,0.1,0.5,0,0.6-0.2l2-3.5c0.1-0.2,0.1-0.5-0.1-0.6L19.4,13z M12,15.5c-1.9,0-3.5-1.6-3.5-3.5s1.6-3.5,3.5-3.5s3.5,1.6,3.5,3.5S13.9,15.5,12,15.5z"></path>
    </svg>
    <div class="w8iOwc">Settings</div>
   </a>
   <a tabindex="0" class="DOAbib" href="https://support.google.com/photos" jsaction="click:L1KARc;" jslog="8828; track:click">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M12,2C6.5,2,2,6.5,2,12s4.5,10,10,10c5.5,0,10-4.5,10-10S17.5,2,12,2z M13,19h-2v-2h2V19z M15.1,11.3l-0.9,0.9 C13.4,12.9,13,13.5,13,15h-2v-0.5c0-1.1,0.4-2.1,1.2-2.8l1.2-1.3C13.8,10.1,14,9.6,14,9c0-1.1-0.9-2-2-2c-1.1,0-2,0.9-2,2H8 c0-2.2,1.8-4,4-4c2.2,0,4,1.8,4,4C16,9.9,15.6,10.7,15.1,11.3z"></path>
    </svg>
    <div class="w8iOwc">Help &amp; feedback</div>
   </a>
   <a tabindex="0" class="DOAbib" jsname="epiJ8e">
    <svg width="24px" height="24px" class="JUQOtc" viewBox="0 0 24 24">
     <path d="M4 6h18V4H4c-1.1 0-2 .9-2 2v11H0v3h14v-3H4V6zm19 2h-6c-.55 0-1 .45-1 1v10c0 .55.45 1 1 1h6c.55 0 1-.45 1-1V9c0-.55-.45-1-1-1zm-1 9h-4v-7h4v7z"></path>
    </svg>
    <div class="w8iOwc">App downloads</div>
   </a>
  </div>
 </div>
</div>
        <!-- Main -->
			<div id="main">

				<!-- Header -->
					<header id="header">
						<h1>Lens</h1>
						<p>Just another fine responsive site template by <a href="http://html5up.net">HTML5 UP</a></p>
						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
					</header>

				<!-- Thumbnail -->
					<section id="thumbnails">
						<article>
							<a class="thumbnail" href="images/fulls/01.jpg" data-position="left center"><img src="images/thumbs/01.jpg" alt="" /></a>
							<h2>Diam tempus accumsan</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/02.jpg"><img src="images/thumbs/02.jpg" alt="" /></a>
							<h2>Vivamus convallis libero</h2>
							<p>Sed velit lacus, laoreet at venenatis convallis in lorem tincidunt.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/03.jpg" data-position="top center"><img src="images/thumbs/03.jpg" alt="" /></a>
							<h2>Nec accumsan enim felis</h2>
							<p>Maecenas eleifend tellus ut turpis eleifend, vitae pretium faucibus.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/04.jpg"><img src="images/thumbs/04.jpg" alt="" /></a>
							<h2>Donec maximus nisi eget</h2>
							<p>Tristique in nulla vel congue. Sed sociis natoque parturient nascetur.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/05.jpg" data-position="top center"><img src="images/thumbs/05.jpg" alt="" /></a>
							<h2>Nullam vitae nunc vulputate</h2>
							<p>In pellentesque cursus velit id posuere. Donec vehicula nulla.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/06.jpg"><img src="images/thumbs/06.jpg" alt="" /></a>
							<h2>Phasellus magna faucibus</h2>
							<p>Nulla dignissim libero maximus tellus varius dictum ut posuere magna.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/07.jpg"><img src="images/thumbs/07.jpg" alt="" /></a>
							<h2>Proin quis mauris</h2>
							<p>Etiam ultricies, lorem quis efficitur porttitor, facilisis ante orci urna.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/08.jpg"><img src="images/thumbs/08.jpg" alt="" /></a>
							<h2>Gravida quis varius enim</h2>
							<p>Nunc egestas congue lorem. Nullam dictum placerat ex sapien tortor mattis.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/09.jpg"><img src="images/thumbs/09.jpg" alt="" /></a>
							<h2>Morbi eget vitae adipiscing</h2>
							<p>In quis vulputate dui. Maecenas metus elit, dictum praesent lacinia lacus.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/10.jpg"><img src="images/thumbs/10.jpg" alt="" /></a>
							<h2>Habitant tristique senectus</h2>
							<p>Vestibulum ante ipsum primis in faucibus orci luctus ac tincidunt dolor.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/11.jpg"><img src="images/thumbs/11.jpg" alt="" /></a>
							<h2>Pharetra ex non faucibus</h2>
							<p>Ut sed magna euismod leo laoreet congue. Fusce congue enim ultricies.</p>
						</article>
						<article>
							<a class="thumbnail" href="images/fulls/12.jpg"><img src="images/thumbs/12.jpg" alt="" /></a>
							<h2>Mattis lorem sodales</h2>
							<p>Feugiat auctor leo massa, nec vestibulum nisl erat faucibus, rutrum nulla.</p>
						</article>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; Untitled.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a>.</li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
		<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script  src="assets/js/script.js"></script>
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/main.js"></script>
<!-- partial -->
  
        
    </form>
</body>
</html>
