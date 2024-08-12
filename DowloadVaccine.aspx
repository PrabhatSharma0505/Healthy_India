<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DowloadVaccine.aspx.cs" Inherits="hospitalWebsite.DowloadVaccine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Vaccine Appointment</title>
    <style>
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
        }
        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .center {
         
           margin: auto;
           width: 50%;
           padding: 10px;
}
        img{
             display: block;
           margin-left: auto;
  margin-right: auto;
  width: 50%;
        }
    </style>
</head>
<body>
     <form id="appointmentForm" runat="server">
       <div class="container">
            <h2>Verify Your Email-Id Send the Verification Mail </h2>
            <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <asp:Button runat="server" ID="btnBookAppointment" Text="Verify Your Email" CssClass="form-control" OnClick="btnBookAppointment_Click" />
            </div>
            
            <div class="form-group">
                <asp:Literal ID="litMessage" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
    <div class="center">
        <img src="image/qr1.png" alt="scanner" width="300" height="300">
        <h1>Thank you for Booking Vaccine..</h1>
    </div>
   <h6>Note:We Will Send you the Vaccine Certificate at your Mail..</h6>
</body>
</html>
