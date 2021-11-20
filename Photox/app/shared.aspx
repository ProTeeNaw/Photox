<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shared.aspx.cs" Inherits="Photox.app.shared" %>


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
						<h1 runat="server" id="Header">Album Name</h1>
						<p>Select an option below to work with your album</p>
						<ul class="icons">
							<li>
								<asp:Button runat="server" Text="Share" OnClick="FillDropDown">
								</asp:Button>

							</li>
							<li>
								<asp:Button runat="server" Text="Edit" OnClick="Test">
								</asp:Button>
							</li>
							<li>
								<asp:Button runat="server" Text="Delete" OnClick="Delete">
								</asp:Button>
							</li>
						</ul>
					</header>
				<!-- Thumbnail -->
					<section id="thumbnails">
						<article>
							<a class="thumbnail" runat="server" id="src1" href="images/fulls/01.jpg" data-position="left center" onclick="pic1()">
                                
                                <asp:Image runat="server" ID="Image1" ImageUrl="images/thumbs/01.jpg" />
							</a>
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src2" href="images/fulls/02.jpg" onclick="pic2()">
                                <asp:Image runat="server" ID="Image2" ImageUrl="images/thumbs/02.jpg" />
							</a>
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src3" href="images/fulls/03.jpg" data-position="top center" onclick="pic3()">
                                <asp:Image runat="server" ID="Image3" ImageUrl="images/thumbs/03.jpg" />
							</a>
						</article>
						<article>
							<a class="thumbnail" runat="server" id="src4" href="images/fulls/04.jpg" onclick="pic4()">
                                <asp:Image runat="server" ID="Image4" ImageUrl="images/thumbs/04.jpg" />
							</a>
						</article>
					</section>
</div>
    </div>

    <%-- View Photos Form END --%>

		<div id="note" runat="server">
        <div id="cookiesdirective" style="bottom: 0px;">
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; background-color: rgb(0, 0, 0); opacity: 0.8; z-index: 9999;">

            </div>
            <div style="position: fixed; top: 0; right: 0; bottom: 0; left: 0; display: flex; align-items: center; z-index: 10000">
                <div class="cookie-wrapper" style="position: relative; width: 100%; max-width: 500px; margin-right: auto; margin-left: auto; padding: 1rem; text-align: center; border-radius: .3rem; box-shadow: 0 10px 40px 0 rgba(0,0,0,0.2); color:#424a4d; background:rgba(234, 239, 241, 0.99);">
					<asp:DropDownList ID="AllUserNames" runat="server" style="margin-bottom: 38px"></asp:DropDownList>
                    <div class="mbr-section-btn">
                        <asp:Button style="margin:0;" runat="server" class="btn btn-sm btn-primary display-7" id="ok" Text="Share" onclick="Share">
                        </asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
	<%-- JS INJECTION FOR PHOTOT VIEW --%>

    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/main.js"></script>
	<script>
		function pic1() {
            var src = document.getElementById("src1").src;
            document.cookie = "pic=" + src + ";path=/";
		}

        function pic2() {
            var src = document.getElementById("src2").src;
            document.cookie = "pic=" + src + ";path=/";
		}

        function pic3() {
            var src = document.getElementById("src3").src;
            document.cookie = "pic=" + src + ";path=/";
		}

        function pic4() {
            var src = document.getElementById("src4").src;
            document.cookie = "pic=" + src + ";path=/";
        }
    </script>
</body>
</html>
