<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAboutUs.aspx.cs" Inherits="hospitalWebsite.PatientAboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
    <style>
			*{
		margin: 0;
		padding: 0;
		font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
	}
	.container{
		background-color: black;
	}
	h1{
		color: white;
		text-align: center;
	}
	h2{
		font-size:xx-large;
		font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	}
	span{
		color: blue;
	}
	h5{
		color: violet;
	}
	.heading{
		color: black;
	}
	#body2 h4{
		text-align: center;
	}
    #body3 {
            font-family: Arial, sans-serif;
        }
	table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        caption {
            caption-side: top;
            font-size: 1.5em;
            margin: 10px;
        }
        .dose1 {
            background-color: #ffcccc; /* Light red */
        }
        .dose2 {
            background-color: #cce5ff; /* Light blue */
        }
        .dose3 {
            background-color: #ccffcc; /* Light green */
        }
        .dose4 {
            background-color: #fff9c4; /* Light yellow */
        }
        .dose5 {
            background-color: #ccffcc; /* Light green */
        }
        .some {
            background-color: #fff9c4; /* Light yellow */
        }
	
footer{
  margin-top: 100px;
    text-align: center;
    padding: 3px;
    background-color: black;
    color: white;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
		<h1>About Us</h1>
	</div>
	<h2>WELCOME TO INDIA <span>HOSPITAL</span></h2>
	<h5>The Best Medical Service of Greater Noida. Check Our All Feature</h5>
	<p>Welcome to our new website. We encourage you to find out more about the values and vision that guides us, the services and programs we offer, the indicators that ensure our continued accountability and transparency, and the news and events that matter most to you. It is the place where you will find information on career opportunities with HMH and be able to access general healthcare information to keep you well informed.</p>
	<p>India Hospital has a proud tradition of care. For Last so many years, India Hospital has cared for the people of Lucknow, surrounding communities, and beyond, being a significant player within the District. Residing in the heart of a beautiful cottage country on the shores of the Gomti River, we offer healthcare not only to our community residents but to the many visitors who frequent our beautiful area year round.</p>

	<h3>Vision</h3>
	<p>To provide each patient with the world-class care, exceptional service and compassion we would want for our loved ones and To</p>
	<p>Lead the evolution of healthcare to enable every member of the communities we serve to enjoy a better, healthier life.</p>
	<h3>Mission</h3>
	<p>The mission of India Hospital is to provide quality health services and facilities for the community, to promote wellness, to relieve</p>
	<p>suffering, and to restore health as swiftly, safely, and humanely as it can be done, consistent with the best service we can give at the highest value for all concerned.</p>
	<section id="body2">
		<h1 class="heading">MEDICAL <span>SERVICE</span></h1>
		<h4>We Provide Top & best Medical Services in Greater Noida.</h4>
		<div class="container">
			<h1>Immunization Schedule</h1>
			
		</div>
	</section>
	<section class="body3">
		<table>
    <caption>2024 Recommended Immunizations for Children from Birth Through 6 Years Old – Parent-friendly</caption>
    <thead>
        <tr>
            <th>Vaccine or Preventive Antibody</th>
            <th>Birth</th>
            <th>1 Month</th>
            <th>2 Months</th>
            <th>4 Months</th>
            <th>6 Months</th>
            <th>7 Months</th>
            <th>8 Months</th>
            <th>12 Months</th>
            <th>15 Months</th>
            <th>18 Months</th>
            <th>19 Months</th>
            <th>20–23 Months</th>
            <th>2-3 Years</th>
            <th>4-6 Years</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>RSV antibody</td>
            <td colspan="2" class="some">Depends on mother’s RSV vaccine status</td>
            <td colspan="4" class="some">Depends on child’s health status</td>
            <td colspan="8"></td>
        </tr>
        <tr>
            <td>Hepatitis B</td>
            <td class="dose1">Dose 1</td>
            <td></td>
            <td class="dose2">Dose 2</td>
            <td></td>
            <td class="dose3">Dose 3</td>
            <td colspan="9"></td>
        </tr>
        <tr>
            <td>Rotavirus</td>
            <td colspan="2"></td>
            <td class="dose1">Dose 1</td>
            <td class="dose2">Dose 2</td>
            <td class="dose3">Dose 3</td>
            <td colspan="9"></td>
        </tr>
        <tr>
            <td>DTaP</td>
            <td colspan="2"></td>
            <td class="dose1">Dose 1</td>
            <td class="dose2">Dose 2</td>
            <td class="dose3">Dose 3</td>
            <td colspan="2"></td>
            <td class="dose4">Dose 4</td>
            <td colspan="3"></td>
            <td class="dose5">Dose 5</td>
        </tr>
        <tr>
            <td>Hib</td>
            <td colspan="2"></td>
            <td class="dose1">Dose 1</td>
            <td class="dose2">Dose 2</td>
            <td class="dose3">Dose 3</td>
            <td colspan="2"></td>
            <td class="dose4">Dose 4</td>
            <td colspan="6"></td>
        </tr>
        <tr>
            <td>Pneumococcal</td>
            <td colspan="2"></td>
            <td class="dose1">Dose 1</td>
            <td class="dose2">Dose 2</td>
            <td class="dose3">Dose 3</td>
            <td colspan="2"></td>
            <td class="dose4">Dose 4</td>
            <td colspan="6"></td>
        </tr>
        <tr>
            <td>Polio</td>
            <td colspan="2"></td>
            <td class="dose1">Dose 1</td>
            <td class="dose2">Dose 2</td>
            <td class="dose3">Dose 3</td>
            <td colspan="5"></td>
            <td class="dose4">Dose 4</td>
        </tr>
        <tr>
            <td>COVID-19</td>
            <td colspan="8"></td>
            <td colspan="6" class="dose1">At least 1 dose of updated (2023–2024 Formula) COVID-19 vaccine</td>
        </tr>
        <tr>
            <td>Influenza/Flu</td>
            <td colspan="8"></td>
            <td colspan="6" class="some">Every year. Two doses for some children</td>
        </tr>
        <tr>
            <td>MMR</td>
            <td colspan="11"></td>
            <td class="dose1">Dose 1</td>
            <td colspan="2" class="dose2">Dose 2</td>
        </tr>
        <tr>
            <td>Chickenpox</td>
            <td colspan="11"></td>
            <td class="dose1">Dose 1</td>
            <td colspan="2" class="dose2">Dose 2</td>
        </tr>
        <tr>
            <td>Hepatitis A</td>
            <td colspan="11"></td>
            <td colspan="3" class="dose1">2 doses separated by 6 months</td>
        </tr>
    </tbody>
</table>
		
	</section>
			<footer>
   <h2>Contact Us</h2>
   <h3>Phone: +91-9999999999</h3>
   <h3>Hi@ntlly.com</h3>
    <h4>@2024 All Right Reserved to Prabhat Sharma and Teams</h4>
</footer>

        </div>
    </form>
</body>
</html>
