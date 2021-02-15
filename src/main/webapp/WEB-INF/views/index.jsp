
<html>
<head>
<%@include file="./base.jsp"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js" />"></script>
<title>Home</title>
</head>
<body>

	<div class="back">
		<div class="" id="pB">

			<table class="table">

				<thead>
					<tr>

						<th scope="col"><img src="resources/images/Cuser.png"
							alt="5 Terre"
							style="margin-left: auto; margin-right: auto; width: 20%;">
						</th>
						<th scope="col"><img src="resources/images/Tmoney.jpg"
							alt="5 Terre" style="margin-left: auto; width: 10%;"></th>
						<th scope="col"><img src="resources/images/Tlist.jpg"
							alt="5 Terre" style="width: 10%"></th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><a href="createUser"
							class="btn btn-outline-primary btn-lg">Create User</a></th>
						<td><a href="makeTransaction"
							class="btn btn-outline-primary btn-lg">Make a Transaction</a></td>
						<td><a href="transcationHistory"
							class="btn btn-outline-primary btn-lg">Transaction History </a></td>

					</tr>
				</tbody>
			</table>

		</div>
	</div>


</body>
</html>
