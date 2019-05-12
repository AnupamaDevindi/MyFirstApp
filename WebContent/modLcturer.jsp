<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update lecturer| ABC courseweb</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Aclonica">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Actor">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Google-Style-Login.css">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table.css">
    <link rel="stylesheet" href="assets/css/MUSA_panel-table1.css">
    <link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div>
        <div class="header-dark" style="height:928px;">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="index.jsp">ABC CoursWeb</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div
                        class="collapse navbar-collapse" id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="index.jsp">Home</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" href="contactUS.jsp">Contact Us</a></li>
                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">More</a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">Services</a><a class="dropdown-item" role="presentation" href="#">Experience</a><a class="dropdown-item" role="presentation" href="#">Technicians</a></div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div style="width:120px;" class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form>
                        
                        <%
                        String  un  = (String) session.getAttribute("username");
                            		System.out.println("username:"+un);
                        if(un!=null){
                        	%>
                        		<span class="navbar-text">Welcome, <%=un%> <a href="<%=request.getContextPath()%>/LogoutServlet" class="navbar-text"> (Logout) </a></span>
                        		<span class="navbar-text"><a href="<%=request.getContextPath()%>/updateServlet" class="navbar-text">| MyAccount</a></span>
                        		
                        	<% 
                        	
                        }else{
                        	%>
                        		<span class="navbar-text"><a href="login.jsp" class="login">Log In</a></span>
                        		<a class="btn btn-light action-button" role="button" href="register.jsp" data-bs-hover-animate="pulse">Sign Up</a>
                        	<% 
                        }
                        %> 
                         </div>
        </div>
        </nav>
        <div class="container hero">
            <div class="row register-form">
                <div class="col-md-8 offset-md-2">
                    <form action="updateServlet" method="post" data-bs-hover-animate="pulse" class="custom-form" style="height:735px;">
                        <h1><span style="text-decoration: underline;">Update Lecturer Details</span></h1>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Name </label></div>
                            <div class="col-sm-6 input-column" style="margin-left:20px;"><input class="form-control" type="text" value="<%=request.getParameter("Username") %>" name="name" disabled="disabled" style="padding-left:12px;margin-right:0px;margin-left:12;"></div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label" for="email-input-field">Email </label></div>
                            <div class="col-sm-6 input-column" style="margin-left:20px;"><input class="form-control" type="email" name="mail" required="required" style="margin-left:24;"></div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label" for="pawssword-input-field">Password </label></div>
                            <div class="col-sm-6 input-column" style="margin-left:20px;"><input class="form-control" type="password" name="pass" required="required"></div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label" for="repeat-pawssword-input-field">Repeat Password </label></div>
                            <div class="col-sm-6 input-column" style="margin-left:20px;"><input class="form-control" type="password" name="conpass" required="required"></div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label" for="name-input-field">Address</label></div>
                            <div class="col-sm-6 input-column" style="margin-left:20px;"><input class="form-control" type="text" name="address" required="required"></div>
                        </div>
                        <div class="form-row form-group">
                            <div class="col-sm-4 label-column"><label class="col-form-label"  for="dropdown-input-field">Province</label></div>
							<div class="col-sm-4 input-column">
                                <div class="dropdown"><select name="province" class="btn btn-light dropdown-toggle" data-toggle="dropdown" <%
                                			if(("Admin").equals(session.getAttribute("username"))){		//validation to check whether admin is editing employees
                                				%><% 
                                			}
                                			else{
                                				%>disabled="disabled"<%
                                			}
                                System.out.println("provincevar : "+request.getParameter("Province"));
                                String northern ="";
                                String western="";
                                String southern="";
                                String eastern ="";
                                String northcentral="";
                                String central="";
                                String northwestern ="";
                                String sabaragamuwa="";
                                String uva="";
                                		if(("Northern").equals(request.getParameter("Province"))){
                                			northern ="selected";  

                                		}else if(("Western").equals(request.getParameter("Province"))){
  
                               				western="selected";

                                		}else if(("Southern").equals(request.getParameter("Province"))){

                                            southern="selected";
                                		}else if(("Eastern").equals(request.getParameter("Province"))){
  
                               				eastern="selected";

                                		}else if(("North Central").equals(request.getParameter("Province"))){

                                            northcentral="selected";
                                		}else if(("North Western").equals(request.getParameter("Province"))){
  
                               				northwestern="selected";

                                		}else if(("Sabaragamuwa").equals(request.getParameter("Province"))){

                                            sabaragamuwa="selected";
                                		}else if(("Uva").equals(request.getParameter("Province"))){
  
                               				uva="selected";

                                		}else if(("Central").equals(request.getParameter("province"))){

                                            central="selected";
                                		}else{
                                             northern =null;
                                             western=null;
                                             southern=null;
                                             eastern =null;
                                             northcentral=null;
                                             central=null;
                                             northwestern =null;
                                             sabaragamuwa=null;
                                             uva=null;
                                		}
                                %>
                                 aria-expanded="false">
                                 <option selected="<%=northern%>" value="Northern">Northern</option>
                                 <option selected="<%=western%>" value="Western">Western</option>
                                 <option selected="<%=southern%>" value="Southern">Southern</option>
                                 <option selected="<%=eastern%>" value="Eastern">Eastern</option>
                                 <option selected="<%=northwestern%>" value="North Western">North Western</option>
                                 <option selected="<%=northcentral%>" value="North Central">North Central</option>
                                 <option selected="<%=uva%>" value="Uva">Uva</option>
                                 <option selected="<%=sabaragamuwa%>" value="Sabaragamuwa">Sabaragamuwa</option>
                                 <option selected="<%=central%>" value="Central">Central</option>
                                 </select>
                                </div>
                            </div>
                        </div><button class="btn btn-light submit-button" type="submit" data-bs-hover-animate="pulse">Update</button></form>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="footer-dark">
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">New Connection</a></li>
                            <li><a href="#">Repairs</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-md-3 item">
                        <h3>About</h3>
                        <ul>
                            <li><a href="#">Company</a></li>
                            <li><a href="#">Team</a></li>
                            <li><a href="#">Careers</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 item text">
                        <h3>ABC CourseWeb</h3>
                        <p>A private company affiliated with all educational facilities.<br><br></p>
                    </div>
                    <div class="col item social"><a href="https://www.facebook.com"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright"><br>ABC courseweb© 2019<br></p>
            </div>
        </footer>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
</body>
</html>