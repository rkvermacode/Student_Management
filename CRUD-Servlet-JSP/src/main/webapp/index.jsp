<%@page import="java.sql.*"%>
<%@ page import="com.conn.DBConnection"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Student"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored = "false" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">


<title>CRUD Application</title>
<%@include file="all_css.jsp"%>
</head>

<body class="bg-light">


	<%@include file="navbar.jsp"%>



	<div class="conatiner p-3">

		<div class="card">
			<div class="card-body">

				<p class="text-center fs-1">All Students Details</p>

				<c:if test="${not empty succMsg }">
					<p class="text-center text-success">${succMsg }</p>
					<c:remove var="succMsg" />
				</c:if>

				<c:if test="${not empty errorMsg }">
					<p class="text-center text-success">${errorMsg }</p>
					<c:remove var="errorMsg" />
				</c:if>

				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Date of Birth</th>
							<th scope="col">Address</th>
							<th scope="col">Qualification</th>
							<th scope="col">Email Address</th>
							<th scope="col">Action</th>

						</tr>
					</thead>
					<tbody>

						<%
						StudentDAO dao = new StudentDAO(DBConnection.getConn());
						List<Student> list = dao.getAllStudent();
						for (Student s : list) {
						%>
						<tr>
							<th scope="row"><%=s.getName()%></th>
							<td><%=s.getDob()%></td>
							<td><%=s.getAddress()%></td>
							<td><%=s.getQualification()%></td>
							<td><%=s.getEmail()%></td>
							<td><a href="edit_student.jsp?id=<%=s.getId()%>"
								class="btn btn-sm btn-primary">Edit</a> <a href="delete?id=<%=s.getId() %>"
								class="btn btn-sm btn-danger ms-1">Delete</a></td>

						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</div>
	</div>


</body>

</html>