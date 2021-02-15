<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="ISO-8859-1">
<title>Transfering Money</title>
</head>
<body>


<h1 class="text-center mb-3 ml-20 pt-5 text-success">
Money is Sended To
${thl }
</h1>
<div class="container text-center">
			<a href="${pageContext.request.contextPath }"
				class="btn btn-danger">Back </a>
			
		</div>
</body>
</html>