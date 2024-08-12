<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospital_Signup.aspx.cs" Inherits="hospitalWebsite.Hospital_Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hospital SignUp</title>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

.container {
  height: 100vh;
  width: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
  background-image: radial-gradient(
    circle farthest-corner at 10% 20%,
    rgba(253, 101, 133, 1) 0%,
    rgba(255, 211, 165, 1) 90%
  );
}

.card {
  border-radius: 10px;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
  width: 500px;
  height: 430px;
  background-color: #ffffff;
  padding: 10px 30px;
}

.card_title {
  text-align: center;
  padding: 10px;
}

.card_title h1 {
  font-size: 26px;
  font-weight: bold;
}

.form input {
  margin: 10px 0;
  width: 100%;
  background-color: #e2e2e2;
  border: none;
  outline: none;
  padding: 12px 20px;
  border-radius: 4px;
}

.form .button {
  background-color: #4796ff;
  color: #ffffff;
  font-size: 16px;
  outline: none;
  border-radius: 5px;
  border: none;
  padding: 8px 15px;
  width: 100%;
}
.button:hover{
    cursor:pointer;
    background-color:red;

}

    </style>
</head>
<body>
    <div class="container">
      <div class="card">
        <div class="card_title">
          <h1>Create Hospital Account</h1>
          <span>Already have an account? <a href="Hospital_login.aspx">Login</a></span>
        </div>
        <div class="form">
        <form id="form1" runat="server">
         <asp:TextBox CssClass="input" runat="server" ID="HospitalName" placeholder=" Enter Hospital Name" MaxLength="20"></asp:TextBox>
          <asp:TextBox CssClass="input" runat="server" ID="HospitalLicense" placeholder="Enter Your Hospital License Number" MaxLength="10"></asp:TextBox>
          <asp:TextBox CssClass="input" runat="server" ID="Email" placeholder="Enter Your Email-Id"></asp:TextBox>
            <asp:TextBox CssClass="input" runat="server" ID="Password" TextMode="Password" placeholder="Enter Password" MaxLength="20"></asp:TextBox>
            <asp:Button runat="server" ID="SignUp" CssClass="button" Text="Sign Up" OnClick="SignUp_Click" />
          </form>
        </div>
      </div>
    </div>
</body>
</html>
