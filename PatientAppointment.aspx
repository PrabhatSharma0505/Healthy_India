<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAppointment.aspx.cs" Inherits="hospitalWebsite.PatientAppointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vaccine_Bokking</title>
    <style>
        *{
            margin: 0px;
            padding: 0px;
            
        }
        
        #head{
            background-color: #008F7A;
        }
        .head{
            display: flex;
            justify-content: center;
            color: white;
        }
    
    body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        form {
            max-width: 500px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            color: #333;
        }
        input[type="text"],
        input[type="number"],
        input[type="email"],
        select,
        .button {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #f9f9f9;
        }
        input[type="radio"] {
            margin-right: 10px;
            margin-bottom: 30px;
            
        }
       
        .button {
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #0056b3;
        }
        select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 10 5' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M5 0l5 5H0z' fill='%23000000'/%3E%3C/svg%3E");
            background-repeat: no-repeat;
            background-position: right 15px center;
            background-size: 10px 5px;
            padding-right: 25px;
        }
        span{
            font-size: large;
        }
       
    </style>
</head>
<body>
     <div id="head">
        <h1 class="head">Book Vaccine For your Children</h1>
    </div>
    <div id="formdiv" >
        <form Id="form1" runat="server">
            <label for="childName">Child Name </label>
            <asp:TextBox CssClass="input" runat="server" ID="childName" placeholder="Enter Child Name" MaxLength="15"></asp:TextBox>
            <label for="age">Age </label>
          <asp:TextBox CssClass="input" runat="server" ID="Age"  MaxLength="2"></asp:TextBox>
            <br>
            <label for="weight">Child weight</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox1" placeholder="Enter your Weight" MaxLength="2"></asp:TextBox>
            
            <br>
            <label for="fathername">Father Name</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox2" placeholder="Enter Father Name" MaxLength="15"></asp:TextBox>
            <br>
            <label for="mothername">Mother Name</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox3" placeholder="Enter Mother Name" MaxLength="15"></asp:TextBox>
            <br>
            <label for="faterphone">Father Phone Number</label>
           <asp:TextBox CssClass="input" runat="server" ID="TextBox4" placeholder="Enter Father Phone Number" MaxLength="15"></asp:TextBox>
            <br>
            <label for="motherphone">Mother Phone Number</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox5" placeholder="Enter Mother Phone Number" MaxLength="15"></asp:TextBox>
            <br>
            <label for="email">Email Id</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox6" placeholder="Enter Email Id" MaxLength="30"></asp:TextBox>
            <br>
            <label for="local">Local Address</label>
            <asp:TextBox CssClass="input" runat="server" ID="TextBox7" placeholder="Enter Local Address" MaxLength="30"></asp:TextBox>
            <br>
            <label for="permanent">Permanent Address</label>
           <asp:TextBox CssClass="input" runat="server" ID="TextBox8" placeholder="Enter Permanent Address" MaxLength="30"></asp:TextBox>
            <br>
            <label for="Gender">Gender</label>
           
            <asp:DropDownList ID="Gender" runat="server" CssClass="input" required>
                <asp:ListItem Text="Select your Gender" Value="" />
                <asp:ListItem Text="Male" Value="Male" />
                <asp:ListItem Text="Female" Value="Female" />
            </asp:DropDownList>

            <label for="vaccineName">Choose a Vaccine</label>
             <asp:DropDownList ID="vaccineName" runat="server" CssClass="input" required>
    <asp:ListItem Text="Select Vaccine" Value=""></asp:ListItem>
    <asp:ListItem Text="Hepatitis B Dose-1" Value="Hepatitis B Dose-1"></asp:ListItem>
    <asp:ListItem Text="Hepatitis B Dose-2" Value="Hepatitis B Dose-2"></asp:ListItem>
    <asp:ListItem Text="Hepatitis B Dose-3" Value="Hepatitis B Dose-3"></asp:ListItem>
    <asp:ListItem Text="Respiratory Syncytial Virus (RSV)" Value="Respiratory Syncytial Virus (RSV)"></asp:ListItem>
    <asp:ListItem Text="Rotavirus Dose-1" Value="Rotavirus Dose-1"></asp:ListItem>
    <asp:ListItem Text="Rotavirus Dose-2" Value="Rotavirus Dose-2"></asp:ListItem>
    <asp:ListItem Text="Rotavirus Dose-3" Value="Rotavirus Dose-3"></asp:ListItem>
    <asp:ListItem Text="DTaP Dose-1" Value="DTaP Dose-1"></asp:ListItem>
    <asp:ListItem Text="DTaP Dose-2" Value="DTaP Dose-2"></asp:ListItem>
    <asp:ListItem Text="DTaP Dose-3" Value="DTaP Dose-3"></asp:ListItem>
    <asp:ListItem Text="DTaP Dose-4" Value="DTaP Dose-4"></asp:ListItem>
    <asp:ListItem Text="Hib Dose-1" Value="Hib Dose-1"></asp:ListItem>
    <asp:ListItem Text="Hib Dose-2" Value="Hib Dose-2"></asp:ListItem>
    <asp:ListItem Text="Hib Dose-3" Value="Hib Dose-3"></asp:ListItem>
    <asp:ListItem Text="Hib Dose-4" Value="Hib Dose-4"></asp:ListItem>
    <asp:ListItem Text="Pneumococcal Dose-1" Value="Pneumococcal Dose-1"></asp:ListItem>
    <asp:ListItem Text="Pneumococcal Dose-2" Value="Pneumococcal Dose-2"></asp:ListItem>
    <asp:ListItem Text="Pneumococcal Dose-3" Value="Pneumococcal Dose-3"></asp:ListItem>
    <asp:ListItem Text="Pneumococcal Dose-4" Value="Pneumococcal Dose-4"></asp:ListItem>
    <asp:ListItem Text="Polio Dose-1" Value="Polio Dose-1"></asp:ListItem>
    <asp:ListItem Text="Polio Dose-2" Value="Polio Dose-2"></asp:ListItem>
    <asp:ListItem Text="Polio Dose-3" Value="Polio Dose-3"></asp:ListItem>
    <asp:ListItem Text="Polio Dose-4" Value="Polio Dose-4"></asp:ListItem>
    <asp:ListItem Text="COVID-19" Value="COVID-19"></asp:ListItem>
    <asp:ListItem Text="Influenza/Flu" Value="Influenza/Flu"></asp:ListItem>
    <asp:ListItem Text="MMR Dose-1" Value="MMR Dose-1"></asp:ListItem>
    <asp:ListItem Text="MMR Dose-2" Value="MMR Dose-2"></asp:ListItem>
    <asp:ListItem Text="Chickenpox Dose-1" Value="Chickenpox Dose-1"></asp:ListItem>
    <asp:ListItem Text="Chickenpox Dose-2" Value="Chickenpox Dose-2"></asp:ListItem>
    <asp:ListItem Text="Hepatitis A Dose-1" Value="Hepatitis A Dose-1"></asp:ListItem>
    <asp:ListItem Text="Hepatitis A Dose-2" Value="Hepatitis A Dose-2"></asp:ListItem>
