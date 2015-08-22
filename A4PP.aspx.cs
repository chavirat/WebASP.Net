@@ -0,0 +1,122 @@
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A4PP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

    }
    protected void Buttoncalculate_Click(object sender, EventArgs e)
    {
        
        if (IsValid)
        {
            int periodnumber = int.Parse(DDperiod.SelectedValue); // periodnumber = periods per year
            double SellingPrice = double.Parse(TextSellingPrice.Text.Trim()); // SellingPrice = selling price
            double DownPayment = double.Parse(TextDownPayment.Text.Trim()); // DownPayment = down payment
            double AnnualIntRate = double.Parse(TextAnnualIntRate.Text.Trim()); //AnnualIntRate = annual interest rate
            int Year = int.Parse(TextYear.Text.Trim()); // Year = number of loan term
            double IntRatePeriod, LoanAmt, Payment; // IntRatePeriod = interest rate per period, LoanAmt= loan amount, Payment = payment per period
            int period; // total period of loan term
            IntRatePeriod = AnnualIntRate / periodnumber;
            period = Year * periodnumber;
            LoanAmt = SellingPrice - DownPayment;
            Payment = (LoanAmt * IntRatePeriod) / (1 - Math.Pow((1 + IntRatePeriod), -period));
            TextPayment.Text = Payment.ToString("C");
            TextLoanAmt.Text = LoanAmt.ToString("C");

            if (CheckBoxCumulative.Checked == true)
        {
            TableSchedule.Visible = true; // show table when CheckBoxCumulative is checked
            //add Header of table
            TableHeaderCell header = new TableHeaderCell();
            header.Text = "Period";
            TableRow headerRow = new TableRow();
            headerRow.Cells.Add(header);
            header = new TableHeaderCell();
            header.Text = "Principal";
            headerRow.Cells.Add(header);
            header = new TableHeaderCell();
            header.Text = "Interest";
            headerRow.Cells.Add(header);
            header = new TableHeaderCell();
            header.Text = "Balance";
            headerRow.Cells.Add(header);
            TableSchedule.Rows.Add(headerRow);

            double[] interests = new double[period+1]; // interests = interest payment of period
            double[] principals = new double[period+1];
            double[] balances = new double[period+1]; // balances = remain principals
            
            //add frist row of table
            TableRow r1 = new TableRow();    
            principals[0] = 0;
            balances[0] = LoanAmt;
            interests[0] = AnnualIntRate * 100;
            TableCell c1 = new TableCell();
            c1.Text = "0";
            r1.Cells.Add(c1);
            c1 = new TableCell();
            c1.Text = principals[0].ToString(); 
            r1.Cells.Add(c1);
            c1 = new TableCell();
            c1.Text = interests[0].ToString()+"%"; 
            r1.Cells.Add(c1);
            c1 = new TableCell();
            c1.Text = balances[0].ToString("C"); 
            r1.Cells.Add(c1);
            TableSchedule.Rows.Add(r1);
            
            //add other row of table
            for (int i =1;i <=period ; i++)
            {
                TableRow r = new TableRow();
                interests[i] = balances[i - 1] * IntRatePeriod;
                principals[i] = Payment - interests[i];
                balances[i] = balances[i - 1] - principals[i];
                TableCell c = new TableCell();
                c.Text = i.ToString();
                r.Cells.Add(c);
                c = new TableCell();
                c.Text = principals[i].ToString("C");
                r.Cells.Add(c);
                c = new TableCell();
                c.Text = interests[i].ToString("C");
                r.Cells.Add(c);
                c = new TableCell();
                c.Text = balances[i].ToString("C");
                r.Cells.Add(c);

                TableSchedule.Rows.Add(r);
            }
            
        }
          
        }
    }
    //clear botton
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
    protected void CheckBoxCumulative_Checked(object sender, EventArgs e)
    {

    }
}
