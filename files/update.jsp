<%-- 
    Document   : update.jsp
    Created on : Sep 27, 2019, 4:05:36 PM
    Author     : 926030140v
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<%
String id = request.getParameter("User_ID");

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

<%
try{

    Connection conn = DriverManager.getConnection("jdbc:sqlserver://172.20.8.14:1433;databaseName=CeyBank", "testceybank", "testceybank");

    //for load user roles to drop down list
    PreparedStatement ps1 = conn.prepareStatement("Select DISTINCT User_role FROM [Roles]");
    ResultSet rs1 = ps1.executeQuery();
    
    
    PreparedStatement ps = conn.prepareStatement("Select u.User_ID,r.User_role,u.Contact_no,u.Status,u.lastModifiedBy,u.lastModifiedate From [User] u,[Roles] r WHERE u.Role_id = r.Role_id and u.User_ID=?");
    ps.setString(1,id); 
    ResultSet resultSet=ps.executeQuery();


while(resultSet.next()){
%>

<!DOCTYPE html>
<html>
<body>

<form method="post" action="update-process.jsp">
    
User ID:<br>
<input type="text" name="User_ID" value="<%=resultSet.getString(1) %>" readonly>
<br>
<br>

User Role:<br>
<select name="user_role" required>
    <%  while(rs1.next()){ %>
    <option><%= rs1.getString(1)%></option>
    <% } %>
</select>
<br>
<br>

Contact Number:<br>
<input type="text" name="contact" value="<%=resultSet.getString(3) %>" required>
<br>
<br>

Status:<br>
<select name="user_status" required>
        <option value="">  </option>
        <option value="ACTIVE"> ACTIVE </option>
        <option value="NOT ACTIVE"> NOT ACTIVE </option>
</select>
<br>
<br>

Modify By<br>
<input type="text" name="modifyBy" value="<%=resultSet.getString(5) %>" readonly>
<br>
<br>

Modify Date<br>
<input type="text" name="modifyDate" value="<%=resultSet.getString(6) %>" readonly>
<br>
<br>

<input type="submit" value="submit">

</form>
<%
}
    connection.close();
} 
catch (Exception e) 
{
    e.printStackTrace();
}
%>
</body>
</html>