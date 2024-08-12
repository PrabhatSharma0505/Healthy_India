<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientdoctorbooking.aspx.cs" Inherits="hospitalWebsite.patientdoctorbooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Doctor Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            margin-top: 10px;
        }

        input, select, textarea {
            margin-top: 5px;
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 4px;
        }

        #comments {
            resize: vertical;
        }

        #btnBookAppointment {
            margin-top: 20px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

       #btnBookAppointment:hover {
            background-color: #45a049;
        }
  </style>
</head>

<body>
     <form id="form1" runat="server" onsubmit="return validateForm()">
        <div class="form-container">
            <h2>Doctor Appointment Form</h2>
            <asp:TextBox ID="name" runat="server" placeholder="Full Name" required></asp:TextBox>
            <asp:TextBox ID="email" runat="server" placeholder="Email" type="email" required></asp:TextBox>
            <asp:TextBox ID="phone" runat="server" placeholder="Phone Number" type="tel" pattern="[0-9]{10}" required></asp:TextBox>
            <asp:TextBox ID="date" runat="server" placeholder="Appointment Date" type="date" required></asp:TextBox>
            <asp:TextBox ID="time" runat="server" placeholder="Appointment Time" type="time" required></asp:TextBox>
            <asp:DropDownList ID="doctor" runat="server" required>
                <asp:ListItem Text="Select Doctor" Value="" />
                <asp:ListItem Text="Dr. Smith" Value="Dr. Smith" />
                <asp:ListItem Text="Dr. Johnson" Value="Dr. Johnson" />
                <asp:ListItem Text="Dr. Brown" Value="Dr. Brown" />
            </asp:DropDownList>
            <asp:TextBox ID="comments" runat="server" placeholder="Comments" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="btnBookAppointment" runat="server" Text="Book Appointment" OnClick="btnBookAppointment_Click" />
        </div>
    </form>

    <script>
        function validateForm() {
            var name = document.getElementById('<%= name.ClientID %>').value;
            var email = document.getElementById('<%= email.ClientID %>').value;
            var phone = document.getElementById('<%= phone.ClientID %>').value;
            var date = document.getElementById('<%= date.ClientID %>').value;
            var time = document.getElementById('<%= time.ClientID %>').value;
            var doctor = document.getElementById('<%= doctor.ClientID %>').value;

            if (name.trim() === '') {
                alert('Please enter your full name.');
                return false;
            }
            if (email.trim() === '') {
                alert('Please enter your email address.');
                return false;
            }
            if (phone.trim() === '') {
                alert('Please enter your phone number.');
                return false;
            }
            if (date.trim() === '') {
                alert('Please select the appointment date.');
                return false;
            }
            if (time.trim() === '') {
                alert('Please select the appointment time.');
                return false;
            }
            if (doctor.trim() === '') {
                alert('Please select the doctor.');
                return false;
            }

            // Additional validation logic can be added here if needed

            return true; // Submit the form if all validations pass
        }
    </script>
</body>
</html>