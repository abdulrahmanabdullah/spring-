<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
	<head>
		<title> Members Registration</title>
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main-style.css">
 		<script src="${pageContext.request.contextPath }/resources/js/jquery-3.1.1.min.js"></script>
 		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
 		<style>
 			.error{color:red}
 		</style>
	</head>
	
	<body>
		<h1> Welcome to our site  </h1>
		
		<br><br>
		
		<h2> Please Read the info and submit if you are  agree </h2>		
	
	
			
				<form:form   action="processForm" modelAttribute="members" >
					<br>
					
					<!-- FirstName  -->
					<div class="input-group" >
						 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>	
						<form:input path="firstName" placeholder="First Name" class="form-control" id="firstName"/> 
			
					</div>
					<br>
					
					<!-- lastName  -->
					<div class="input-group" >
					 	  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						 <form:input path="lastName" placeholder="Last Name " class="form-control" id="lastName" /> 
						 <form:errors path="lastName" cssClass="error" />
					</div>
					
					<br>
					<!-- Email  -->
					<div class="input-group" >
						 <span class="input-group-addon"><i class="glyphicon glyphicon-send"></i></span>
						 <form:input  path="email"  placeholder="Email Address"  class="form-control"/> 
					</div>
					<br>
					<!-- PassWord  -->
					Set your passWord : 
						<div class="input-group">
							<form:password  path="password"/>
							<form:errors path="password" cssClass="error"/>
							
					
						</div>
					
					
					
					
					
					<!-- chooseCountry  -->
					<div>
						<label for="country">Country</label>
						<form:select path="country">
							<form:options items ="${members.countryOptions}" />
						</form:select>
					</div>
					
					<br>
					
					<!-- option for favoriteLanguage   -->
						<h2>choose your favoriteLanguage :</h2> 
					java <form:radiobutton path="favoriteLanguage" value="java"/>
					php <form:radiobutton path="favoriteLanguage" value="php"/>
					Python <form:radiobutton path="favoriteLanguage" value="python"/>
					Ruby <form:radiobutton path="favoriteLanguage" value="ruby"/>
					C++ <form:radiobutton path="favoriteLanguage" value="c++"/>
					
					<br>
					
					
					<!-- choose for operating system  -->
					<h2> What your operating System : </h2>
						Linux <form:checkbox path="operatingSystem" value="linux" />
						Windows <form:checkbox path="operatingSystem" value="windows" />
						Mac <form:checkbox path="operatingSystem" value="mac" />
					
					
					
					<!-- Button to send values   -->
					<div class=""  >
						<input type="submit" value="submit" />
					</div> 
				</form:form>
			
	</body>

</html>