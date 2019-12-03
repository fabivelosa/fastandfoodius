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
							<h1 align="center" >Order</h1>
						</div>
						 <table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Quantity</th>
								<th>Price</th>
								
							</tr>
						</thead>
						<tbody>
						<c:set var="total" value="${0}"/>
							  <c:forEach var="menu" items="${order.orderItem}">
								  <tr>
								  	  <td>${menu.menu_ID}</td>
								  	  <td>${menu.menuDesc}</td>
								  	  <td>${menu.quantity}</td>
								  	  <td>${menu.price}</td>
								  </tr>
								 <c:set var="total" value="${total + menu.price}" />
								  
							</c:forEach>
								  
								  <tr>
									 <td>TOTAL</td>
								  	 <td></td>
								  	 <td></td>
								  	  <td>${total}</td>
								</tr>
							  </tbody>
						  </table>
						  
						    
						  
						  
						 	<form id="order-form" action="${pageContext.request.contextPath}/saveOrder"
						method="post"> 
							<div class="text-center">
							 Delivery Option :
							<select name="deliveryOption">
								<option value="D">Delivery</option>
								<option value="T">Take Away</option>
							</select>
							<br>
							<br>
							<br>
							<button type="submit" class="btn btn-primary">Confirm</button>
						 <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/main.jsp">Cancel</a>
						</div>
						
						
		 			</form> 
		
		</div>


	<%@include file="../includes/footer.jsp"%>
</body>


</html>