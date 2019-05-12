<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Account</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>

<body>
    <div>
        <div class="align-content-stretch flex-nowrap header-dark" style="height:550px;">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="index.jsp">ABC CourseWeb</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
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
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form><span class="navbar-text"><a href="#" class="login">${name}</a></span><a class="btn btn-light action-button" role="button" href="login.jsp">Logout</a></div>
        </div>
        </nav>
        <div class="container invisible"></div><i class="fa fa-star"></i>
        <div>
        <form action="deleteServlet" class="regForm" method="post">
		<h1 style="color: gray;padding-top:55px;" align="center">Confirm Deletion of Account</h1>

		<table style="color: gray;margin-top:85px;" align="center" >

			<tr>
				<td style="color:white;">Enter Password :</td>
				<td><input type="password" name="password1"
					style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px"></td>
			</tr>
			
			<tr>
				<td style="color:white;">Confirm :</td>
				<td style="background-color:black"><input type="submit" name="submit" value="DeleteAccount"
					style="width: 200px; height: 30px; border-radius: 5px; border-style: solid; border-width: 1px"></td>
			</tr>
			</table>
			</form>
			<div><h1>${message1 }</h1></div>
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
                            <li><a href="#">New Faculties</a></li>
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
                        <h3>ABC Courseweb</h3>
                        <p>A private company affiliated with all educational facilities..</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">ABC Courseweb© 2019</p>
            </div>
        </footer>
    </div>
    <div></div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>