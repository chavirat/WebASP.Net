@@ -0,0 +1,36 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment5.aspx.cs" Inherits="Assignment5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 5</title>
     <link href="Style/StyleSheetA4.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">
        <div id="banner"><br />
            Assignment 5
        </div>
            <div id="menu"></div>
    <div id ="content_area1">
    <a href="A5Part1.aspx">Part 1: GridView with a Simple Search Criteria </a> 
        <br />
        I did it by following steps:<br />- Create a web form.<br />
        - Create &amp; bind a drop down list box to query on the Property table.<br />
        - Create &amp; bind a gridview to query on the Showing table.<br />
        - Set the GridView control to allow updating rows (edit) and paging records (paging = true).<br />
    <a href="A5Part2.aspx">Part 2: Master/Detail Web Pages with Search Criteria</a>
        <br />
        I did it by following steps:<br />
        - Create a web form.<br />
        - Create &amp; validate the textbox fields.<br />
        - Create &amp; code a search botton.<br />
        - Create &amp; bind a gridview to query on the Property table related to search critiria.<br />
        - Create &amp; bing a detailview to query on the Showing table related to selected property number.</div>
            </div>
    </form>
</body>
</html>
