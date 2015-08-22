@@ -0,0 +1,158 @@
﻿<%@ Page Title="Payment per period" Language="C#" MasterPageFile="~/MasterA4.master" AutoEventWireup="true" CodeFile="A4PP.aspx.cs" Inherits="A4PP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
    <title>Payment per period</title>
    <link href="Style/StyleSheetA4.css" rel="stylesheet" />
    <style>
        .auto-style1 {
            width: 100%;
            text-align: left;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Selling Price:</td>
            <td>
                $
                <asp:TextBox ID="TextSellingPrice" runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="SellingPricevaluecheck"
                        runat="server"
                        ErrorMessage="Selling price must be a number."
                        ControlToValidate="TextSellingPrice"
                        Operator="DataTypeCheck"
                        Type="Currency"
                        EnableClientScript="False"
                        Display="Dynamic"
                        ForeColor="Red"></asp:CompareValidator>
                <asp:CompareValidator ID="CompareValidatorSellingPrice"
                    runat="server"
                    ErrorMessage="Selling Price must be greater than or equal to the down payment."
                    ControlToValidate="TextSellingPrice"
                    ControlToCompare="TextDownPayment"
                    Operator="GreaterThanEqual"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red" Type="Double"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSellingPrice"
                    runat="server"
                    ErrorMessage="Selling Price is required."
                    ControlToValidate="TextSellingPrice"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Down Payment:</td>
            <td>
                $
                <asp:TextBox ID="TextDownPayment" runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="DownPaymentvaluecheck"
                        runat="server"
                        ErrorMessage="Down Payment must be a number."
                        ControlToValidate="TextDownPayment"
                        Operator="DataTypeCheck"
                        Type="Currency"
                        EnableClientScript="False"
                        Display="Dynamic"
                        ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorDownPayment"
                    runat="server"
                    ErrorMessage="Down payment is required."
                    ControlToValidate="TextDownPayment"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>

        <tr>
            <td>Annual Interest Rate:</td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextAnnualIntRate" runat="server"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAnnualIntRate"
                        runat="server"
                        ErrorMessage="Interest Rate is required."
                        ControlToValidate="TextAnnualIntRate"
                        EnableClientScript="False"
                        Display="Dynamic"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAnnualIntRate"
                    runat="server"
                    ErrorMessage="Interest rate must be value between 0.0 - 1.0"
                    ControlToValidate="TextAnnualIntRate"
                    MinimumValue="0.0"
                    MaximumValue="1.0"
                    Type="Double"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td>Number of years:</td>
            <td>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextYear" runat="server"></asp:TextBox>&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoYear"
                        runat="server"
                        ErrorMessage="Number of year is required."
                        ControlToValidate="TextYear"
                        EnableClientScript="False"
                        Display="Dynamic"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorYear"
                    runat="server"
                    ErrorMessage="Possible values: 10, 15, 20, 30, and 40."
                    ControlToValidate="TextYear"
                    ValidationExpression="(10)|(15)|(20)|(30)|(40)"
                    EnableClientScript="false"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Periods per year:</td>
            <td>
                &nbsp;&nbsp;
                <asp:DropDownList ID="DDperiod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDperiod_SelectedIndexChanged">
                    <asp:ListItem Value="12">Monthly</asp:ListItem>
                    <asp:ListItem Value="24">Semi-monthly</asp:ListItem>
                    <asp:ListItem Value="52">Weekly</asp:ListItem>
                </asp:DropDownList></td>
        </tr>

        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Buttoncalculate" runat="server" Text="Calculate" OnClick="Buttoncalculate_Click" Width="100px" />&nbsp;&nbsp;
                            <asp:Button ID="Buttonclear" runat="server" OnClick="Buttonclear_Click" Text="Clear" Width="100px" />
                &nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBoxCumulative" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBoxCumulative_Checked" Text="Payment Schedule" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; color: #FFFFFF; background-color: #0072BB;">Result
            </td>
        </tr>
        <tr>
            <td>Loan Amount:</td>
            <td>
                <asp:TextBox ID="TextLoanAmt" runat="server" ForeColor="Black" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td>Payment per period:</td>
            <td>
                <asp:TextBox ID="TextPayment" runat="server" ForeColor="Black" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <asp:Table ID="TableSchedule" runat="server" BorderStyle="Solid" Width="100%" GridLines="Both">
                </asp:Table>

            </td>
        </tr>
    </table>
</asp:Content>


