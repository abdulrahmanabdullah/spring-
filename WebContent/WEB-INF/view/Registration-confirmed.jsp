<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title> Members Done   </title>
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
	
</head>
<body>
	
		<!-- navBar  -->
		
		<nav class="navbar navbar-inverse navbar-fixed-top">
		
			<div class="container" >
			
				<div  class="navbar-header">
				
						<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					
					</button>
					
					<a href="../" class="navbar-brand">Spring webSite </a>
				
				</div>
				
				
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
					<li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> Home</a></li>
					<li><a href="Articles">Articles</a></li>
					<li><a href="Categories">Categories</a></li>
					<li><a href="Contact">Contact</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
			
							<li><a href="#"><i class="glyphicon glyphicon-lock"></i> Login</a></li>
			
				</ul>
		
		
		</div>
				
			</div>
		
		</nav>

	
		<!-- container  -->
		<div class="jumbotron">
			<div class="container">
			
				<div class="row">
					<div class="col-md-8">
					<!-- <h1> Okay , Thank you  , almost Done .. </h1> -->
					<h1 class="page-header" style="padding-top:65px; "> Okay , Thank you  , almost Done .. </h1>
					</div>
				
					
					<!-- insert any images  -->
					<div class="col-md-4" >
							<img src="${pageContext.request.contextPath}/resources/images/checked0.png" style="margin-top:15px; " />			
						
					</div>
					
				</div>
			
			</div>
				
		</div>
		
		<!-- message for members  -->
			<div class="container">
			
				<div class="row">
					<div class="col-lg-10">
					
						<h3> Thank you MR/S. : ${members.firstName} ${members.lastName }  </h3>
						<br>
						<h3> We send email to : ${members.email }</h3>
						<br>
						<h3> your password Rang : ${members.password}</h3>
						<br><br>
						<h3> And your country : ${members.country }  </h3>
						<br>
						<h3> Great your doing well with : ${members.favoriteLanguage}</h3> 
						<br>
						<ul>
							<c:forEach var="temp" items="${members.operatingSystem}">
							<li> ${temp} </li>
							</c:forEach>
						</ul>
					
					</div>
				
				</div>
			
			</div>
		
		<footer>
			<div class="container" >
				
					<a href="../" class="btn btn-primary">Login</a>
					<a href="../" class="btn btn-success">Go to website</a>
				
				</div>
		
		</footer>
	
		
	
</body>
</html>