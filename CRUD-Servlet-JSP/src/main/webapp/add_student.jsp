<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Student</title>
<%@include file="all_css.jsp"%>
</head>
<body class="bg-light">

	<%@include file="navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Student</p>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-success">${errorMsg }</p>
							<c:remove var="errorMsg" />
						</c:if>

						<form action="register" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" name="name">
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label> <input
									type="date" class="form-control" name="dob">
							</div>

							<div class="mb-3">
								<label class="form-label">Address</label> <input type="text"
									class="form-control" name="address">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input
									type="text" class="form-control" name="qualification">
							</div>

							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									type="email" class="form-control" name="email">
							</div>


							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>