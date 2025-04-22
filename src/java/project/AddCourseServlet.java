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
        System.out.print("hello");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejproj", "root", "root");

            // Insert into subjects list
            PreparedStatement ps = con.prepareStatement("INSERT INTO subjects (name) VALUES (?)");
            ps.setString(1, newCourse);
            ps.executeUpdate();

            // Create a new table for the course
            Statement stmt = con.createStatement();
            String tableName = newCourse.replaceAll("\\s+", "_").toLowerCase();
            String createTableSQL = "CREATE TABLE " + tableName + " (id INT AUTO_INCREMENT PRIMARY KEY,qno INT, question TEXT, a1 VARCHAR(255), a2 VARCHAR(255), a3 VARCHAR(255), a4 VARCHAR(255), ans VARCHAR(255))";
            stmt.executeUpdate(createTableSQL);

            response.sendRedirect("adminhome.jsp"); // or wherever your JSP page is
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}