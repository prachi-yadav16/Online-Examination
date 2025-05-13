<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reliability & Efficiency - Online Examination System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 85%;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #2c3e50;
        }
        .section-title {
            color: #1e88e5;
            margin-top: 25px;
            border-bottom: 2px solid #1e88e5;
            padding-bottom: 8px;
        }
        p {
            line-height: 1.8;
            color: #444;
            text-align: justify;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Online Examination System</h1>

        <h2 class="section-title">Reliability</h2>
        <p>
            The Online Examination System is built with a focus on delivering consistent and reliable performance across various environments. Session management ensures that users can complete their examinations without interruptions due to server failures or timeouts. 
            Secure user authentication and input validation protect against unauthorized access and data corruption.
        </p>
        <p>
            The system uses a robust backend (Java Servlets and JSP) and a well-normalized MySQL database to ensure data integrity. Regular backups and recovery options are implemented to protect against data loss.
            In addition, mechanisms such as server-side time tracking and automatic submission on timeout enhance the reliability of exam conduct.
        </p>
        <p>
            Through rigorous testing including unit testing and simulated load testing, the platform has demonstrated stability under concurrent usage, ensuring a trustworthy experience for both administrators and users.
        </p>

        <h2 class="section-title">Efficiency</h2>
        <p>
            The system is optimized for performance and scalability. It uses asynchronous form submissions where needed to reduce reloads and improve user experience. Efficient SQL queries and indexing improve database access time, ensuring fast loading of questions and real-time result generation.
        </p>
        <p>
            The system supports auto-grading for objective questions, reducing administrative workload. Lightweight front-end design ensures minimal load time across devices, and responsive CSS provides a seamless experience across desktops, tablets, and smartphones.
        </p>
        <p>
            Caching of static content, proper session handling, and minimal resource utilization allow the system to function well even with limited infrastructure. As a result, the platform is capable of handling multiple users simultaneously without compromising speed or accuracy.
        </p>
    </div>
</body>
</html>
