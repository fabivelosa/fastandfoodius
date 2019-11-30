<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Fast and Foodius</title>
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
				
					<%  int roleId = ((Integer) session.getAttribute("role")).intValue();
					pageContext.setAttribute("roleId",roleId);%>
							<!--  if to show buttons related the role -->		
                           <c:if test="${roleId == 1}">
                                             <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/order.jsp">SysAdmin Buttons</a>
                           </c:if>  
                            <c:if test="${roleId == 2}">
                                 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/menu">Start an order</a>
									<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/menu">Track my order</a>
                           </c:if>  
                           <c:if test="${roleId == 3}">
                                 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/addItem">Edit Menu Items</a>
								<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/categories.jsp">Add Menu Category</a>
								<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/order.jsp">Start a Customer Order</a>
								<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/sendtodelivery.jsp">Assign Order for Delivery</a>	
                           </c:if>   
                           <c:if test="${roleId == 4}">
                                 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/vieworders">View Orders Assigned to Me</a>
                           <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/order.jsp">Report Order Delivered</a>
                           
                           </c:if> 
                           <c:if test="${roleId == 5}">
                                 <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/pages/personregister.jsp">Add Staff Member</a>

								<a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger"
									href="${pageContext.request.contextPath}/viewallorders">View All Orders</a>
                           </c:if> 
					<!--  if to show buttons related the role -->	
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
