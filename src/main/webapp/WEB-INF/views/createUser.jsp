<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<title>Create User</title>
</head>
<body>

	<div style="background-color: rgb(19, 77, 0);">
		<div class="card text-center"
			style="width: 500px; margin-left: auto; margin-right: auto;">
			<article class="card-body">
				<h4 class="card-title text-center mb-4 mt-1">Create User</h4>
				<hr>
				<p class="text-primary text-center">Enter User Here</p>

				<form action="userSucces" method="post">
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-user"></i>
								</span>
							</div>
							<input name="cname" class="form-control"
								placeholder="Enter a Name" type="text">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text"> <i class="fa fa-envelope"></i>
								</span>
							</div>
							<input name="email" class="form-control"
								placeholder="Enter a Email Address" type="email">
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">

							<input name="balance" class="form-control"
								placeholder="Enter a Amount " type="text"> <small
								class="form-text text-muted text-danger">Amount Will be
								More Than 2000.</small>
						</div>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary  text-center">
							Create</button>
						<a href="${pageContext.request.contextPath }"
							class="btn btn-danger"> Back </a>


					</div>
				</form>
			</article>
		</div>




	</div>



</body>
</html>