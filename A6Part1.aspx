@@ -0,0 +1,177 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A6Part1.aspx.cs" Inherits="A6Part1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Assignment 6 Part 1</title>
     <link href="Style/StyleSheetA4.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
       <h2>Part 1: GridView with an Extended Limit Search Criteria</h2>
        <h3>Search Critiria:</h3>
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
            AutoGenerateColumns="False" DataKeyNames="propno" DataSourceID="SqlDataSourceProperty">
            <Columns>
                <asp:BoundField DataField="propno" HeaderText="propno" InsertVisible="False" ReadOnly="True" SortExpression="propno" />
                <asp:BoundField DataField="street" HeaderText="street" SortExpression="street" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                <asp:BoundField DataField="zip" HeaderText="zip" SortExpression="zip" />
                <asp:BoundField DataField="sqft" HeaderText="sqft" SortExpression="sqft" />
                <asp:BoundField DataField="nobdrms" HeaderText="nobdrms" SortExpression="nobdrms" />
                <asp:BoundField DataField="nobathrms" HeaderText="nobathrms" SortExpression="nobathrms" />
                <asp:BoundField DataField="garagesize" HeaderText="garagesize" SortExpression="garagesize" />
                <asp:CheckBoxField DataField="pool" HeaderText="pool" SortExpression="pool" />          
                <asp:CheckBoxField DataField="mtnview" HeaderText="mtnview" SortExpression="mtnview" />
                <asp:BoundField DataField="askprice" HeaderText="askprice" SortExpression="askprice" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="true" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceProperty" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" >
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="propno,visittime" DataSourceID="SqlDataSourceShowing" Height="50px" Width="500px">
            <Fields>
                <asp:BoundField DataField="propno" HeaderText="propno" ReadOnly="True" SortExpression="propno" />
                <asp:BoundField DataField="visittime" HeaderText="visittime" ReadOnly="True" SortExpression="visittime" />
                <asp:BoundField DataField="agent" HeaderText="agent" SortExpression="agent" />
                <asp:BoundField DataField="customer" HeaderText="customer" SortExpression="customer" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSourceShowing" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [showing] WHERE ([propno] = ?)">
            <SelectParameters>
                <asp:ControlParameter ControlID="gvProperty" Name="propno" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
