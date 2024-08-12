<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vaccine.aspx.cs" Inherits="hospitalWebsite.vaccine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Hospital Data</h1>
            <asp:GridView ID="gridService" runat="server" AutoGenerateColumns="False" DataKeyNames="HospitalID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="HospitalID" HeaderText="HospitalID" ReadOnly="True" InsertVisible="False" SortExpression="HospitalID"></asp:BoundField>
                    <asp:BoundField DataField="HospitalName" HeaderText="HospitalName" SortExpression="HospitalName"></asp:BoundField>
                    <asp:BoundField DataField="HospitalLicense" HeaderText="HospitalLicense" SortExpression="HospitalLicense"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                </Columns>
</asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString4 %>" ProviderName="<%$ ConnectionStrings:HospitalConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Hospital]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
