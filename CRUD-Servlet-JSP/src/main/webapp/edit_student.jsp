<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.dao.StudentDAO" %>
<%@page import="com.conn.DBConnection" %>
<%@page import="com.entity.Student" %>
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
						<p class="fs-3 text-center">Edit Student</p>
						
						
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						StudentDAO dao = new StudentDAO(DBConnection.getConn());
						Student s = dao.getSudentById(id);
						%>

						<form action="update" method="post">

							<div class="mb-3">
								<label class="form-label">Full Name</label> <input value="<%=s.getName() %>" type="text"
									class="form-control" name="name">
							</div>

							<div class="mb-3">
								<label class="form-label">Date of Birth</label> <input value="<%=s.getDob() %>"
									type="date" class="form-control" name="dob">
							</div>

							<div class="mb-3">
								<label class="form-label">Address</label> <input value="<%=s.getAddress() %>" type="text"
									class="form-control" name="address">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input value="<%=s.getQualification() %>"
									type="text" class="form-control" name="qualification">
							</div>

							<div class="mb-3">
								<label class="form-label">Email address</label> <input value="<%=s.getEmail() %>"
									type="email" class="form-control" name="email">
							</div>
							
							<input value="<%=s.getId() %>" type="hidden" name="id">

							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>