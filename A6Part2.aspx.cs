@@ -0,0 +1,180 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A6Part2 : System.Web.UI.Page
{
    public static string anSqlStmt = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void Buttonsearch_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlDataSourceProperty.SelectCommand = "SELECT TOP ";
            SqlDataSourceProperty.SelectCommand +=  TextBoxnorow.Text;
            if (TextBoxaskprice.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " propno , sqr((((askprice -";
                SqlDataSourceProperty.SelectCommand += TextBoxaskprice.Text;
                SqlDataSourceProperty.SelectCommand += ") / 1000000)^2)";              
                if (TextBoxnobdrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((nobdrms -";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobdrms.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 6)^2)";      
                }
                if (TextBoxnobathrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((nobathrms -";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 5)^2)";      
                }
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((sqft -";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 6000)^2)";      
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((garagesize -";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 4)^2)";      
                }
                SqlDataSourceProperty.SelectCommand += " + iif(mtnview = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxmtnview.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += " + iif(pool = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxpool.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (TextBoxnobdrms.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr((((nobdrms -";
                SqlDataSourceProperty.SelectCommand += TextBoxnobdrms.Text;
                SqlDataSourceProperty.SelectCommand += ") / 6000)^2)";
                if (TextBoxnobathrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((nobathrms -";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 5)^2)";
                }
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((sqft -";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 6000)^2)";
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((garagesize -";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 4)^2)";
                }
                SqlDataSourceProperty.SelectCommand += " + iif(mtnview = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxmtnview.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += " + iif(pool = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxpool.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (TextBoxnobathrms.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr((((nobathrms -";
                SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                SqlDataSourceProperty.SelectCommand += ") / 5)^2)";
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((sqft -";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 6000)^2)";
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((garagesize -";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 4)^2)";
                }
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " + 1";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " + 1";
                }
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (TextBoxsqft.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr((((sqft -";
                SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                SqlDataSourceProperty.SelectCommand += ") / 6000)^2)";

                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " + (((garagesize -";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                    SqlDataSourceProperty.SelectCommand += ") / 4)^2)";
                }
                SqlDataSourceProperty.SelectCommand += " + iif(mtnview = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxmtnview.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += " + iif(pool = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxpool.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (TextBoxgaragesize.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr((((garagesize -";
                SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                SqlDataSourceProperty.SelectCommand += ") / 4)^2)";
                SqlDataSourceProperty.SelectCommand += " + iif(mtnview = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxmtnview.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += " + iif(pool = ";
                SqlDataSourceProperty.SelectCommand += CheckBoxpool.Checked.ToString();
                SqlDataSourceProperty.SelectCommand += " , 0,1)";
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (CheckBoxmtnview.Checked == true)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr( 1";
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " + 1";
                }
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            else if (CheckBoxpool.Checked == true)
            {
                SqlDataSourceProperty.SelectCommand += " propno, sqr(1";
                SqlDataSourceProperty.SelectCommand += ") AS distance FROM Property ORDER BY 2";
            }
            
            anSqlStmt = SqlDataSourceProperty.SelectCommand;
            gvProperty.DataBind();
            gvProperty.AllowSorting = true;
            gvProperty.AllowPaging = true;


        }
    }
    protected void CheckBoxmtnview_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CheckBoxpool_CheckedChanged(object sender, EventArgs e)
    {
    }
}
