<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientHomePage.aspx.cs" Inherits="hospitalWebsite.patientHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Home Page</title>
    <style>
        *{
    margin: 0;
    padding: 0;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
#head{
    background-color:#E0F4FD;
}
.header{
    display: flex;
}
.logo{
    padding: 8px 12px;
    height: 54px;
}
.navbar{
    margin: auto;
    width: 50%;
  padding: 10px;
}
.navbar ul{
    display: flex;
    list-style-type: none;
}
.navbar ul a{
    font: sans-serif;
    text-decoration: none;
    color: black;
    font-size:x-large;
}
.navbar ul li a:hover{
    background-color: green;
    border-radius: 12px;
    padding: 8px 18px;
    text-align: center;
    display: inline-block;
}

.navbar ul li{
    padding: 12px 14px;
    cursor: pointer;
}
/* .header .contact{
   background-color: rgb(37, 113, 205);
} */
.header .contact a{
  background-color: rgb(37, 113, 205);
  color: white;
  font: 1em sans-serif;
  text-decoration: none;
  border-radius: 12px;
  padding: 14px 21px;
  text-align: center;
  display: inline-block;
  margin: 9px 12px;
}
.header .contact a:hover{
    background-color: rgb(2, 175, 2);
    font-size: large;
}
#head #main{
    border: 0px ;
    height: 13.5cm;
}
#main .main_heading{
    display: inline-block;
    position:relative;
    margin-left: 136px;
    margin-top: 115px;
}
#main .main_heading h1{
    font-size: 54px;
}
#main .img_doctor_1{    
    display: inline-block;
    position: absolute;
    margin-left: 50px;
}
#main .img_doctor_1 .doctor{
    height:58vh;
}
#main .logo_icon{
    margin-top: 23px;
    margin-left: 161px;
}
#circle {
   
    border-radius: 50%;
    width: 50px;
    height: 50px;
    background-color: rgb(0, 255, 21);
    position: relative;
    animation-name: circle;
    animation-duration: 3s;
    animation-iteration-count: infinite;
    animation-direction: alternate-reverse;
    animation-timing-function: linear;
    opacity: 0.4;
}
@keyframes circle {
  0%{
    background-color: blue;
    left: 0px;
    top: 0px;
    opacity: 0.3;
  }
  50%{
    background-color: red;
    left: 80px;
    top: 0px;
    opacity: 0.3;
  }
  }
  /* About us */
  #Aboutus{
    display:flex;
    margin: 60px;
   
  }
  .doctor2{
    height: auto;
    width: 100%;
  }
  .about{
    margin: 15px;
    padding: 18px;
  }
.abouth{
    margin: 23px ;
    color: blue;
    font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
#About{
  margin: 20px;
  font: 2em sans-serif;
}
#Abouth{
  margin: 8px;
  font: 20px;
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
}
#appoiment{
  display: flex;
 justify-content: center;
}
.appoiment{
  border: 2px solid black;
  height: 41px;
  width: 720px;
  display: flex;
  justify-content: center;
  align-items: center;
  background-image: linear-gradient(144deg,#AF40FF, #5B42F3 50%,#00DDEB);
  border: 0;
  border-radius: 8px;
  box-shadow: rgba(151, 65, 252, 0.2) 0 15px 30px -5px;
  box-sizing: border-box;
  color: #FFFFFF;
  display: flex;
  font-family: Phantomsans, sans-serif;
  font-size: 20px;
  justify-content: center;
  line-height: 1em;
  max-width: 100%;
  min-width: 140px;
  padding: 3px;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  white-space: nowrap;
  cursor: pointer;
}
.appoiment a{
  color: white;
  font-family: 'Times New Roman', Times, serif;
  font-size: larger;
  text-decoration: none;
  background-color: rgb(5, 6, 45);
  padding: 16px 24px;
  border-radius: 6px;
  width: 100%;
  height: 100%;
  transition: 300ms;
}
.appoiment:hover{
  outline: 0;
}
.appoiment:haver a{
  background: white;
}
@media (min-width: 768px) {
  .appoiment {
    font-size: 24px;
    min-width: 196px;
  }
}
.team{
  font: 1.5rem sans-serif;
  margin-top:27px ;
  text-align: center;
  color: blue;
}
#doctor h1{
  font-size:xx-large ;
  text-align: center;
}
.doctor{
  display: grid;
  padding: 4rem;
  row-gap: 10px;
  column-gap: 12px;
  grid-template-rows:repeat(2,1fr);
  grid-template-columns: repeat(3,1fr);

}
.doctors{
  cursor: pointer;
  height: 9.5cm;
  width: 8cm;
  border-radius: 4px;
  background-color: whitesmoke;
}
.doctors img{
  margin: 12px 32px;
}
.doctors:hover{
  background-color: #00DDEB;
}
.doctors div{
  display: inline-block;
  background-color: black;
  width: 210px;
  margin-left: 48px;
}
.doctors span{
 font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  font-size: x-large;
 color: white;
 margin-left: 40px;
}

