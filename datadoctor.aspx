<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datadoctor.aspx.cs" Inherits="hospitalWebsite.datadoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Vaccine Details </h1>
            <asp:GridView ID="gridService" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="VaccineID">
                <Columns>
                    <asp:BoundField DataField="VaccineID" HeaderText="VaccineID" ReadOnly="True" InsertVisible="False" SortExpression="VaccineID"></asp:BoundField>
                    <asp:BoundField DataField="Child_Name" HeaderText="Child_Name" SortExpression="Child_Name"></asp:BoundField>
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age"></asp:BoundField>
                    <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight"></asp:BoundField>
                    <asp:BoundField DataField="FatherName" HeaderText="FatherName" SortExpression="FatherName"></asp:BoundField>
                    <asp:BoundField DataField="MotherName" HeaderText="MotherName" SortExpression="MotherName"></asp:BoundField>
                    <asp:BoundField DataField="fatherphone" HeaderText="fatherphone" SortExpression="fatherphone"></asp:BoundField>
                    <asp:BoundField DataField="motherphone" HeaderText="motherphone" SortExpression="motherphone"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="local" HeaderText="local" SortExpression="local"></asp:BoundField>
                    <asp:BoundField DataField="permanent" HeaderText="permanent" SortExpression="permanent"></asp:BoundField>
                    <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
                    <asp:BoundField DataField="Vaccine" HeaderText="Vaccine" SortExpression="Vaccine"></asp:BoundField>
                    <asp:BoundField DataField="hospital" HeaderText="hospital" SortExpression="hospital"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString8 %>" ProviderName="<%$ ConnectionStrings:HospitalConnectionString8.ProviderName %>" SelectCommand="SELECT * FROM [vaccine]"></asp:SqlDataSource>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            

        </div>
    </form>
</body>
</html>
