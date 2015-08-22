@@ -0,0 +1,53 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A3story.aspx.cs" Inherits="Assign3Webpages_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>our story</title>
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
            <div id="content_area">
                <h2>Our Story</h2>
                <hr />
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Custom Threads</strong> was founded in 2012 to provide distinctive sewing solutions for businesses, groups, and individuals. The firm creates stylized and surprisingly affordable apparel for businesses and consumer groups as well as mementos and gifts for individuals. Consultations and expert workmanship ensure high quality products matching requirements of design conscious consumers and businesses.</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Custom Threads</strong> is a sole proprietorship owned by <strong>Ayn Lee</strong>. Her credentials include the Master Sewing and Design Professional Certification as well as completion of many programs and workshops on design specialties</p>
            </div>
            <div id="rightsidebar">
                <a href="Assign3Images/lg/BrotherSewingMachine.jpg">
                    <img src="Assign3Images/sm/BrotherSewingMachine.jpg" alt="sewing marchine" /></a><br />
                <em>The Brother Sewing Machine</em>
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
