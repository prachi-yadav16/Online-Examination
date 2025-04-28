
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OES | Check Marks</title>
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
.center {
  margin-left: auto;
  margin-right: auto;
}
table {
  width: 55%;
}
table th,td{
    text-align: center;
}
    </style>

    </head>
    <body>
        <jsp:include page="adminnavbar.jsp" /><br/>
        <h1 style="text-align: center;">Student Marks</h1><br/>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ejproj" user="root" password="root"/>
        <sql:query dataSource="${db}" var="res">
            select * from result;
        </sql:query>
        <table border="1" class="center">
            <tr>
                <th>Username</th>
                <th>Subject</th>
                <th>Marks</th>
                <th>Date</th>
                <th>Time</th>
            </tr>
            <c:forEach var="tbl" items="${res.rows}">
                <tr>
                    <td><c:out value="${tbl.username}"/></td>
                    <td><c:out value="${tbl.subject}"/></td>
                    <td><c:out value="${tbl.marks}"/></td>
                    <c:set var="splitDateTime" value="${fn:split(tbl.datetime, ' ')}" />
                    <td><c:out value="${splitDateTime[0]}"/></td> <!-- This is DATE -->
                    <td><c:out value="${splitDateTime[1]}"/></td> <!-- This is TIME -->

                   </tr>
            </c:forEach>
        </table>
        
    </body>
</html>
