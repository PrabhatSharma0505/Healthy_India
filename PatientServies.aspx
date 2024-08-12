<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientServies.aspx.cs" Inherits="hospitalWebsite.PatientServies" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Servies</title>
     <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: #333;
        }
        
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        
        header {
            background: #4CAF50;
            color: #fff;
            padding: 1rem 0;
            text-align: center;
        }
        
        header h1 {
            margin: 0;
        }
        
        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        
        nav ul li {
            display: inline;
            margin: 0 15px;
        }
        
        nav ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }
        
        main {
            padding: 20px 0;
        }
        
        section {
            margin-bottom: 40px;
        }
        
        h2 {
            color: #4CAF50;
            margin-bottom: 20px;
        }
        
        .service {
            background: #f4f4f4;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        
        img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
            margin-top: 20px;
        }
        
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 10px 0;
        }
        
        footer p {
            margin: 0;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <header>
        <div class="container">
            <h1>Hospital Services</h1>
            <nav>
                <ul>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#services">Services</a></li>
                    <li><a href="#contact">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <section id="about">
            <div class="container">
                <h2>About Us</h2>
                <p>Welcome to our hospital. We are committed to providing the best healthcare services to our patients with our state-of-the-art facilities and experienced medical staff.</p>
                <img src="https://via.placeholder.com/800x400" alt="Hospital Image">
            </div>
        </section>
        <section id="services">
            <div class="container">
                <h2>Our Services</h2>
                <div class="service">
                    <h3>Emergency Care</h3>
                    <p>We provide 24/7 emergency care with a dedicated team of professionals ready to handle any medical emergency.</p>
                </div>
                <div class="service">
                    <h3>Cardiology</h3>
                    <p>Our cardiology department offers comprehensive heart care services, including diagnostics, treatment, and rehabilitation.</p>
                </div>
                <div class="service">
                    <h3>Orthopedics</h3>
                    <p>We specialize in treating musculoskeletal conditions, providing both surgical and non-surgical treatments to improve patient mobility.</p>
                </div>
                <div class="service">
                    <h3>Pediatrics</h3>
                    <p>Our pediatrics department offers complete medical care for children from infancy through adolescence.</p>
                </div>
            </div>
        </section>
        <section id="contact">
            <div class="container">
                <h2>Contact Us</h2>
                <p>If you have any questions or need to schedule an appointment, please contact us at (123) 456-7890 or email us at contact@hospital.com.</p>
            </div>
        </section>
    </main>
    <footer>
        <div class="container">
            <p>&copy; 2024 Hospital Services. All rights reserved.</p>
        </div>
    </footer>
    </form>
</body>
</html>
