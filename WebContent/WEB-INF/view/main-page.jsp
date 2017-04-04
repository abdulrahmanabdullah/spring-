<!DOCTYEP html>
<html>
<head>
	<title>WebPage </title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
 <script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.min.js"></script>
 <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</head>
<body>


<!-- navbar -->

<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header" >
			<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			
			</button>
		
		
		</div>
	
		<a href="#" class="navbar-brand"> Spring website  </a>
	
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"><i class="glyphicon glyphicon-home"></i> Home</a></li>
				<li><a href="Articles">Articles</a></li>
				<li><a href="Categories">Categories</a></li>
				<li><a href="Contact">Contact</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
			
							<li><a href="members/Registration"><i class="glyphicon glyphicon-ok"></i> Sign UP</a></li>
							<li><a href="#"><i class="glyphicon glyphicon-lock"></i> Login</a></li>
			
				</ul>
		
		
		</div>
	
	</div>

</nav>
</body>
</html>