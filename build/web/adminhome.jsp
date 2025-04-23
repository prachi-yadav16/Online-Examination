 <%@ page import="java.sql.*, java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TTGS | About Us</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>	
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
    <!--<form action="adminhome.jsp" method="POST">--> 
        <jsp:include page="adminnavbar.jsp" />

        <main role="main">
            <div class="jumbotron">
              <div class="container">
                <h1 class="display-4">Welcome Admin!</h1>
                <p>Welcome to Online Examination System!, An online examination system for colleges and universities to conduct their exams.
                </p>
                <p>Please Add the Subject which you want to have questions in:</p>
                    <form method="post" action="AddCourseServlet">
    <input type="text" name="newCourse" placeholder="Add new course" />
    <button type="submit">Add Course</button><br>
</form>  
                
                  <form action="adminhome.jsp" method="POST">
                     
<%
    List<String> subjectList = new ArrayList<>();
    List<String> subjectDatabase = new ArrayList<>();
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejproj", "root", "root");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM subjects");
        while (rs.next()) {
            subjectList.add(rs.getString("name"));
            subjectDatabase.add(rs.getString("database_name"));
        }
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
  //  request.setAttribute("subjectList", subjectList);
%>
<br><p>Now You can Select the Subject which you want to add questions to:</p>
                <p>
                  <select name="examsubject">
                      <%
                          for(int i=0;i<subjectList.size();i++)
                          {
                      %>
                       <option name="<%=subjectList.get(i)%>" value="<%=subjectDatabase.get(i)%>"><%=subjectList.get(i)%></option>
                       <%}%>
                                
                  </select>        
                </p>
  
                
                <input type="submit" value="Select Exam"><br/><br/>
                 <%
                     String examtype = (String)request.getParameter("examsubject");
                     session.setAttribute("examsubject", examtype);
                 %>
                 
                 <p>Examination Subject to Edit: <b>${examsubject}</b></p>
                 </form>
                 <p>Once you have selected an exam to edit click on "Set Examination" to either add questions to the examination or view the exam</p>
              
              </div>
                </div>
  
                <div class="container">
                  <div class="row">
                    <div class="col-md-4">
                      <h2>About the Online Examination System</h2>
                      <p>Our Online Examination System (OES) is designed to provide a seamless and secure platform for conducting exams in colleges and universities. With a user-friendly interface, administrators can effortlessly create, manage, and evaluate examinations, ensuring a smooth assessment process for students.</p>
                    </div>
                    <div class="col-md-4">
                      <h2>Key Features</h2>
                      Easy Exam Management: Admins can create exams, set questions, and update exam details with just a few clicks.<br>
Automated Evaluation: The system provides instant grading and results, saving time for both students and instructors.<br>
Secure and Reliable: Ensuring exam integrity with authentication mechanisms and secure database management.<br>
                    </div>
                    
                      <div class="col-md-4">
                      <h2>Why Choose Online Examination System?</h2>
                      <p>Online Examination System leverages JSP, Servlets, JSTL, and MySQL to provide a robust, scalable, and efficient platform. Designed to streamline online assessments, it reduces paperwork and simplifies the examination process while maintaining accuracy and security.
</p>
   </div>
    </div>
    </div>
     <hr> 
        </main>

<footer class="container">
  <p>&copy; oes. All Rights Reserved</p>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="../assets/dist/js/bootstrap.bundle.js"></script>

    <!--</form>-->
</body>
</html>