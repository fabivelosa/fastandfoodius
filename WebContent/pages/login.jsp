<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 	
	import ="java.util.*" %>

<!DOCTYPE html>
<html lang="en">


<%@include file="../includes/header.jsp" %>

<head>
	
</head>
<body id="page-top" onLoad="highlight_menu('#login','#fed136'),highlight_menu('#contact','#fff')">
	
	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp" %>
 
	 <header class="masthead_internal">		
	</header>    
    
    	<!-- login -->
	<section class="page-section" id="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading text-uppercase">Login</h2>
					<h3 class="section-subheading text-muted">Start using our services.</h3>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
				       <form action="${pageContext.request.contextPath}/login" id="loginForm" method="post" name="login" novalidate="novalidate">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" id="username" type="text" name="username"
										placeholder="Your User *" required="required"
										data-validation-required-message="Please enter your  username.">
									<p class="help-block text-danger"></p>
								</div>
								<div class="form-group">
									<input class="form-control" id="userpass" type="password" name="userpass"
										placeholder="Your Password *" required="required"
										data-validation-required-message="Please enter your password.">
									<p class="help-block text-danger"></p>
								</div>
	
							</div>
							
							<div class="clearfix"></div>
							<div class="col-lg-12 text-center">
								<div id="success"></div>
							 <button id="sendMessageButton"
									class="btn btn-primary btn-xl text-uppercase" name="submit" value="submit" >Login
							</button>
							<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
							   href="${pageContext.request.contextPath}/pages/forgotpassword.jsp">Forgot Password</a>
							<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
							   href="${pageContext.request.contextPath}/pages/signup.jsp">Sign-up</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
<%@include file="../includes/footer.jsp" %>
</body>

	
</html>

