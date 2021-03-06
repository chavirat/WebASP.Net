﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A3home.aspx.cs" Inherits="A3home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Home</title>
    <link href="Style/StyleSheetA3.css" rel="stylesheet" />
     <style>
        p.embedded {
            font-family: Tahoma;
            font-size: 12pt;
            color:#051d54;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <div id="wrapper">
        <div id="banner">
           <br />Custom Threads &nbsp;
        </div>
          <div id="menu">
            <a href="A3home.aspx">Home</a>
            <a href="A3story.aspx">Our story</a>
            <a href="A3product.aspx">Our Products</a>
            <a href="A3gallery.aspx">Gallery</a>
            <a href="A3contact.aspx">Contact us</a>
        </div>

        <div id="content_area">
            <h2>Welcome to Custom Treads</h2><hr />
            <h3>Who are we?</h3>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Custom Threads</strong>&nbsp;is a sole proprietorship owned by<em> Ayn Lee</em>. Her credentials include the Master Sewing and Design Professional Certification as well as completion of many programs and workshops on design specialties.</p>  
            <h3>What we do?</h3>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Custom Threads</strong>&nbsp;has a mix of commercial, consumer groups, and individual customers. Commercial and consumer groups often want customized hats, shirts, and other apparel for employees and group members. Individual customers are typically women who want unique mementos and gifts such as baby bibs, quilts, and zipper bags.</p>
        </div>
       <div id="rightsidebar">
           <h2>Promotion</h2><hr />           
           <img src="Assign3Images/sm/HatLogo2.jpg" alt="hat logo2" /><p class="embedded"><strong>STUDENT ONLY</strong><br />
               Order Hat Logo TODAY<br />
               Get 10 % discount!</p>
       </div>
        <div id="footer">
            <a href="Assignment3.aspx" >Assignment 3</a>| &nbsp;
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
