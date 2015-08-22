<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A3gallery.aspx.cs" Inherits="Assign3Webpages_gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>gallery</title>
    <!--[if IE]>
 <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
    <link href="Style/StyleSheetA3.css" rel="stylesheet" />
    <style>
        p.embedded {
            font-family: Tahoma;
            font-size: 14pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
            <div id="banner">
                <br />
                Custom Threads &nbsp;
            </div>
            <div id="menu">
            <a href="A3home.aspx">Home</a>
            <a href="A3story.aspx">Our story</a>
            <a href="A3product.aspx">Our Products</a>
            <a href="A3gallery.aspx">Gallery</a>
            <a href="A3contact.aspx">Contact us</a>
        </div>
            <div class="gallery">
                <h2>Our Gallery</h2>
                <hr />
                <ul>
                    <li><a href="Assign3Images/lg/JacketPatches.jpg">
                        <img src="Assign3Images/sm/JacketPatches.jpg" alt="Jacket Patches" /></a></li>
                    <li><a href="Assign3Images/lg/HatLogo2.jpg">
                        <img src="Assign3Images/sm/HatLogo2.jpg" alt="Hat logo2" /></a></li>
                    <li><a href="Assign3Images/lg/ZipperBag.jpg">
                        <img src="Assign3Images/sm/ZipperBag.jpg" alt="Zipper bags" /></a></li>
                    <li><a href="Assign3Images/lg/Babybibs1.jpg">
                        <img src="Assign3Images/sm/Babybibs1.jpg" alt="Baby bibs" /></a></li>
                </ul>
                <ul>
                    <li><a href="Assign3Images/lg/tshirt.jpg">
                        <img src="Assign3Images/sm/tshirt.jpg" alt="T-shirt" /></a></li>
                    <li><a href="Assign3Images/lg/Quilt1.jpg">
                        <img src="Assign3Images/sm/Quilt1.jpg" alt="Quits1" /></a></li>
                    <li><a href="Assign3Images/lg/Quilt2.jpg">
                        <img src="Assign3Images/sm/Quilt2.jpg" alt="Quits2" /></a></li>
                    <li><a href="Assign3Images/lg/Quilt3.jpg">
                        <img src="Assign3Images/sm/Quilt3.jpg" alt="Quits3" /></a></li>
                </ul>
                <ul>
                    <li><a href="Assign3Images/lg/HatLogo1.jpg">
                        <img src="Assign3Images/sm/HatLogo1.jpg" alt="HatLogo1" /></a></li>
                    <li><a href="Assign3Images/lg/BlanketEmbroideredImage.jpg">
                        <img src="Assign3Images/sm/BlanketEmbroideredImage.jpg" alt="Blanket Embroidered" /></a></li>
                    <li><a href="Assign3Images/lg/PetOutfitEmbroidery.jpg">
                        <img src="Assign3Images/sm/PetOutfitEmbroidery.jpg" alt="Pet Outfit Embroidery" /></a></li>
                    <li><a href="Assign3Images/lg/PillowEmbroideredImage.jpg">
                        <img src="Assign3Images/sm/PillowEmbroideredImage.jpg" alt="Pillow Embroidered" /></a></li>
                </ul>
            </div>
            <div id="footer">
                <a href="Assignment3.aspx">Assignment 3</a>| &nbsp;
            <a href="A3home.aspx">Home</a>&nbsp;&nbsp;|&nbsp;
            <a href="A3story.aspx">Our story</a>| &nbsp;
            <a href="A3product.aspx">Products</a>| &nbsp;
            <a href="A3gallery.aspx">Gallery</a>| &nbsp;
            <a href="A3contact.aspx">Contact us</a>| &nbsp;
            </div>
        </div>
    </form>
</body>
</html>
