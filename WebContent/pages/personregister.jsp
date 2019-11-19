<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">


<%@include file="../includes/header.jsp"%>

<head>

</head>

<body id="page-top"
	onLoad="highlight_menu('#login','#fed136'),highlight_menu('#contact','#fff')">

	<!-- Navigation -->
	<%@include file="../includes/navbar_menu.jsp"%>

	<header class="masthead_internal"> </header>


	<div class="container">
		<h1>Sign Up</h1>
		<p>Please fill in this form to create an account.</p>
		<hr>
		<form action="${pageContext.request.contextPath}/addPerson"
			method="post">
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputFirstName">First Name</label> <input type="text"
						name="inputFirstName" class="form-control" id="inputFirstName"
						placeholder="Please Enter First Name">
				</div>
				<div class="form-group col-md-6">
					<label for="inputLastName">Last Name</label> <input type="text"
						name="inputLastName" class="form-control" id="inputLastName"
						placeholder="Please Enter Last Name">
				</div>
			</div>
			<div class="form-group">
				<label for="inputDateOfBirth">Date of birth</label> <input
					type="text" name="inputDateOfBirth" class="form-control"
					id="inputDateOfBirth" placeholder="Please enter Date of Birth">
			</div>
			<div class="form-group">
				<label for="inputGender">Gender</label> <input type="text"
					name="inputGender" class="form-control" id="inputGender"
					placeholder="Please enter Female or Male">
			</div>
			<div class="form-group">
				<label for="inputTitle">Title</label> <input type="text"
					name="inputTitle" class="form-control" id="inputTitle"
					placeholder="Please enter (Customer, Front desk, Delivery driver or Management)">
			</div>

			<div class="form-group">
				<label for="inputPhone">Mobile Phone</label> <input type="text"
					name="inputPhone" class="form-control" id="inputPhone"
					placeholder="Please enter phone number">
			</div>


			<div class="form-group">
				<label for="inputEmail">Email</label> <input type="text"
					name="inputEmail" class="form-control" id="inputEmail"
					placeholder="Email" placeholder="Please enter Email">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Password</label> <input type="password"
					name="inputPassword4" class="form-control" id="inputPassword4"
					placeholder="Please enter Password minimun of 4 characters">
			</div>
			<div class="form-group col-md-6">
				<label for="inputPassword4">Repeat Password</label> <input
					type="password" class="form-control" id="inputPassword4"
					name="inputPassword4" placeholder=" Please Repeat Password">
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
						placeholder="Please Enter City">>
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
		</form>
	</div>

	<%@include file="../includes/footer.jsp"%>
</body>


</html>

