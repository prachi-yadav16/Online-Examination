<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Help - Online Examination System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 85%;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 20px;
        }
        .section {
            margin-bottom: 30px;
        }
        .section-title {
            color: #1976d2;
            border-left: 5px solid #1976d2;
            padding-left: 10px;
            font-size: 20px;
            margin-bottom: 10px;
        }
        ul {
            padding-left: 20px;
        }
        li {
            margin-bottom: 10px;
            color: #444;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            margin-top: 40px;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Help & Support</h1>

        <div class="section">
            <div class="section-title">Login Issues</div>
            <ul>
                <li>Ensure you are using the correct username and password.</li>
                <li>If you forgot your password, contact the admin to reset it.</li>
                <li>Clear browser cache or try logging in with a different browser.</li>
                <li>Make sure your account is activated by the admin.</li>
            </ul>
        </div>

        <div class="section">
            <div class="section-title">Exam Troubleshooting</div>
            <ul>
                <li>Check your internet connection before starting the exam.</li>
                <li>Do not refresh or close the browser during the exam.</li>
                <li>Make sure your browser allows JavaScript.</li>
                <li>If time expires, the exam will auto-submit – no action needed.</li>
            </ul>
        </div>

        <div class="section">
            <div class="section-title">Result Access</div>
            <ul>
                <li>Once the exam is submitted, results are visible immediately for objective type exams.</li>
                <li>If you cannot view your result, check with the admin for result release status.</li>
                <li>Only registered users can access their results.</li>
            </ul>
        </div>

        <div class="section">
            <div class="section-title">General FAQs</div>
            <ul>
                <li><strong>Can I take the exam on mobile?</strong> Yes, the system is responsive for mobile use.</li>
                <li><strong>Can I change my answers?</strong> Yes, before submitting, you can revisit and update answers.</li>
                <li><strong>Who can add exams?</strong> Only admin users can create and assign exams.</li>
                <li><strong>How do I contact support?</strong> Reach out to admin@example.com or the Admin Dashboard > Contact.</li>
            </ul>
        </div>

        <div class="footer">
            For further assistance, please contact your administrator.
        </div>
    </div>
</body>
</html>
