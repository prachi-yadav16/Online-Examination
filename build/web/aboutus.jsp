
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | About Us</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	<link rel="stylesheet" type="text/css" href="static/css/aboutus.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/carousel/">

    <style>
        body {
    padding-top: 3.5rem;
}

nav {
    font-family: sans-serif;
}

.navbar-brand {
    font-size: 20px;
    font-family: Georgia, 'Times New Roman', Times, serif;
}
    </style>

</head>
<body>
    <form id="form1">
        <header>
            <!--Navigation Bar-->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <a class="navbar-brand" href="#"><b>ONLINE EXAMINATION SYSTEM</b></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="aboutus.jsp">About</a>
                    </li>
                    <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</a>
			    <div class="dropdown-menu" aria-labelledby="dropdown03">
			        <a class="dropdown-item" href="login.jsp">Student</a>
				<a class="dropdown-item" href="adminlogin.jsp">Admin</a>
			    </div>
		    </li>
		    <li class="nav-item">
			<a class="nav-link" href="register.jsp">Sign Up</a>
		    </li>
                    </ul>
                </div>
            </nav>
        </header>

         <main role="main">

  <div class="jumbotron">
    <div class="container">
      <h1 class="display-4">About OES</h1>
      <p>Welcome to OES!, An Online Examination System for Colleges and Universities to schedule their exams.
        If your organization faces any challenges while conducting the exams or your organization has any concerns regarding the system please contact us. 
      </p>
      <p><a class="btn btn-primary btn-lg" href="help.jsp" role="button">Help &raquo;</a></p>
    </div>
  </div>

  <div class="container">

    <div class="row">
      <div class="col-md-4">
        <h2>Admin</h2>
        <p>.Our Online Examination System (OES) is designed to provide a seamless and secure platform for conducting exams in colleges and universities. With a user-friendly interface, administrators can effortlessly create, manage, and evaluate examinations.It provides institutions with an admin account to generate assessments and check student marks.</p>
        <p><a class="btn btn-secondary" href="login.jsp" role="button">Login &raquo;</a></p>
      </div>
      <div class="col-md-4">
        <h2>Key Features</h2>
        <p>  Easy Exam Management: Admins can create exams, set questions, and update exam details with just a few clicks.<br>
Automated Evaluation: The system provides instant grading and results, saving time for both students and instructors.<br>
Secure and Reliable: Ensuring exam integrity with authentication mechanisms and secure database management.<br>
                    </p>
        
      </div>
      <div class="col-md-4">
        <h2>Why Choose Online Examination System?</h2>
        <p>Online Examination System leverages JSP, Servlets, JSTL, and MySQL to provide a robust, scalable, and efficient platform. Designed to streamline online assessments, it reduces paperwork and simplifies the examination process while maintaining accuracy and security.
</p>
       </div>
    </div>

    <hr>

  </div>

</main>

<footer class="container">
  <p>&copy; riskassess. All Rights Reserved</p>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script>

    </form>
</body>
</html>
