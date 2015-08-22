@@ -0,0 +1,56 @@
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="A5Part1.aspx.cs" Inherits="A5Part1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 5 Part 1</title>
     <link href="Style/StyleSheetA4.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h2> Part1: GridView with a Simple Search Criteria</h2>
        <br />
        Property Number :
        <asp:DropDownList ID="DropDownListProperty" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="propno" DataValueField="propno">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [propno] FROM [property]"></asp:SqlDataSource>
        <br />
        showing rows with the property number matching the selected property number in the drop down list box.<br />
        <asp:GridView ID="GridViewShowing" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="propno" DataSourceID="SqlDataSourceShowing" Width="500px"
             OnRowUpdated="GV1_rowupdated">
            <Columns>
                <asp:BoundField DataField="propno" HeaderText="propno" ReadOnly="True" SortExpression="propno" />
                <asp:BoundField DataField="visittime" HeaderText="visittime" ReadOnly="True" SortExpression="visittime" />
                <asp:BoundField DataField="agent" HeaderText="agent" SortExpression="agent" />
                <asp:BoundField DataField="customer" HeaderText="customer" SortExpression="customer" />
                <asp:BoundField DataField="comments" HeaderText="comments" SortExpression="comments" />
                <asp:CommandField ButtonType="Button" ShowEditButton ="True" CausesValidation="false" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceShowing" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [showing] WHERE ([propno] = @original_propno)" 
            UpdateCommand="UPDATE [showing] SET [agent] = @agent, [customer] = @customer, [comments] = @comments 
            WHERE ([propno] = @original_propno) AND ([visittime] = @original_visittime)" 
            ConflictDetection="CompareAllValues">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownListProperty" Name="original_propno" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="agent" Type="String" />
                <asp:Parameter Name="customer" Type="String" />
                <asp:Parameter Name="comments" Type="String" />
                <asp:Parameter Name="original_propno" Type="Int32" />
                <asp:Parameter Name="orinigal_visittime" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
