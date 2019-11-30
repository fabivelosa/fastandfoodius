<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" 	
	import ="java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>


<title>Fast and Foodius</title>

<%  request.getSession(false).removeAttribute("user"); %>
<%   request.getSession().setAttribute("logged", Boolean.FALSE); %>
<%  request.getSession(false).removeAttribute("order"); %>


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
				<div class="intro-lead-in">Welcome To Our Restaurant!</div>
				

				<% if (session.getAttribute("logged") == Boolean.TRUE) { %>
				<div class="intro-heading text-uppercase">It's Nice To see You, <%= session.getAttribute("user") %></div>
				<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
					href="#services">Start an order</a>

				<% } else {%>
				<div class="intro-heading text-uppercase">please login to make
					an order</div>
				<% } %>
 			</div>
		</div>
	</header>


<%@include file="../includes/footer.jsp" %>

</body>

</html>
