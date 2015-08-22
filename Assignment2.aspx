@@ -0,0 +1,105 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment2.aspx.cs" Inherits="Assignment2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 2</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
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
           <br />ASSIGNMENT 2 &nbsp;
        </div>
        <div>
             <asp:Menu ID="Assignment2Menu" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="Default.aspx" Text="Home" Value="Home">
                    <asp:MenuItem NavigateUrl="Assignment2.aspx" Text="Assignment2" Value="Assignment2">
                    </asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>        
        </div>
          <div id="leftsidebar">
              <h3>Practice area</h3>
              <hr />
              <p>
                <a href="practice.html">Practice page</a></p>
          </div>
        <div id="content_area">
            <h2>Newspaper & Magazine Design </h2>
            <hr /> 
           <p>
                <a href="Editorial.aspx">Editorial</a> | &nbsp;
               <a href="Pressrelease.aspx">Press release</a></p>
            Summary of My Design
            <p>
                <b>For Practice page</b> that is on the left side bar, I separate it from the two web pages. Thanks to useful web resources and clearly assignment guideline, it helps me to understand basis of CSS and creating Master page with Microsoft Visual Studio.<br />
                I created three lines for practicing CSS.
                <br />
                1. First line is uses the normal style from the external style sheet (practice.css)<br />
                2. Second line uses the inline normal.override style<br />
                3. Third line changes the font and point size in the normal style from the external stylesheet.</p>
            <p>
                <b>For editorial page,</b> I have inspiration from <a href="http://www.denverpost.com/news">The Denver post newspaper</a>. I use #ID to create pattern of web page in Style sheet.css by divided in the main three parts such as 
                <br />
                1. A banner as #banner
                <br />
                2. A content area in 3 columns  including 
                <br />
                left side bar as #leftsidebar, 
                <br />
                content area as #content_area, 
                <br />
                and right side bar as #rightsidebar
                <br />
                3. A footer as #footer

            </p>
            <p>
                <b>For press release page,</b> I have inspiration from <a href="http://www.smashingmagazine.com/tag/html/">Smashing Magazines</a> that are the advertisement includes in the article and font style and color are comfortable for reading. 
                <br />
                In this page, I use table to create web page design. I try to use many technic to make two pages are more interesting.

            </p>
            <p>
                I still use inline style and embedded style in two pages when I think this style for the object is used only once. However, I also create external styles for using in whole web pages.

                Using Microsoft Visual Studio, It is very easy when I use tools on this program, but it is hard to adjust source code for my own design. Sometimes,it doesn&#39;t show the same design when I see it on the web browser. Thus, I need to recheck my work on different browers.</p>
        </div>
        <div id="rightsidebar">
            <h3>Useful Resources</h3>
            <hr />
            <ul>
                <li><a href="http://www.w3schools.com/">W3schools of CSS<br /></a></li>
                
                <li><a href="http://www.myhtmltutorials.com/">HTML Tutorials</a></li>
                     </ul>
         
        </div>
        <div id="footer">
            <p>
                Inspiration pages:&nbsp;
               <a href="http://www.denverpost.com/news">The Denver post</a> |&nbsp;
               <a href="http://www.smashingmagazine.com/tag/html/">Smashing Magazines</a>
           </p>
          
        </div>
    </div>
 
       
 
    </form>
</body>
</html>

