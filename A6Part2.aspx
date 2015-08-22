@@ -0,0 +1,179 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A6Part2.aspx.cs" Inherits="A6Part2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Assignment 6 Part 2</title>
     <link href="Style/StyleSheetA4.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
       <h2>Part 2: Proximity Search Page</h2>
        <h3>Proximity Search Critiria:</h3>
 <table>
            <tr>
                <td>
                    Maximun Arking Price
                </td>
                <td>

                    <asp:TextBox ID="TextBoxaskprice" runat="server" Text="250000"></asp:TextBox>
                    
                    <asp:CompareValidator ID="CompareValidatoraskprice" runat="server" 
                        ErrorMessage="Asking Price must be currency." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxaskprice"
                        Operator="DataTypeCheck"
                        Type="Currency"
                        EnableClientScript="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Minimum number of bedrooms
                </td>
                <td>

                    <asp:TextBox ID="TextBoxnobdrms" runat="server" Text="3"></asp:TextBox>
                  
                    <asp:CompareValidator ID="CompareValidatornobdrms" runat="server" 
                        ErrorMessage="bedrooms must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnobdrms"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Minimum number of bathrooms
                </td>
                <td>

                    <asp:TextBox ID="TextBoxnobathrms" runat="server" Text="1"></asp:TextBox>
                    
                    <asp:CompareValidator ID="CompareValidatornobathrms" runat="server" 
                        ErrorMessage="bathrooms must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnobathrms"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                </td>
            </tr>
             <tr>
                <td>
                    Minimum Square feet
                </td>
                <td>

                    <asp:TextBox ID="TextBoxsqft" runat="server" Text="1500"></asp:TextBox>
                   
                    <asp:CompareValidator ID="CompareValidatorsqft" runat="server" 
                        ErrorMessage="Square feet must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxsqft"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                </td>
            </tr>          
             <tr>
                <td>
                    Minimum Garage size
                </td>
                <td>

                    <asp:TextBox ID="TextBoxgaragesize" runat="server" Text="1"></asp:TextBox>
                   
                    <asp:CompareValidator ID="CompareValidatorgaragesize" runat="server" 
                        ErrorMessage="Garage size must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxgaragesize"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                </td>
             </tr>
            <tr>
                <td>
                    Mountain View
                </td>
                <td>

                    <asp:CheckBox ID="CheckBoxmtnview" runat="server" 
                        Checked="false" OnCheckedChanged="CheckBoxmtnview_CheckedChanged" />

                </td>
            </tr>
            <tr>
                <td>
                    Pool
                </td>
                <td>

                    <asp:CheckBox ID="CheckBoxpool" runat="server" 
                        OnCheckedChanged="CheckBoxpool_CheckedChanged" />

                </td>
            </tr>  
             <tr>
                <td>
                  The number of rows
                </td>
                <td>

                    <asp:TextBox ID="TextBoxnorow" runat="server" Text="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatornorow" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnorow"
                        ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatornorow" runat="server" 
                        ErrorMessage="The number of rows must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnorow"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                    <asp:RangeValidator ID="RangeValidatornorow" runat="server" 
                        ErrorMessage="Range 1 - 10 pages." 
                        ForeColor="Red" 
                        MaximumValue="10" MinimumValue="1"
                        Type ="Integer"
                        ControlToValidate="TextBoxnorow"
                        EnableClientScript="True"></asp:RangeValidator>
                    
                </td>
            </tr> 
            <tr>
                <td colspan="2">
                    <asp:Button ID="Buttonsearch" runat="server" Text="Search" OnClick="Buttonsearch_Click" />                 
                </td>
             </tr>
        </table>
        <div>

            <asp:ValidationSummary ID="ValidationSummary" runat="server" ForeColor="Red" />

        </div>
 
        Property Detail:
        <asp:GridView ID="gvProperty" runat="server" AllowPaging="false" AllowSorting="false" 
            AutoGenerateColumns="False" DataKeyNames="propno" DataSourceID="SqlDataSourceProperty" Width="400px">
            <Columns>
                <asp:BoundField DataField="propno" HeaderText="propno" InsertVisible="False" ReadOnly="True" SortExpression="propno" />
                <asp:BoundField DataField="distance" HeaderText="distance" SortExpression="distance" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceProperty" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" >
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
