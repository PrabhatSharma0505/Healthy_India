<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientContact.aspx.cs" Inherits="hospitalWebsite.PatientContact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient Contact</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f0f0f0;
        }
        
        #chatbot {
            width: 100%;
            max-width: 500px;
            height: 90%;
            display: flex;
            flex-direction: column;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        
        #chatbot-header {
            background: #4CAF50;
            color: #fff;
            padding: 10px;
            border-radius: 10px 10px 0 0;
            text-align: center;
        }
        
        #chatbot-messages {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            border-bottom: 1px solid #ddd;
        }
        
        #chatbot-messages p {
            margin: 10px 0;
        }
        
        .user {
            text-align: right;
            color: #4CAF50;
        }
        
        .bot {
            text-align: left;
            color: #333;
        }
        
        #chatbot-questions {
            padding: 15px;
            border: none;
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            width: 100%;
            box-sizing: border-box;
        }
        
        #chatbot-input {
            padding: 15px;
            border: none;
            border-radius: 0 0 10px 10px;
            box-sizing: border-box;
            width: 100%;
            border-top: 1px solid #ddd;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div id="chatbot">
        <div id="chatbot-header">Chat with us!</div>
        <div id="chatbot-messages"></div>
        <select id="chatbot-questions">
            <option value="">Select a question...</option>
            <option value="hello">Hello</option>
            <option value="how are you">How are you?</option>
            <option value="what services do you offer">What services do you offer?</option>
            <option value="contact">Contact Information</option>
            <option value="how to bookappointment">How to book vaccine appointment?</option>
            <option value="how to book doctorappointment">How to book doctor appointment?</option>
            <option value="bye">Goodbye</option>
        </select>
        <input type="text" id="chatbot-input" placeholder="Type your message here...">
    </div>
    </form>
     <script>
    document.addEventListener("DOMContentLoaded", function () {
        const chatbotMessages = document.getElementById("chatbot-messages");
        const chatbotInput = document.getElementById("chatbot-input");
        const chatbotQuestions = document.getElementById("chatbot-questions");
    
        const responses = {
            "hello": "Hi I am Prabhat! How can I help you today?",
            "hi": "Hello I am Prahat! What can I do for you?",
            "how are you": "I'm just a bot, but I'm here to help you!",
            "how to bookappointment":"Go to main page click vaccine booking and book a vaccine for you.",
            "how to book doctorappointment":"Go to main page click doctor booking and book a doctor for doctor booking.",
            "what services do you offer": "We offer emergency care, cardiology, orthopedics, and pediatrics.",
            "contact": "You can contact us at (123) 456-7890 or email us at contact@hospital.com.",
            "bye": "Goodbye! Have a great day!"
        };
    
        chatbotInput.addEventListener("keypress", function (e) {
            if (e.key === "Enter") {
                const userInput = chatbotInput.value.toLowerCase().trim();
                if (userInput) {
                    addMessage(userInput, "user");
                    chatbotInput.value = "";
                    setTimeout(() => {
                        const response = getResponse(userInput);
                        addMessage(response, "bot");
                    }, 500);
                }
            }
        });
    
        chatbotQuestions.addEventListener("change", function () {
            const userInput = chatbotQuestions.value;
            if (userInput) {
                addMessage(userInput, "user");
                chatbotQuestions.value = "";
                setTimeout(() => {
                    const response = getResponse(userInput);
                    addMessage(response, "bot");
                }, 500);
            }
        });
    
        function addMessage(text, sender) {
            const message = document.createElement("p");
            message.className = sender;
            message.textContent = text;
            chatbotMessages.appendChild(message);
            chatbotMessages.scrollTop = chatbotMessages.scrollHeight;
        }
    
        function getResponse(input) {
            return responses[input] || "I'm sorry, I don't understand that.";
        }
    });
    
    
     </script>
</body>
</html>
