@@ -0,0 +1,120 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment3.aspx.cs" Inherits="Assignment3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 3</title>
    <link href="Style/StyleSheetA3-2.css" rel="stylesheet" />
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
                ASSIGNMENT 3 &nbsp;
            </div>
            <div id="menu">
                <a href="Default.aspx">Master page</a>
            </div>
            <div id="content_area1">
                <h2>Web Site Design Artifacts </h2>
                <hr />
                <p>
                    <a href="#sitemap">Site map</a> | &nbsp;
               <a href="#wireframes">Wireframes</a> | &nbsp;
               <a href="#reference">Reference websites</a> | &nbsp;
                <a href="A3home.aspx">Custom Treads web pages</a>
                </p>
                <div>
                    <a id="sitemap">
                        <h2>Site map</h2>
                    </a>
                    <br />
                    The site-map is often the first point in a design process, when all the research and considerations start to form into something tangible.<br />
                    <br />
                    Here is the plan.<br />
                    <figure>
                        <img src="Assign3Images/sitemap.JPG" alt="site map" />
                        <figcaption>Site map of Custom Treads web pages</figcaption>
                    </figure>
                    I design the web site design of custom treads web pages in one page on Assignment 3 including sitemap, wireframes, and reference websites.<br />
                    <br />
                    I also create the link to custom treads web site development on the right side bar including home as the main page, our story as history of the company, our products as all product-line and prices, gallery as art work designed for customers, and contact us as multichannels for communication with the company.<br />
                    &nbsp;<hr />
                </div>
                <div>
                    <a id="wireframes">
                        <h2>Wireframes</h2>
                    </a>
                    The wireframes is a sketch or blueprint of a web page that shows the structure (but not detailed design).<br />
                    <br />
                    The structure of the main page or home including banner on the top, menu, content area, the side bar on the right, and footer on the bottom page.<br />
                    <br />

                    Here is one example of my design<br />
                    <figure>
                        <img src="Assign3Images/wireframe.JPG" alt="wireframes" />
                        <figcaption>wireframes of our story web page</figcaption>
                    </figure>
                    <br />
                    <hr />
                </div>
                <div>
                    <a id="reference"></a>
                    <h2>Reference websites</h2>
                    <strong>Layout:</strong><br />
                    I use the fixed layout because it is easy to adjust width and height.
                    <br />
                    <ul>
                        <li>Body:&nbsp;width = auto and height = auto</li>
                        <li>Wrapper:&nbsp;width = 1000 px and height = auto</li>
                        <li>Banner:&nbsp;width = 900 px and height = 200 px</li>
                        <li>Menu:&nbsp;width = 900 px and height = 30 px</li>
                        <li>Content Area:&nbsp;width = 580 px and height = auto</li>
                        <li>Right Side Bar:&nbsp;width = 260 px and height = auto</li>
                        <li>Footer:&nbsp;width = 900 px and height = 30 px</li>
                    </ul>
                    Moreover, I create border for the wrapper and the right side bar with solid style<br />
                    <strong>Color:</strong><br />
                    For the color theme, I use the suggestion color <strong><a href="http://paletton.com/#uid=73L0u0kkWlS5irPd2oQsOiPJsfO">from paletton.</a><br />
                    </strong>
                    First, I chose the dark blue color (#051d54) and then the tool would find the color theme for it.<br />
                    <br />
                    Here is my color theme
                    <p>
                        <img class="imgLeft" src="Assign3Images/color-theme.JPG" alt="color theme" /><br />
                        I use the font color as dark blue color (#051d54).<br />
                        The margin of wrapper is the same color of font<br />
                        The body background color (#304575) is slightly lighter from the font color.<br />
                        The font family is calibri for text in the whole web pages.<br />
                        I use the contrast color, light brown (#c6ab75), as the menu background color.<br />
                        I use other contract color of the subheader.<br />
                        Finally, I add light grey color for thin solid border and shadow of images.
                    </p>
                    <hr />
                    <p style="text-align: center;">
                        <a href="A3home.aspx">Click the banner to go to the Custom web page
                       <img src="Assign3Images/smbanner.jpg" alt="small banner" />
                        </a>
                    </p>
                </div>
                </div>
                <div id="footer">
                    References:&nbsp;
                 <a href="http://www.ultimatepapermache.com"><strong>Layout design </strong>from Ultimate papermache</a>|&nbsp;
                 <a href="http://paletton.com/#uid=73L0u0kkWlS5irPd2oQsOiPJsfO"><strong>Color theme design </strong>from paletton</a>|&nbsp;
                <a href="http://www.lemonsqueezyhome.com/2011/03/sewing-machine-graphic-free-download.html"><strong>Banner image </strong>from lemonsqueezy</a>

                </div>
            </div>
    </form>
</body>
</html>
