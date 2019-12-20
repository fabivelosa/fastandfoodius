<!DOCTYPE html>
<html lang="en">

<head>

<title>Access Denied</title>

<%@include file="../includes/header.jsp" %>


</head>

<body id="page-top">

	<!-- Navigation -->
	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp" %>
	
	<!-- Header -->
	<header class="inthead">
		<div class="container">
			<div class="intro-text">
				<div class="intro-lead-in">Access Denied ! Please try login again ! </div>
				

				<% if (session.getAttribute("logged") == Boolean.TRUE) { %>
				<div class="intro-heading text-uppercase">It's Nice To see You, <%= session.getAttribute("user") %></div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">Start an order</a>

				<% } else {%>
				<div class="intro-heading text-uppercase" >please login to make
					an order</div>
					<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/forgotpassword.jsp">Forgot Password</a>
				<% } %>
 			</div>
		</div>
	</header>


<%@include file="../includes/footer.jsp" %>

</body>

</html>