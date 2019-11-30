<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<%@include file="../includes/header.jsp"%>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<head>
<style>
	body {font:76%/150% Arial, Helvetica, sans-serif; color:#666; width:100%; height:100%;}
	#sidebar {position:fixed; top:0; left:0; width:20%; height:100%; background:#EEE; overflow:auto;}
	#content {width:80%; padding-left:20%;}
	
	@media screen and (max-height:200px){
	    #sidebar {color:blue; font-size:50%;}
	}

</style>

<script>
	
	var total = 0;
	
	function currencyFormat(num) {
		  return '$' + num.toFixed(2).replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')
		}
	

</script>
</head>

<body id="page-top">

	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp"%>

	<header class="masthead_internal"> </header>


				<div class="container">
						<br> <br> <br> <br>
						<br>
						<div>
							<h1 align="center" >Your Order: ${orderId}.</h1>
						</div>
		</div>

	<%@include file="../includes/footer.jsp"%>
</body>


</html>