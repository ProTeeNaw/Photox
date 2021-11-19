<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="viewer.aspx.cs" Inherits="Photox.app.viewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Photos</title>
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
</head>
<body class="is-preload-0 is-preload-1 is-preload-2">
    <form id="form1" runat="server">
        <%-- View Photos Form BEGIN--%>

    <div id="viewer">
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
							<a class="thumbnail" runat="server" id="src1" href="images/fulls/01.jpg" data-position="left center">
                                
                                <asp:Image runat="server" ID="Image1" ImageUrl="images/thumbs/01.jpg" />
							</a>
							
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src2" href="images/fulls/02.jpg">
                                <asp:Image runat="server" ID="Image2" ImageUrl="images/thumbs/02.jpg" />

							</a>
							
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src3" href="images/fulls/03.jpg" data-position="top center">
                                <asp:Image runat="server" ID="Image3" ImageUrl="images/thumbs/03.jpg" />
							</a>
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src4" href="images/fulls/04.jpg">
                                <asp:Image runat="server" ID="Image4" ImageUrl="images/thumbs/04.jpg" />
							</a>
						</article>
					</section>
</div>
    </div>

    <%-- View Photos Form END --%>
    </form>
	<%-- JS INJECTION FOR PHOTOT VIEW --%>

    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>
