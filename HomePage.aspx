 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="hospitalWebsite.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}
.head_1{
    color:white;
    text-align:center;
     position: relative;
  animation-name: example;
  animation-duration: 4s;
    animation-iteration-count: infinite;

  animation-direction: normal; 
}
        @keyframes example {
            0% {
                background-color: red;
                left: 50px;
                top: 0px;
            }

            25% {
                background-color: blue;
                left: 350px;
                top: 0px;
            }
            50%{
                 background-color: green;
                left: 700px;
              top: 0px;
            }
            100%{
     background-color: palevioletred;
    left: 900px;
        top: 0px;
            }
        }
        span{
            color:red;
        }
        .home_baneer{
            margin-top:23px;
        }
        .box_1{
           position: absolute;
           top:177px;
           margin-left: auto;
          margin-right: auto;
          left: 0;
           right: 0;
           text-align: center;
           height:132px;
           width:359px;
          background-color:white;
        }
        .column {
          float: left;
        width: 30%;
        margin:12px;
      padding: 10px;
      height: 435px; /* Should be removed. Only for demonstration */
  box-sizing:border-box;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.button {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 333px;
  transition: all 0.5s;
  cursor: pointer;
  margin:40px;
}

.button a {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button a:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover a {
  padding-right: 25px;
}

.button:hover a:after {
  opacity: 1;
  right: 0;
}
.avatar {
  vertical-align:central;
  width: 150x;
  height: 150px;
  border-radius: 50%;
  padding:32px;
}
h2{
    text-align:center;
}
footer {

  background-color: #333;

  color: #fff;

  text-align: center;

  padding: 1rem 0;

}
a{
    text-decoration:none;
    color:black;
}
.home_baneer img{
    width:100%;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <ul>
  <li><h1 class="head_1">Hea<span>LT</span>hy In<span>D</span>ia</h1></li>
</ul>
        </div>
        <div class="home_baneer">
            <img  src="https://www.fortishealthcare.com/drupal-data/styles/banner_image/azblob/2023-03/New-Web-Banner-03.jpg?itok=cxkOaBxp" alt="Banner_homeScreen">
        <div class="box_1">
            <h1>Healthcare for Good </h1>
            <h3>Today. Tomorrow. Always</h3>
        </div>
         </div>
        <div class="row">
  <div class="column" style="background-color:#aaa;">
      <img src="data:image/jpeg;base64,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" alt="Avatar" class="avatar">

    <h2>Admin Login</h2>
    <button class="button"><a href="AdminPage.aspx">Click For Login</a></button>
  </div>
  <div class="column" style="background-color:#bbb;">
      <img src="data:image/jpeg;base64,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" alt="Avatar" class="avatar">

    <h2>Hospital Login</h2>
        <button class="button"><a href="Hospital_login.aspx">Click For Login</a></button>
  </div>
            <div class="column" style="background-color:#ccc;">
                <img src="data:image/png;base64,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" alt="Avatar" class="avatar">
    <h2>User Login</h2>
    <button class="button"><a href="Patient.aspx">Click For Login</a></button>
  </div>
</div>
         <footer>

    <p>&copy; 2024 Prabhat and Prabhat team</p>

  </footer>
        </div>
    </form>
</body>
</html>
