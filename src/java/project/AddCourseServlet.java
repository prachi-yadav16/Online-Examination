package project;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet(name = "AddCourseServlet", urlPatterns = {"/AddCourseServlet"})
public class AddCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newCourse = request.getParameter("newCourse");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejproj", "root", "root");

            // Insert into subjects list
            String tableName = newCourse.replaceAll("\\s+", "_").toLowerCase();
            PreparedStatement ps = con.prepareStatement("INSERT INTO subjects (name, database_name) VALUES (?,?)");
            ps.setString(1, newCourse);
            ps.setString(2, tableName);
            ps.executeUpdate();

            // Create a new table for the course
            Statement stmt = con.createStatement();
            String createTableSQL = "CREATE TABLE " + tableName + " (id INT AUTO_INCREMENT PRIMARY KEY,qno INT, question TEXT, a1 VARCHAR(255), a2 VARCHAR(255), a3 VARCHAR(255), a4 VARCHAR(255), ans VARCHAR(255))";
            stmt.executeUpdate(createTableSQL);

            response.sendRedirect("adminhome.jsp"); // or wherever your JSP page is
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}