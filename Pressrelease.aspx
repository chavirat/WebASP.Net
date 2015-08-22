@@ -0,0 +1,98 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pressrelease.aspx.cs" Inherits="Pressrelease" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Press release</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
     <style>
        p.head {
            font-family: Calibri;
            font-size: 14pt;
            color: #808080;
            text-decoration:solid;
            font-weight:bold;
        }
        p.embedded {
            font-family: Calibri;
            font-size: 12pt;
            color: #808080;
            text-decoration:solid;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
      <div id="wrapper">
        <div id="banner">
            <br /> PRESS RELEASE &nbsp;</div>
        <div style="margin:10px; font-weight:bold;">
             <asp:Menu ID="PressMenu" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="Default.aspx" Text="Home" Value="Home">
                    <asp:MenuItem NavigateUrl="Assignment2.aspx" Text="Assignment2" Value="Assignment2"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>        
        </div >
          <div id="content_area1">
            <table>
                <tr><td colspan="2"> <p>
               <a href="Editorial.aspx">Editorial</a> | &nbsp;
               <a href="Pressrelease.aspx">Press release</a>
           </p><hr />
                    </td></tr>
                
          
                <tr>
                    <td><img style= "width:auto" src="http://localhost:25176/images/world1.gif" alt="world"/>
                     &nbsp;
                        <img style= "width:auto" src="images/sidebar1.jpg" alt="side bar"/>
                    </td>
                    <td><h2>History of Corel Corporation</h2>
                        <p class="head"> 
                      <img class="imgRight" src="http://localhost:25176/images/14325-usw1_46860.gif" alt="turst us"   /> <img class="imgRight" src="images/TravelAgent.gif" alt="travel agent" />
                            Founded in 1985 by Dr.Michael Cowpland, Corel Corporation is a leading developer of software technologies for the business, graphics and emerging Webtop markets. 
                        </p>
                        <p class="embedded">
                            Recognized for excellence through industry awards and consumer loyalty, Corel products continually rank among the highest in the industry.  For more than a decade, Corel has maintained strong growth by developing advanced technology and making it available through competitively priced products targeted at areas of expansion.                        
                        Currently on the forefront of the latest wave in computing, Corel is developing technology for the new Webtop environment, which includes <b>Java, XML and HTML.</b>  The Company is producing Java tools that will make it easy to take full advantage of multiplatform computing. With Corel&#39;s upcoming releases, a single version of a software application will be able to run on any type of popular desktop computer or network computer. <br />
                        <br />
                       <b>Corel</b>&nbsp;has about 1,500 employees—900 in software development—in three main offices. The Company&#39;s corporate headquarters and graphics development team are located in Ottawa, Canada. Denver, CO is home to Corel&#39;s business applications R&amp;D division, while offices in Dublin, Ireland handle graphics software localization, and part of the Company&#39;s technical support and customer service. Worldwide sales offices promote Corel&#39;s products locally. 
                        <br />
                        <br />To complement its award-winning products, Corel offers full service assistance, from prepurchase decision-making to support after the software is installed. Corel helps its customers make the most of their software investments. Recognized internationally as an innovative software developer and marketer, Corel ships its products in over 17 languages through a network of more than 160 distributors in 70 countries. Corel is traded on the Toronto Stock Exchange&nbsp; and the NASDAQ...(line truncated)...
                        </p>
                    </td>
                   </tr>
                <tr>
                    <td colspan="2"><hr />
                       </td>
                    </tr>
                <tr>
                    <td colspan="2">
                       <img style="width:40%; height:55px; float:left;" src="http://localhost:25176/images/ibm.gif" alt="ibm" />
                       <img style="width:60%; height:55px; float:right;" src="images/cob3.gif" /></td>
                </tr>

            </table>
              </div>

       
        <div id="footer">
             <p>
               <a href="Editorial.aspx">Editorial</a> | &nbsp;
               <a href="Pressrelease.aspx">Press release</a>
           </p>
           
          
        </div>
    </div>
 
       
 
    </form>
</body>
</html>


