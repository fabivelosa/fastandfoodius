<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">


<%@include file="../includes/header.jsp"%>

<head>

</head>

<body id="page-top">

	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp"%>

	<header class="masthead_internal"> </header>

	<div class="container">

		<form action="${pageContext.request.contextPath}/addItem"
			method="post">
			<br> <br> <br> <br>
			<br>
			<div>
				<h1>Order</h1>
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
						  <c:forEach var="menu" items="${menuList}">
							  <tr>
							  	<td>${menu.itemId}</td>
							  	 <td>${menu.itemDescr}</td>
							  	  <td>${menu.price}</td>
							  </tr>
							  </c:forEach>
				  </tbody>
			  </table>
			 
			
			<div class="text-center">
				<button type="submit" class="btn btn-primary">check Out Order</button>
			</div>
		</form>
	</div>





	<%@include file="../includes/footer.jsp"%>
</body>


</html>