footer{
  margin-top: 20px;
    text-align: center;
    padding: 3px;
    background-color: black;
    color: white;
}
    </style>
</head>
<body>
     <section id="head">
    <div class="header">
        <img src="image/Meditest-main-logo.jpg" alt="logo" class="logo">
        <div class="navbar">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="PatientService.aspx">Service</a></li>
                <li><a href="patientAppointment.aspx">Vaccine Booking</a></li>
                <li><a href="PatientAboutUs.aspx">About Us</a></li>
                <li><a href="patientdoctorbooking.aspx">Appointment</a></li>
            </ul>
        </div>
        <div class="contact">
           <a href="PatientContact.aspx">Contact Us</a>
        </div>
    </div>
    <div id="main">
        <div class="main_heading">
            <h1>Get Expert Medical</h1>
            <h1>Consultancy!</h1>
            <p>In the heart of our hospital, every corridor echoes with the dedication of our healthcare professionals,</p>
            <p>committed to providing the highest standard of care to every patient who walks through our doors.</p>
        </div>
        <div class="img_doctor_1">
            <img src="image/doctor_1.jpg" alt="doctor" class="doctor">
        </div>
        <div class="logo_icon">
            <h1>500k+ Our People Join</h1>
            <img src="image/Image-Icon.jpg" alt="icon">
        </div>
       <div id="circle"></div>
    </div>
</section>
<section id="Aboutus">
    <div class="doctor_2">
        <img src="image/doctor_2.jpg" alt="image_doctor" class="doctor2">
    </div>
    <div class="about">
        <h4 class="abouth">- About Us</h4>
        <h1 id="About">Our Comprehensive Services</h1>
        <p id="Abouth">Hospitals are equipped with advanced medical technologies and facilities to facilitate</p>
        <p id="Abouth">accurate diagnoses and effective treatments. They house state-of-the-art</p>
        <p id="Abouth">equipment, such as MRI machines, CT scanners, and laboratory facilities, enabling</p>
        <p id="Abouth">precise evaluations and prompt medical interventions. These resources, combined with</p>
        <p id="Abouth">the expertise of healthcare professionals, play a crucial role in saving lives and improving patient outcomes.</p>
        
    </div>
    
</section>
<section id="appoiment">
    <div class="appoiment">
        <a href="patientAppointment.aspx">BOOK YOUR APPOINTMENT NOW</a>
    </div>
</section>
<section id="doctor">
    <h3 class="team">-Our Team</h3>
    <h1>Meet Specialist</h1>
    <div class="doctor">
        <div class="doctors">
            <img src="image/doctor_3.jpg" alt="doctorimg">
            <span style="color: black;">Dr. Sophia Ava</span>
            <div> <span>Physicians</span></div>
        </div>
        <div class="doctors">
            <img src="image/doctor_4.jpg" alt="doctorimg">
            <span style="color: black;">Dr. Daisy Bins</span>
            <div><span>Neurologist</span></div>
        </div>
        <div class="doctors">
            <img src="image/doctor_5.jpg" alt="doctorimg">
            <span style="color: black;">Dr. Richard Kyle</span>
            <div> <span>Dermatologist</span></div>
        </div>
        <div class="doctors">
            <img src="image/doctor_6.jpg" alt="doctorimg">
            <span style="color: black;">Dr. James charlie</span>
            <div><span>Gynecologist</span></div>
            
        </div>
        <div class="doctors">
            <img src="image/doctor_8.jpg" alt="doctorimg">
            <span style="color: black;">Dr. Prophet Rolez</span>
            <div><span>Physicians</span></div>
        </div>
        <div class="doctors">
            <img src="image/doctor_7.jpg" alt="doctorimg">
            <span style="color: black;">Dr. Sophia Ava</span>
            <div><span>Pediatrician</span></div>
        </div>
    </div>
</section>
<section id="appoiment">
    <div class="appoiment">
        <a href="patientdoctorbooking.aspx">BOOK YOUR DOCTOR</a>
    </div>
</section>
<footer>
   <h2>Contact Us</h2>
   <h3>Phone: +91-9999999999</h3>
   <h3>Hi@ntlly.com</h3>
    <h4>@2024 All Right Reserved to Prabhat Sharma and Teams</h4>
</footer>
</body>
</html>
