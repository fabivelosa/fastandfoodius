<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<%@ page session="true"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<form action="${pageContext.request.contextPath}/addPerson"
			method="post">
			<div>
				<br> <br> <br><br><br>

				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputFirstName">First Name</label> <input type="text"
						name="inputFirstName" class="form-control" id="inputFirstName"
						placeholder="Please enter first name">
				</div>
				<div class="form-group col-md-6">
					<label for="inputLastName">Last Name</label> <input type="text"
						name="inputLastName" class="form-control" id="inputLastName"
						placeholder="Please enter last name">
				</div>
			</div>
			<div class="form-group">
				<label for="inputDateOfBirth">Date of birth</label> <input
					type="text" name="inputDateOfBirth" class="form-control"
					id="inputDateOfBirth" placeholder="day/month/year">
			</div>
			<div>
				<label for="gender">Gender</label> <select name="gender"
					class="form-control form-control">
					<option value="choose">Please choose gender</option>
					<option value="F">Female</option>
					<option value="M">Male</option>
					<option value="O">Other</option>
				</select>
			</div>
			<div>
				<c:choose>
					<c:when test="${sessionScope.role =='5'}">
						<label for="title">Title</label>
						<select name="title" class="form-control form-control">
							<option value="staff">Front Desk Staff</option>
							<option value="delivery">Delivery Driver</option>
						</select>

						<br />
					</c:when>
					<c:otherwise>
						<input type="hidden" id="title" name="title" value="C">
						<br />
					</c:otherwise>
				</c:choose>

			</div>
			<div class="form-group">
				<label for="inputPhone">Mobile Phone</label> <input type="text"
					name="inputPhone" class="form-control" id="inputPhone"
					placeholder="Please enter phone number">
			</div>

			<div class="form-group">
				<label for="inputEmail">Email</label> <input type="text"
					name="inputEmail" class="form-control" id="inputEmail"
					placeholder="Email" placeholder="Please enter email">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Password</label> <input type="password"
					name="inputPassword" class="form-control" id="inputPassword"
					placeholder="Please enter password">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Repeat Password</label> <input
					type="password" class="form-control" id="inputRepeat"
					name="inputRepeat" placeholder=" Please repeat password">

			</div>
			<div class="form-group">
				<label for="inputAddress">Address</label> <input type="text"
					name="inputAddress" class="form-control" id="inputAddress"
					placeholder="Please Enter Address">
			</div>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputCity">City</label> <input type="text"
						name="inputCity" class="form-control" id="inputCity"
						placeholder="Please Enter City">
				</div>

				<div class="form-group col-md-2">
					<label for="inputZip">Postal Code</label> <input type="text"
						name="inputZip" class="form-control" id="inputZip"
						placeholder="Please Enter Postal Code">
				</div>

			</div>
			<div class="form-group">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" name="gridCheck"
						id="gridCheck"> <label class="form-check-label"
						for="gridCheck"> Check me out </label>
				</div>
			</div>
			<button type="submit" class="btn btn-primary">Sign in</button>
			 <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/main.jsp">Back</a>
		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>


</html>

