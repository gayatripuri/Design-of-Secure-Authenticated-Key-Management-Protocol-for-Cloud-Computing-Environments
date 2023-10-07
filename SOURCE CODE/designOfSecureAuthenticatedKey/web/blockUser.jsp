<%-- 
    Document   : AccessRequest
    Created on : Sep 20, 2020, 5:17:36 AM
    Author     : Lenovo
--%>

<%@page import="DBconnection.SQLconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
try {
  int i= st.executeUpdate("Update user_reg set status='Blocked' where id='"+id+"' ");
    if(i!=0) {
        response.sendRedirect("malUser.jsp?Blocked");
        
    }
       else{
       response.sendRedirect("malUser.jsp?Failed");
       }
  
} catch(Exception ex) {
    ex.printStackTrace();
}
%>
