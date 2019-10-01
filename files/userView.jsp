<%-- 
    Document   : userView
    Created on : Sep 17, 2019, 12:14:43 PM
    Author     : 926030140v
--%>


<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
try 
{
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
} 
catch (ClassNotFoundException e) 
{
    e.printStackTrace();
}

Connection connection = null;

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        
        <table border="1">
        <tr>
            <td> User ID </td>
            <td> First Name </td>
            <td> Last Name </td>
            <td> Email </td>
            <td> User Type </td>
            <td> User Role </td>
            <td> Contact Number </td>
            <td> Status </td>           
            <td> Username </td>
            <td> Create By </td>
            <td> Create Date </td>             
            <td> Last Modified By </td>
            <td> Last Modified Date</td>
            <td> Action </td>
        </tr>
      
<%
try
{

    Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.20.8.14:1433;databaseName=CeyBank", "testceybank", "testceybank");
        
 //System.out.print("111");            
 //System.out.print("112");
        
        PreparedStatement ps = conn.prepareStatement("Select u.User_ID,u.First_name,u.Last_name,u.Email,u.User_type,r.User_role,u.Contact_no,u.Status,u.Username,u.CreatedBy,u.CreatedDate,u.lastModifiedBy,u.lastModifiedate,r.User_role From [User] u,[Roles] r WHERE u.Role_id = r.Role_id");
        ResultSet resultSet=ps.executeQuery();    
            //Statement  statement = conn.createStatement();
            //String sql = "Select First_name,Last_name From [User]";
 //System.out.print("113");           
 //System.out.print("114");

        if(!resultSet.next()) 
        {
            out.println("Sorry, could not find users details.");
        } 
        
        while(resultSet.next()){
%>
        <tr>
            
            <td><%=resultSet.getString(1) %></td>
            <td><%=resultSet.getString(2) %></td>
            <td><%=resultSet.getString(3) %></td>
            <td><%=resultSet.getString(4) %></td>           
            <td><%=resultSet.getString(5) %></td>
            <td><%=resultSet.getString(6) %></td>
            <td><%=resultSet.getString(7) %></td>
            <td><%=resultSet.getString(8) %></td>
            <td><%=resultSet.getString(9) %></td>
            <td><%=resultSet.getString(10) %></td>
            <td><%=resultSet.getString(11) %></td>
            <td><%=resultSet.getString(12) %></td>
            <td><%=resultSet.getString(13) %></td>
            
            <td><a href="update.jsp?User_ID=<%=resultSet.getString(1)%>"> update </a></td>
        </tr>
<%
}

connection.close();

} 
catch (Exception e) 
{
    e.printStackTrace();
    
}
%>
        </table>
    </body>
</html>
