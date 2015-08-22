@@ -0,0 +1,249 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A5Part2.aspx.cs" Inherits="A5Part2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 5 Part 2</title>
     <link href="Style/StyleSheetA4.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>    
       <h2>Part 2: Master/Detail Web Pages with Search Critiria</h2><br />
        <h3>Search Critiria:</h3>
 <table>
            <tr>
                <td>
                    Maximun Arking Price
                </td>
                <td>

                    <asp:TextBox ID="TextBoxaskprice" runat="server" Text="250000"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoraskprice" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxaskprice"
                        ></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatornobdrms" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnobdrms"
                        ></asp:RequiredFieldValidator>
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
                     <asp:RequiredFieldValidator ID="RequiredFieldValidatornobathrms" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxnobathrms"
                        ></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorsqft" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxsqft"
                        ></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorgaragesize" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxgaragesize"
                        ></asp:RequiredFieldValidator>
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
                  Minimum number of showings
                </td>
                <td>

                    <asp:TextBox ID="TextBoxshowing" runat="server" Text="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorshowing" runat="server" 
                        ErrorMessage="Required." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxshowing"
                        ></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorshowing" runat="server" 
                        ErrorMessage="The number of showings must be integer." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxshowing"
                        Operator="DataTypeCheck"
                        Type="integer"
                        EnableClientScript="True"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidatorgreather" runat="server" 
                        ErrorMessage="The number of showings greather than 0." 
                        ForeColor="Red"
                        ControlToValidate="TextBoxshowing"
                        Operator="GreaterThan"
                        ValueToCompare="0"
                        EnableClientScript="True"></asp:CompareValidator>
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
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
            SelectCommand="SELECT property.propno, street, city, state, zip, nobdrms, nobathrms, sqft, garagesize, mtnview, pool, askprice 
FROM property, showing 
WHERE askprice &lt;= ? AND nobdrms &gt;= ? AND nobathrms &gt;= ? AND sqft &gt;= ? 
AND garagesize &gt;= ? AND mtnview = ? AND pool = ? 
AND property.propno = showing.propno 
GROUP BY property.propno, street, city, state, zip, nobdrms,sqft, nobathrms, garagesize, mtnview, pool, askprice 
HAVING count(*) &gt;= showing " 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" >
            <SelectParameters>
                <asp:QueryStringParameter Name="askprice" QueryStringField="askprice" Type="Decimal" />
                <asp:QueryStringParameter Name="nobdrms" QueryStringField="nobdrms" Type="Byte" />
                <asp:QueryStringParameter Name="nobathrms" QueryStringField="nobathrms" Type="Byte" />
                <asp:QueryStringParameter Name="sqft" QueryStringField="sqft" Type="Int32" />
                <asp:QueryStringParameter Name="garagesize" QueryStringField="garagesize" Type="Byte" />
                <asp:ControlParameter Name="mtnview" ControlID="CheckBoxmtnview" PropertyName="Checked" Type="Boolean"/>               
                <asp:ControlParameter Name="pool" ControlID="CheckBoxpool" PropertyName="Checked" Type="Boolean"/>
                <asp:QueryStringParameter Name="showing" QueryStringField="showing" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        Showing Detail:<asp:DetailsView ID="DetailsView1" runat="server" 
            AllowPaging="True" AllowSorting="True" 
            DataKeyNames="propno,visittime" DataSourceID="SqlDataSourceShowing" Height="50px" Width="500px" 
            AutoGenerateRows="False">
            <Fields>
                <asp:BoundField DataField="propno" HeaderText="propno" ReadOnly="True" SortExpression="propno" />
                <asp:BoundField DataField="visittime" HeaderText="visittime" ReadOnly="True" SortExpression="visittime" />
                <asp:BoundField DataField="agent" HeaderText="agent" SortExpression="agent" />
                <asp:BoundField DataField="customer" HeaderText="customer" SortExpression="customer" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSourceShowing" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [showing] WHERE ([propno] = ?)" >
            <SelectParameters>
                <asp:ControlParameter Name="propno" ControlID="GridView1" Type="Int32" 
                    PropertyName="SelectedValue"/>  
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
