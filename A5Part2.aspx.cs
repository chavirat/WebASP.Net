@@ -0,0 +1,39 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A5Part2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Buttonsearch_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            SqlDataSourceProperty.SelectParameters["askprice"].DefaultValue
                = TextBoxaskprice.Text;
            SqlDataSourceProperty.SelectParameters["nobdrms"].DefaultValue
                = TextBoxnobdrms.Text;
            SqlDataSourceProperty.SelectParameters["nobathrms"].DefaultValue
                = TextBoxnobathrms.Text;
            SqlDataSourceProperty.SelectParameters["sqft"].DefaultValue
                = TextBoxsqft.Text;
            SqlDataSourceProperty.SelectParameters["garagesize"].DefaultValue
                = TextBoxgaragesize.Text;
            SqlDataSourceProperty.SelectParameters["showing"].DefaultValue
               = TextBoxshowing.Text;
        }
    }
    protected void CheckBoxmtnview_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void CheckBoxpool_CheckedChanged(object sender, EventArgs e)
    {
    }
}
