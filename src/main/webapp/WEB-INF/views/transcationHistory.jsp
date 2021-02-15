<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="UTF-8"  isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<link rel="stylesheet"href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js" />"></script> 
<title>Transaction History</title>
</head>
<body>


 <div class="hero  ">
		<div class="container ">

			<h1 class="text-center mb-3 ml-20 pt-5">Transaction History</h1>

			<table class="table table-dark text-center">
				<thead class="thead-dark">
					<tr>
						<th scope="col">id</th>
						<th scope="col">Sender Name</th>
						<th scope="col">Receiver Name</th>
				        <th scope="col">Amount</th>
						<th scope="col">Date And Time</th>

					</tr>
				</thead>

				<tbody>
					<c:forEach items="${allList }" var="p">
						<tr>
							<th scope="row">${p.id }</th>
  							<td>${p.sname } </td> 
 							<td>${p.rname }</td>
							<td>${p.amount }</td> 
							<td>${p.ldt }</td> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			
</div>
</div>


<p class="text-center "><a href="${pageContext.request.contextPath }" class="btn btn-danger">Back</a></p>

</body>
</html>