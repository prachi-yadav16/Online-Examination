/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Abhay Shah
 */
@WebServlet(name = "evaluate", urlPatterns = {"/evaluate"})
public class evaluate extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            Connection conn = null;
            String url = "jdbc:mysql://localhost:3306/ejproj";
            String dbusername = "root";
            String dbpassword = "root";
            Statement statement = null;
            ResultSet resultset = null;
         response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);
            }
            conn = DriverManager.getConnection(url, dbusername, dbpassword);
            Enumeration retrieve = request.getParameterNames();
            statement = conn.createStatement();
            HttpSession session = request.getSession();
            String selectedexam = (String) session.getAttribute("selectedexam");
            int marks = 0;
            
           while(retrieve.hasMoreElements()){
              
           String var = (String)retrieve.nextElement();
           resultset = statement.executeQuery("select question,ans from "+selectedexam+" where qno="+var+"");
           
           String [] useranswers = request.getParameterValues(var);
           
           for(String i:useranswers){
               
                  while (resultset.next())
                    { 
                        String rightans = resultset.getString("ans");
                        

                    if(i.equals(rightans)){
                        marks++;
                      
                    }
                  
                  }
               }
           }
           
           String name = (String) session.getAttribute("name");
          int x=statement.executeUpdate("insert into result values('"+name+"',"+marks+",'"+selectedexam+"',CURRENT_TIMESTAMP)");
           out.println("<h1 style=\"text-align:center;\">The Examination Has Ended</h1>");
out.println("<h2 style=\"text-align:center;\">You scored " + marks + " marks!</h2>");
out.println("<center>");
out.println("<form action=\"examscreen.jsp\" method=\"GET\">");
out.println("<input type=\"submit\" value=\"Go to Home\" style=\"padding:10px 20px; font-size:16px;\">");
out.println("</form>");
out.println("</center>");

//System.out.println(scorecounter);
        } catch (SQLException ex) {
            Logger.getLogger(evaluate.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
