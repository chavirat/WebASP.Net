@@ -0,0 +1,196 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A6Part1 : System.Web.UI.Page
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
            SqlDataSourceProperty.SelectCommand = "SELECT propno, street, city, state, zip, sqft, nobdrms, nobathrms,";
            SqlDataSourceProperty.SelectCommand += "garagesize, pool, mtnview, askprice "; 
            SqlDataSourceProperty.SelectCommand += "FROM Property ";

            if (TextBoxaskprice.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += "WHERE ";
                SqlDataSourceProperty.SelectCommand += "askprice <=";
                SqlDataSourceProperty.SelectCommand += TextBoxaskprice.Text;

                if (TextBoxnobdrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "nobdrms >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobdrms.Text;
                }
                if (TextBoxnobathrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "nobathrms >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                }
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "sqft >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "garagesize >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                }
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (TextBoxnobdrms.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += "WHERE ";
                SqlDataSourceProperty.SelectCommand += "nobdrms >=";
                SqlDataSourceProperty.SelectCommand += TextBoxnobdrms.Text;

                if (TextBoxnobathrms.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "nobathrms >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                }
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "sqft >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "garagesize >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                }
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (TextBoxnobathrms.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += "WHERE ";
                SqlDataSourceProperty.SelectCommand += "nobathrms >=";
                SqlDataSourceProperty.SelectCommand += TextBoxnobathrms.Text;
                if (TextBoxsqft.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "sqft >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                }
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "garagesize >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                }
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (TextBoxsqft.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += " WHERE ";
                SqlDataSourceProperty.SelectCommand += "sqft >=";
                SqlDataSourceProperty.SelectCommand += TextBoxsqft.Text;
                if (TextBoxgaragesize.Text != String.Empty)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "garagesize >=";
                    SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                }
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (TextBoxgaragesize.Text != String.Empty)
            {
                SqlDataSourceProperty.SelectCommand += "WHERE ";
                SqlDataSourceProperty.SelectCommand += "garagesize >=";
                SqlDataSourceProperty.SelectCommand += TextBoxgaragesize.Text;
                if (CheckBoxmtnview.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += "AND ";
                    SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                }
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += "AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (CheckBoxmtnview.Checked == true)
            {
                SqlDataSourceProperty.SelectCommand += " WHERE ";
                SqlDataSourceProperty.SelectCommand += "mtnview = Yes";
                if (CheckBoxpool.Checked == true)
                {
                    SqlDataSourceProperty.SelectCommand += " AND ";
                    SqlDataSourceProperty.SelectCommand += "pool = Yes";
                }
            }
            else if (CheckBoxpool.Checked == true)
            {
                SqlDataSourceProperty.SelectCommand += " WHERE ";
                SqlDataSourceProperty.SelectCommand += "pool = Yes";
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
