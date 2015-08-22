@@ -0,0 +1,58 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment4.aspx.cs" Inherits="Assignment4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4</title>
    <link href="Style/StyleSheetA4.css" rel="stylesheet" />
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
                ASSIGNMENT 4 &nbsp;
            </div>
            <div id="menu">
                <a href="Default.aspx">Master page</a>
            </div>
            <div id="content_area1">
                <h2>Mortgage Planner </h2>
                <hr />
                <p>
                 Form in two layout
                <a href="A4Html.html">HTML</a> |&nbsp;
                <a href="A4PP.aspx">ASP.NET</a>
                </p>
                <hr />
                  <h3>Design of Asp.net layout</h3>
                    I create Master page (MasterA4.Master) to include a banner, a menu and a left side bar.<br />
                    Then,
                    I create calcution pages including Selling price, Down payment, and Payment per period page.<br />
                    <ul> 
                        <li><strong>Selling Price page (A4SP.aspx) </strong>is calculated selling price and loan amount.</li>
                        <li><strong>Down Payment page (A4DP.aspx) </strong>is calculated down payment and loan amount.</li>
                        <li><strong>Payment per period page(A4PP.aspx)</strong> is calculated payment per period and loan amount.<br />
                            I also include payment schdule function in checkbox option.<br /></li>
                    </ul>
                    Validation errors have been detected and <em>IsValid</em> property already checked before any calcution.<br />
                    <strong>For the coded-behind page, </strong>I create variables and explanation of variables and process in Payment per period coded-behind page(A4PP.aspx.cs).&nbsp;
                It'd be easy to understand my code and logic. If you have any question about my code, please feel free to let's me know.
                <br />
                Furthemore, I already tested my calculation on a spreadsheet and rechecked in <a href="http://www.zillow.com/mortgage-calculator/"> zillow website.</a><br />
                I downloaded the logo from <a href="http://www.iconarchive.com/show/origami-colored-pencil-icons-by-double-j-design/blue-home-icon.html"> free icon website.</a><br />
                I use the same color from the logo for designing web pages.</div>
                
            </div>
    </form>
</body>
</html>

