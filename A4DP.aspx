@@ -0,0 +1,147 @@
﻿<%@ Page Title="Down Payment" Language="C#" MasterPageFile="~/MasterA4.master" AutoEventWireup="true" CodeFile="A4DP.aspx.cs" Inherits="A4DP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
    <title>Down payment</title>
    <link href="Style/StyleSheetA4.css" rel="stylesheet" />
    <style>
        .auto-style1 {
            width: 100%;
            text-align: left;
            background-color: #FFFFFF;
        }
        .auto-style2 {
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Selling Price:</td>
            <td>
                &nbsp;$
                <asp:TextBox ID="TextSellingPrice" runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="SPvaluecheck"
                    runat="server"
                    ErrorMessage="Selling price must be a number."
                    ControlToValidate="TextSellingPrice"
                    Operator="DataTypeCheck"
                    Type="Currency"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorSellingPrice"
                    runat="server"
                    ErrorMessage="Selling Price is required."
                    ControlToValidate="TextSellingPrice"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Annual Interest Rate:</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextAnnualIntRate" runat="server"></asp:TextBox>&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAIR"
                    runat="server"
                    ErrorMessage="Annual Interest Rate is required."
                    ControlToValidate="TextAnnualIntRate"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidatorAnnualIntRate"
                    runat="server"
                    ErrorMessage="Annual Interest rate must be value between 0.0 - 1.0"
                    ControlToValidate="TextAnnualIntRate"
                    MinimumValue="0.0"
                    MaximumValue="1.0"
                    Type="Double"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td class="auto-style2">Number of years:</td>
            <td>
                &nbsp;&nbsp;&nbsp;
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
            <td class="auto-style2">Periods per year:</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DDperiod" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDperiod_SelectedIndexChanged">
                    <asp:ListItem Value="12">Monthly</asp:ListItem>
                    <asp:ListItem Value="24">Semi-monthly</asp:ListItem>
                    <asp:ListItem Value="52">Weekly</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Payment per period:</td>
            <td>
                &nbsp;$
                <asp:TextBox ID="TextPayment" runat="server"></asp:TextBox>&nbsp;<asp:CompareValidator ID="Paymentvaluecheck"
                    runat="server"
                    ErrorMessage="Payment per period must be a number."
                    ControlToValidate="TextPayment"
                    Operator="DataTypeCheck"
                    Type="Currency"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPayment"
                    runat="server"
                    ErrorMessage="Payment per period is required."
                    ControlToValidate="TextPayment"
                    EnableClientScript="False"
                    Display="Dynamic"
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Buttoncalculate" runat="server" Text="Calculate" OnClick="Buttoncalculate_Click" Width="100px" />&nbsp;&nbsp;
               <asp:Button ID="Buttonclear" runat="server" OnClick="Buttonclear_Click" Text="Clear" Width="100px" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; color: #FFFFFF; background-color: #0072BB;">Result
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Down Payment:</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextDownPayment" runat="server" ForeColor="Black" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Loan Amount:</td>
            <td>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextLoanAmt" runat="server" ForeColor="Black" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
