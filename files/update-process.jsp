<%-- 
    Document   : update-process.jsp
    Created on : Sep 30, 2019, 7:47:26 AM
    Author     : 926030140v
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/test";%>
<%!String user = "root";%>
<%!String psw = "";%>

<%
String id = request.getParameter("User_ID");
String role = request.getParameter("user_role");
String contact = request.getParameter("contact");
String status = request.getParameter("user_status");

System.out.println("user role");
System.out.println(role);

    if(id != null)
    {
        int personID = Integer.parseInt(id);

    try
    {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

        Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.20.8.14:1433;databaseName=CeyBank", "testceybank", "testceybank");
        PreparedStatement ps = conn.prepareStatement("UPDATE [User] SET Contact_no = ?,Status = ?,lastModifiedBy = 1,lastModifiedate = CURRENT_TIMESTAMP,Role_id=(SELECT Role_id FROM [Roles] WHERE User_role = ?)  WHERE User_ID = ?");
    
        ps.setString(1, contact);
        ps.setString(2, status);
        ps.setString(3, role);
        ps.setString(4,id);

        int i = ps.executeUpdate();
        if(i > 0)
        {
            out.print("Record Updated Successfully");
        }
        else
        {
            out.print("There is a problem in updating Record.");
        }
        }
    catch(SQLException sql)
    {
        request.setAttribute("error", sql);
        out.println(sql);
    }
}
%>