</asp:DropDownList>

              <br>
              <label for="Hospital">Hospital<label>
              <asp:DropDownList ID="Hospital" runat="server" CssClass="input" required>
    <asp:ListItem Text="Select your Hospital" Value=""></asp:ListItem>
    <asp:ListItem Text="Indira IVF Fertility Center" Value="Indira IVF Fertility Center"></asp:ListItem>
    <asp:ListItem Text="Promhex Multispecialty Hospital" Value="Promhex Multispecialty Hospital"></asp:ListItem>
    <asp:ListItem Text="Motherhood Hospital" Value="Motherhood Hospital"></asp:ListItem>
    <asp:ListItem Text="Sharda Hospital" Value="Sharda Hospital"></asp:ListItem>
    <asp:ListItem Text="Cloudnine Hospital" Value="Cloudnine Hospital"></asp:ListItem>
    <asp:ListItem Text="Metro Hospitals & Heart Institute" Value="Metro Hospitals & Heart Institute"></asp:ListItem>
</asp:DropDownList>

             <asp:Button runat="server" ID="Login" CssClass="button" Text="Book the Vaccinee" OnClick="Login_Click" />
        

        </form>
    </div>
      <script>
          function validateForm() {
              var childName = document.getElementById('childName').value.trim();
              var age = document.getElementById('Age').value.trim();
              var weight = document.getElementById('TextBox1').value.trim();
              var fatherName = document.getElementById('TextBox2').value.trim();
              var motherName = document.getElementById('TextBox3').value.trim();
              var fatherPhone = document.getElementById('TextBox4').value.trim();
              var motherPhone = document.getElementById('TextBox5').value.trim();
              var email = document.getElementById('TextBox6').value.trim();
              var gender = document.getElementById('Gender').value;
              var vaccine = document.getElementById('vaccineName').value;
              var hospital = document.getElementById('Hospital').value;

              if (childName === '') {
                  alert('Please enter child name.');
                  return false;
              }
              if (age === '') {
                  alert('Please enter age.');
                  return false;
              }
              if (weight === '') {
                  alert('Please enter child weight.');
                  return false;
              }
              if (fatherName === '') {
                  alert('Please enter father name.');
                  return false;
              }
              if (motherName === '') {
                  alert('Please enter mother name.');
                  return false;
              }
              if (fatherPhone === '') {
                  alert('Please enter father phone number.');
                  return false;
              }
              if (motherPhone === '') {
                  alert('Please enter mother phone number.');
                  return false;
              }
              if (email === '') {
                  alert('Please enter email.');
                  return false;
              }
              // Add validation for email format
              if (!validateEmail(email)) {
                  alert('Invalid email format.');
                  return false;
              }
              if (gender === '') {
                  alert('Please select gender.');
                  return false;
              }
              if (vaccine === '') {
                  alert('Please choose a vaccine.');
                  return false;
              }
              if (hospital === '') {
                  alert('Please select hospital.');
                  return false;
              }

              return true;
          }

          function validateEmail(email) {
              var re = /\S+@\S+\.\S+/;
              return re.test(email);
          }
        </script>
</body>
</html>
