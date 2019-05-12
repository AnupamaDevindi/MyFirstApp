<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/styles.min.css">
</head>

<body>
    <div>
        <div class="header-dark">
            <nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
                <div class="container"><a class="navbar-brand" href="#">ABC</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse"
                        id="navcol-1">
                        <ul class="nav navbar-nav">
                            <li class="nav-item" role="presentation"><a class="nav-link" href="#">Home</a></li>
                            <li class="dropdown"><a class="dropdown-toggle nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#">Faculties</a>
                                <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                            </li>
                        </ul>
                        <form class="form-inline mr-auto" target="_self">
                            <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label><input class="form-control search-field" type="search" name="search" id="search-field"></div>
                        </form><span class="navbar-text"><a href="#" class="login">Log In</a></span><a class="btn btn-light action-button" role="button" href="#">Sign Up</a></div>
                </div>
            </nav>
            <div class="container hero">
                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <h1 class="text-center"><strong>ABC</strong></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="height: 500px ">
            
            
                
                
                
                <div class="col-md-10">
                
                 <form name = "myform" action = "viewItemContraller" method="post">
                
                <ul class="nav  " style="background-color: white;margin-left:40px; " align="left">
                          <li class="nav-item" align="left" style="padding:20px">
                            <input type = "submit" name="btnsubmit" value="view Details" style="border-radius: 15px; text-align: center;font-weight:bold;color:white;background-color:#fd4f00;width:250px;border-weight:10px">
                          </li>
                           </ul>
          
                 
                </form>          
                
                  
                </br>
                <div class="col-sm-10">
                 <div class = "container" >
                 <div align="center">
                            
                            <p style="center:2%;font-size:35px;color:black;font-weight:Bold;margin-left:200px"> Add Item </p>
                            
                        </div>
                
              
                
                  
                    
    <table align="left" style="margin-left:400px;color:grey" cellpadding="5%">
     
     <form action ="AddItemContraller" method="post">
      
  
  <table align="left" style="margin-left:300px;color:grey" cellpadding="5%">
  
   <tr> <th style ="text-align:center">Item type</th>
             <td colspan="2" align="right"> <select name="type" class="form-control">
         			<option value="electric " selected >electric </option>
         			<option value="Technic"  selected >Technic </option>
         			<option value=" Furniture"  selected > Furniture </option>
         			<option value="Hardware"  selected >Hardware </option>
         			<option value="Software"  selected >Software </option>
         			<option value="Ruff"  selected >Ruff </option>
         			<option value="other"  selected > other </option>
         		</select>
         		
         	 </td>
          </tr>
          <tr>
             <th style ="text-align:center">Item name</th>
             <td colspan="2" align="right"> <input class="form-control form-control-sm"  type="text" name="Item_name"  pattern="[a-zA-Z]{1,}" placeholder="Enter Item name" required ></td>
          
          </tr>
          <tr>
             <th style ="text-align:center"> Avaiable quantity</th>
             <td colspan="2" align="right"> <input class="form-control form-control-sm"  type="text" name="qty" pattern="[0-9]{1,}" placeholder="qty" required ></td>
          
          </tr>
          
          
          <tr>
             <th style ="text-align:center"> priority Level </th>
             <td colspan="2" align="right"> <select name="prority" class="form-control">
         			<option value="need" selected > Need </option>
         			<option value="medium"  selected > Medium </option>
         			<option value="low"  selected > Low </option>
         			
         		</select>
         		
         	 </td>
          </tr>
          
         
          
         </br></br>
		
  
  <tr>
            <td colspan="2" align="right"> <input type="reset" value="reset" class="btn"  style="background-color:#D3D3D3	;color:black;font-weight:bold"> 
            <input type="submit" value="Add"  class="btn"  style="background-color:#D3D3D3	;color:black;font-weight:bold""> 
                            </td>
                            </tr>
   </table>
  </form>
  </table>
                    
                    
                    
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
                            <li><a href="#">Web design</a></li>
                            <li><a href="#">Development</a></li>
                            <li><a href="#">Hosting</a></li>
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
                        <h3>ABC</h3>
                        <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">ABC pvt ltd © 2019</p>
            </div>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
</body>

</html>