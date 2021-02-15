<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@include file="./base.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
</head>
<body>
<h1 class="text-center mb-3 ml-20 pt-5 text-success">
User
     ${userName}
     is Created
</h1>
  <div class="text-center">
  <a href="${pageContext.request.contextPath }"
  class="btn btn-danger ">Back
  </a>
  </div>
  
</body>
</html>