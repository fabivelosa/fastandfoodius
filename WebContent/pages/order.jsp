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
	
	function addItem(id, price, desc) {

		if (null == id) {
			return false;
		} else {
			
			var price1 = parseInt(price);
			total = total+price1;
			var dataString = "itemId=" + id;
			
			document.getElementById("result").textContent  = currencyFormat(total);
			$('#productsTable tr:last').after('<tr><td>'+desc+'</td><td>'+currencyFormat(price)+'</td></tr>');
			
			$.ajax({
				type : "GET",
				url : "/fastandfoodius/orderAddItem",
				data : dataString,
			dataType : "text",
			success : function(data) {
	
			var ajaxResponse = $("#ajaxResponse").html(data)
			.text();
			},
			//If we get any error from the server
			error : function(jqXHR, textStatus, errorThrown) {
			console.log("Something really bad happened "
			+ textStatus + ";" + errorThrown);

			}
			});
		  }
		}
		
	

</script>
</head>

<body id="page-top">

	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp"%>

	<header class="masthead_internal"> </header>


	<div id="sidebar">
		<br> <br> <br> <br> <br>
		<h1 align=center>Summary</h1>
		<div >
		<table id="productsTable">
			<tr>
				<td width="50%">Name</td>
				<td width="50%">Price</td>
			</tr>
		 </table>
		</div>
		<label>Total : </label><label id="result"></label>
		
	</div>
	<div id="content">
				<div class="container">
			
				
						<br> <br> <br> <br>
						<br>
						<div>
							<h1>Order </h1>   
							<c:if test="${customer != null}">
                                   <h1>  Customer: ${customer.firstName}</h1>
                           </c:if>  
							
						</div>
						<div>
							<h1 align="center" >Starters</h1>
						</div>
						 <table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							  <c:forEach var="menu" items="${starters}">
								  <tr>
								  	<td>${menu.itemId}</td>
								  	 <td>${menu.itemDescr}</td>
								  	  <td>${menu.price}</td>
								  	  <td> <button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	  			<i class="fa fa-cart-plus"></i>
								  	 	</button></td>
								  </tr>
							  </c:forEach>
							  </tbody>
						  </table>
						 <div>
							<h1 align="center">Main Courses</h1>
						</div>
						 <table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							  <c:forEach var="menu" items="${maincourse}">
								  <tr>
								  	<td>${menu.itemId}</td>
								  	 <td>${menu.itemDescr}</td>
								  	  <td>${menu.price}</td>
								  	  <td>
								  	 	<button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	  			<i class="fa fa-cart-plus"></i>
								  	 	</button> 
								  	  </td>
								  </tr>
								  </c:forEach>
							  </tbody>
						  </table>
						  	 <div>
							<h1 align="center" >Side Dishes</h1>
						</div>
						<table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							  <c:forEach var="menu" items="${sidedish}">
								  <tr>
								  	<td>${menu.itemId}</td>
								  	 <td>${menu.itemDescr}</td>
								  	  <td>${menu.price}</td>
								  	  <td>
								  	  	<button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	  			<i class="fa fa-cart-plus"></i>
								  	 	</button> 
								  	  </td>
								  </tr>
								  </c:forEach>
							  </tbody>
						  </table>
						 <div>
						 <div>
							<h1 align="center" >Deserts</h1>
						</div>
						<table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							  <c:forEach var="menu" items="${dessert}">
								  <tr>
								  	<td>${menu.itemId}</td>
								  	 <td>${menu.itemDescr}</td>
								  	  <td>${menu.price}</td>
								  	  <td>
								  	  	<button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	  			<i class="fa fa-cart-plus"></i>
								  	 	</button> 
								  	  </td>
								  </tr>
								  </c:forEach>
							  </tbody>
						  </table>
						 <div>
							<h1 align="center" >Drinks</h1>
						</div>
						<table class="table table-striped">
						 <thead>
							<tr>
								<th>Id Item</th>
								<th>Description</th>
								<th>Price</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							  <c:forEach var="menu" items="${drink}">
								  <tr>
								  	<td>${menu.itemId}</td>
								  	 <td>${menu.itemDescr}</td>
								  	  <td>${menu.price}</td>
								  	  <td>
								  	  	<button onclick="addItem(${menu.itemId},${menu.price},'${menu.itemDescr}')">
								  	  			<i class="fa fa-cart-plus"></i>
								  	 	</button> 
								  	  </td>
								  </tr>
								  </c:forEach>
							  </tbody>
						  </table>
						 	<form id="order-form" action="${pageContext.request.contextPath}/checkOutOrder"
						method="post"> 
							<div class="text-center">
							<button type="submit" class="btn btn-primary">Check Out Order</button>
							 <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/main.jsp">Back</a>
						</div>
		 			</form> 
		 			
				</div>
		</div>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>


</html>