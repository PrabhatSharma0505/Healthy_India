<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdata.aspx.cs" Inherits="hospitalWebsite.pdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Patient Data</h1>
            <asp:GridView ID="gridService" runat="server" AutoGenerateColumns="False" DataKeyNames="userid" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="gridService_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" InsertVisible="False" SortExpression="userid"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                    <asp:BoundField DataField="new_password" HeaderText="new_password" SortExpression="new_password"></asp:BoundField>
                </Columns>
</asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString2 %>" ProviderName="<%$ ConnectionStrings:HospitalConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Patient]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
