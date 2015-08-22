@@ -0,0 +1,34 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterA4 : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        switch(RadioButtonList1.SelectedIndex){
            case 0:
                Response.Redirect("A4SP.aspx");
                break;
            case 1:
                Response.Redirect("A4DP.aspx");
                break;
            case 2:
                Response.Redirect("A4PP.aspx");
                break;
        }
           

    }
    
}
