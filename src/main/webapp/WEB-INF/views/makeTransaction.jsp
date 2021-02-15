<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/script.js"/>"></script>

<meta charset="ISO-8859-1">
<title>Transfer Money</title>
</head>
<body>
<div class="hero  ">
		<div class="container ">

			<h1 class="text-center mb-3 ml-20 pt-5">Transfer Money</h1>

			<table class="table table-dark text-center">
				<thead class="thead-dark">
					<tr>
						<th scope="col">id</th>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Balance</th>
						<th scope="col">Transfer</th>

					</tr>
				</thead>

				<tbody>
					<c:forEach items="${allList }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
							<td>${p.cname }</td>
							<td>${p.email }</td>
							<td>${p.balance }</td>
							<td>
								<a href="update/${p.id }">
									<i class="fas fa-hand-holding-usd" 
									style="font-size: 30px">
									</i>
								</a>
							</td>

						</tr>
					</c:forEach>
		
				</tbody>
		
			</table>
			
		
			
	</div>
</div>
<p class="text-center "><a href="${pageContext.request.contextPath }" class="btn btn-danger">Back</a></p> 
</body>
</html>