@@ -0,0 +1,142 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editorial.aspx.cs" Inherits="Editorial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Editorial</title>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
     <style>
        p.embedded {
            font-family: 'Times New Roman';
            font-size: 12pt;
            font-weight: bold;
            color: #6699FF;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
      <div id="wrapper">
        <div id="banner"><br />EDITORIAL &nbsp;
        </div>
        <div style="margin:10px; font-weight:bold;">
                   <asp:Menu ID="EditorialMenu" runat="server" Orientation="Horizontal">
              <Items>
                <asp:MenuItem NavigateUrl="Default.aspx" Text="Home" Value="Home">
                    <asp:MenuItem NavigateUrl="Assignment2.aspx" Text="Assignment2" Value="Assignment2"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
          </asp:Menu>
        </div>
          
          <div id="leftsidebar">
               <h2>Editorial</h2> 
              <hr />
              <img src="images/profMannino.JPG" alt="Prof Mannino" />
              Michael V. Mannino
              <hr />
              <p>
                  "In 1996, I wrote an editorial about entitlement spending 
                  <br />
                  (see the class website for a link to the editorial) for the University of Washington student newspaper.  Since the editorial was not published online, I did not try to make a good layout.  
                  <br />
                  <br />
                  Now with the emphasis on social security reform, I would like to publish my article in an online magazine or newspaper.  
                  <br />
                  <br />
                  Help your professor publish his article (his tenure depends on it) by making an appealing layout."  
                  <br /></p><hr />
                <p class="embedded">  Here are my layout:<br />I hope you like it!
              </p>
          </div>
        <div id="content_area">
            <p>
               <a href="Editorial.aspx">Editorial</a> | &nbsp;
               <a href="Pressrelease.aspx">Press release</a>
           </p>
            <h1>Federal Entitlement Spending: </h1>
            <h1>A Time for Change</h1>
            <p class="embedded"> By Michael V. Mannino</p>
            <hr />
            <img src="images/FiscalBudget.jpg" alt="Fiscal Budget" />
         <p>Imagine a future with high unemployment: high wage jobs are rare, low wage jobs even with an advanced degree are the norm. Remember the 1970s: disco may have been king but inflation and high interest rates made new home ownership difficult. Contemplate 20% of your wages for payroll taxes: potential entrepreneurs will not forget their matching 20% rate. </p>
            <p class="embedded">Are these doomsday scenarios? </p>
            <p>Unfortunately, given the current state of federal entitlement spending, these scenarios are far more likely than you might think. </p>
            <p>If entitlement spending is not reformed soon, we may face drastic reductions in our standard of living. After you read this editorial, I hope to convince you about the magnitude of the problem and spur you to further education and action.

</p>
            <p class="embedded">So, what exactly is entitlement spending and why should you care? </p>
            <p>Entitlements are non discretionary payments made to individuals on the basis of age, financial condition, and other conditions. Non discretionary means that entitlement payments are not part of the normal budgeting process. Entitlement spending continues unless changed by law.</p>
            <p>Many programs meet this definition, but most entitlement spending is devoted to 4 programs: Social Security, Medicare, Medicaid, and federal pensions.

Entitlement programs for the elderly are a special concern because they are large, growing explosively, and not means tested. </p>
            <p>Today, entitlement spending plus interest payments consume about 60% of the federal budget. As entitlement spending increases, government spending on roads, education, research, and other infrastructure is being decreased. </p>
            <p>By 2013 when baby boom retirement begins, entitlement spending plus interest is projected to consume all federal tax revenues. Federal spending is heavily tilted towards the elderly as they receive 11 times the benefits as youth under 18. Interestingly, the vast amounts spent on the elderly are not justified because of poverty. The per capita income of the elderly is 67% above the population while the per capita wealth of the elderly is more than 3 times larger than those between 35 and 45.

</p>
            <p>When most entitlement programs were originally proposed, tax rates and benefit levels were much lower. For example, when today's 70 year olds were 25, the maximum payroll tax was $60 which translates to about $335 in inflation adjusted dollars. Today's 25 year old can pay as much as $8,500 in Social Security taxes. To gain voter appeal, benefit levels have usually been increased years before the tax bill is due. </p>
            <p>This practice had only been possible because there were originally few retirees and many workers. As an example of this "benefit now, tax later" philosophy, Congress raised Social Security benefits by 20% and indexed benefits to inflation in 1972. Huge increases in payroll taxes did not follow for more than 10 years.

</p>
            <p>The problem with entitlement spending is that current benefit levels cannot be sustained without major economic disruptions. The 1994 Bipartisan Commission on Entitlement Reform has estimated that in 2030 a payroll tax rate between 38% and 53% will be necessary to sustain current benefit levels. </p>
            <p>If a tax increase of this size is not possible, the government can increase borrowing or increase the money supply. Large increases in borrowing could lead to slow economic growth and fewer high wage jobs. Large increases in the money supply could lead to high inflation like the late 1970s. </p>
            <p>No matter how future entitlement spending is financed, a lower standard of living is likely unless major reform is enacted soon.

If prospects of future entitlement spending are so bleak, then <b>how did we get here?</b> </p>
            <p>A major reason was a belief that the economy could grow so fast that demographics would never be a problem. For example in 1968, noted economist Paul Samuelson cheerfully predicted that Social Security could pay retirees huge returns generation after generation because of the expected growth in the economy. </p>
            <p>In addition to this optimistic outlook on economic growth, benefit levels have increased because retirees tend to be single issue voters giving their vote more weight than it might have otherwise. </p>
            <p>Politicians have not been reticent to exploit this tendency by telling beneficiaries that entitlements are earned benefits that the nation is obligated to pay.

Fortunately, there is significant movement towards change. </p>
            <p>The Concord Coalition, a non partisan group founded by former Democratic Senator Paul Tsongas and former Republican Senator Warren Rudman, is leading the effort to reform entitlement spending. </p>
            <p class="embedded">The mission of the Concord Coalition is twofold: </p>
            <p>(1) To share with average Americans a true and accurate picture of the difficult challenges facing our economy and what choices we have for fixing them; and </p>
            <p>(2) To stimulate honest and realistic public discussion and debate that will break through the gridlock and give leaders the courage to do what is right for the nation as a whole. </p>
            <p>The most notable recommendation by the Concord Coalition is a comprehensive means test for all federal entitlements. There are many other non partisan groups and individuals with similar concerns and plans for change. </p>
            <p>A good place to search for unbiased information is the Web page of the Concord Coalition <a href="http://www.concordcoalition.org/">(http://www.concordcoalition.org/)</a>.

Timely entitlement reform is a vital issue for your future.</p>
            <p>&nbsp;Entitlement reform involves new systems that emphasize savings rather than spending while providing a safety net for the needy. The transition to new systems will involve sacrifices by everyone, young and old. The time for entitlement reform is NOW. </p>
            <p>If we fail to act now, entitlement reform will be much more expensive or impossible later. The consequences of failing to act now may be grave: higher taxes, higher inflation, and fewer high wage jobs. </p>
            <p>Although the precise impact on our future standard of living is difficult to predict, we are recklessly gambling if we do not face the problem today.

</p>
            <p>You can make a difference today through personal education and activism. </p>
            <p>In particular,<b> the University of Washington Chapter of the Concord Coalition </b> welcomes new members to provide initiative for the coming academic year.

</p>
            <hr />
            <p><b>Wrote By: </b>Michael V. Mannino <br/> is an associate professor in the Graduate School of Business at the University of Colorado at Denver. He was the faculty advisor to the U.W. Chapter of the Concord Coalition when he wrote this editorial.</p>
        </div>
        <div id="rightsidebar">
           <h3>MOST POPULAR</h3> 
            <hr />
            <p><a href="http://http://maildeckapp.com/"><img src="images/ads-maildeck.jpg" /></a></p>
            <p><a href="http://www.denverpost.com/broncos/ci_26416067/broncos-vs-cowboys-5-goals-denver-final-preseason?source=most_viewed">Brock Osweiler shows promise in Broncos' final preseason game, vs. Cowboys</a></p><hr />
            <p><a href="http://www.denverpost.com/broncos/ci_26428457/broncos-whip-cowboys-final-preseason-game-roster-cuts?source=most_viewed">Broncos' reserves whip Cowboys in final preseason game of 2014</a></p><hr />
            <p><a href="http://www.denverpost.com/nationworld/ci_26428366/mystery-solved-death-valleys-sailing-rocks?source=most_viewed">Mystery solved of Death Valley's sailing rocks</a></p><hr />
            <p><a href="http://www.denverpost.com/kiszla/ci_26426717/mark-kiszla-taunting-penalty-peyton-manning-shows-broncos-mean?source=most_viewed">Kiszla: Taunting penalty on Peyton Manning shows Broncos mean business</a></p><hr />
            <p><a href="http://www.denverpost.com/broncos/ci_26429732/they-said-it-demarcus-ware-talks-dallas-return?source=most_viewed">They Said It: DeMarcus Ware talks Dallas return; other Broncos in on looming cuts</a></p><hr />
            <p><a href="http://www.atasteofcolorado.com"><img src="images/ads-tasteofcolorado.jpg"/></a></p>
            <p>&nbsp;<a href="http://groveatstapleton.com/?utm_source=DenverPost&utm_medium=Banners&utm_campaign=DenverPost"><img src ="images/ads-thegrove.jpg" alt="the grove"/></a></p>
            <p>&nbsp;<a href="http://www.hickenhustle.com/?utm_source=DenverPost&utm_medium=Display&utm_campaign=RGACO2014"><img src="images/adsHickenHustle.jpg" alt="hicken hustle" /></a></p>
        </div>
        <div id="footer">
             <p>
               <a href="Editorial.aspx">Editorial</a> | &nbsp;
               <a href="Pressrelease.aspx">Press release</a>
           </p>
           </p>
          
        </div>
    </div>
 
       
 
    </form>
</body>
</html>


