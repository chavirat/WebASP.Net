@@ -0,0 +1,49 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A4SP : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }
    protected void Buttoncalculate_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int periodnumber = Convert.ToInt32(DDperiod.SelectedValue);
            double Payment = Convert.ToDouble(TextPayment.Text);
            double DownPayment = Convert.ToDouble(TextDownPayment.Text);
            double AnnualIntRate = Convert.ToDouble(TextAnnualIntRate.Text);
            int Year = Convert.ToInt32(TextYear.Text);
            double IntRatePeriod, LoanAmt, SellingPrice;
            int period;
            IntRatePeriod = AnnualIntRate / periodnumber;
            period = Year * periodnumber;
            LoanAmt = (Payment * (1 - Math.Pow((1 + IntRatePeriod), -period))) / IntRatePeriod;
            SellingPrice = DownPayment + LoanAmt;
            TextSellingPrice.Text = SellingPrice.ToString("c");
            TextLoanAmt.Text = LoanAmt.ToString("c");
        }
    }
    protected void Buttonclear_Click(object sender, EventArgs e)
    {
        DDperiod.SelectedIndex = 0;
        TextSellingPrice.Text = "";
        TextDownPayment.Text = "";
        TextLoanAmt.Text = "";
        TextAnnualIntRate.Text = "";
        TextYear.Text = "";
        TextPayment.Text = "";
    }
    protected void DDperiod_SelectedIndexChanged(object sender, EventArgs e)
    {
        int periodnumber = Convert.ToInt32(DDperiod.SelectedValue);
    }
}
