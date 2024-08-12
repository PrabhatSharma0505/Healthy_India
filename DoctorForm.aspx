<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorForm.aspx.cs" Inherits="hospitalWebsite.DoctorForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor Information Form</title>
       <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 500px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .message {
    color: green;
    font-weight: bold;
    display: none;
}

    </style>
</head>
<body>
    <form id="doctorForm" runat="server">
        <div class="container">
            <h2>Doctor Information Form</h2>
            <div class="form-group">
                <label for="doctorName">Name of Doctor:</label>
                <asp:TextBox ID="doctorName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="specialization">Specialization/Department:</label>
                <asp:TextBox ID="specialization" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="calcification">Calcification:</label>
                <asp:TextBox ID="calcification" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="phoneNumber">Phone Number:</label>
                <asp:TextBox ID="phoneNumber" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="email">Email Address:</label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="message" Text="Data saved successfully!"></asp:Label>
            <div class="form-group">
                <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click" />
            </div>
        </div>
    </form>
</body>
</html>