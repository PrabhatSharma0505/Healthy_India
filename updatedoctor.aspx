<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatedoctor.aspx.cs" Inherits="hospitalWebsite.updatedoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Doctor Data</h1>
            <asp:GridView ID="gridService" runat="server" AutoGenerateColumns="False" DataKeyNames="DoctorID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="DoctorID" HeaderText="DoctorID" ReadOnly="True" InsertVisible="False" SortExpression="DoctorID"></asp:BoundField>
                    <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName"></asp:BoundField>
                    <asp:BoundField DataField="Specialization" HeaderText="Specialization" SortExpression="Specialization"></asp:BoundField>
                    <asp:BoundField DataField="Calcification" HeaderText="Calcification" SortExpression="Calcification"></asp:BoundField>
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                </Columns>
</asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString10 %>" ProviderName="<%$ ConnectionStrings:HospitalConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM [Doctors]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
