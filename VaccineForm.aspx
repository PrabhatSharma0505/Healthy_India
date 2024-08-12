<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VaccineForm.aspx.cs" Inherits="hospitalWebsite.VaccineForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        #form1 {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .btn-primary {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
    <script type="text/javascript">
        function downloadCertificate() {
            var name = document.getElementById('<%=txtName.ClientID%>').value;
            var fatherName = document.getElementById('<%=txtFatherName.ClientID%>').value;
            var vaccine = document.getElementById('<%=txtVaccine.ClientID%>').value;

            var pdfContent = `<!DOCTYPE html>
<html>
<head>
</head>
<body>
    <h1>Certificate</h1>
    <p>This is to certify that ${name}, son of ${fatherName}, has received the ${vaccine} vaccine.</p>
</body>
</html>`;

            // Create blob object
            var blob = new Blob([pdfContent], { type: 'application/pdf' });

            // Create a link element, set its download attribute and trigger click event
            var link = document.createElement('a');
            link.href = window.URL.createObjectURL(blob);
            link.download = 'Certificate.pdf';
            link.click();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Vaccine Certificate Form</h2>
            <div>
                <label for="txtName">Name:</label>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div>
                <label for="txtFatherName">Father's Name:</label>
                <asp:TextBox ID="txtFatherName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div>
                <label for="txtVaccine">Vaccine:</label>
                <asp:TextBox ID="txtVaccine" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="btnDownloadCertificate" runat="server" Text="Download Certificate" CssClass="btn btn-primary" OnClientClick="downloadCertificate(); return false;" />
            </div>
            <div>
                <asp:Literal ID="litMessage" runat="server"></asp:Literal>
            </div>
        </div>
    </form>
</body>
</html>
