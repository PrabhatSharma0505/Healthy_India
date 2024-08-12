<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datapatient.aspx.cs" Inherits="hospitalWebsite.datapatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Data</title>
    <style>
        h1{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Patient Data</h1>

        <asp:GridView ID="gridService" runat="server" AutoGenerateColumns="False" DataKeyNames="AppointmentID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="gridService_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="AppointmentID" HeaderText="AppointmentID" ReadOnly="True" InsertVisible="False" SortExpression="AppointmentID"></asp:BoundField>
                <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber"></asp:BoundField>
                <asp:BoundField DataField="AppointmentDate" HeaderText="AppointmentDate" SortExpression="AppointmentDate"></asp:BoundField>
                <asp:BoundField DataField="AppointmentTime" HeaderText="AppointmentTime" SortExpression="AppointmentTime"></asp:BoundField>
                <asp:BoundField DataField="Doctor" HeaderText="Doctor" SortExpression="Doctor"></asp:BoundField>
                <asp:BoundField DataField="Comments" HeaderText="Comments" SortExpression="Comments"></asp:BoundField>
            </Columns>
</asp:GridView>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString9 %>" ProviderName="<%$ ConnectionStrings:HospitalConnectionString9.ProviderName %>" SelectCommand="SELECT * FROM [DoctorAppointments]"></asp:SqlDataSource>
    </form>
</body>
</html>
