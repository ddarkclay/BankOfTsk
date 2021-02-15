<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<title>Transfer Money here</title>

<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>

</head>
<body>

<table id="customers">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email Address</th>
    <th>Balance</th>
  </tr>
  <tr>
    <td>${id }</td>
    <td>${Name }</td>
    <td>${Email }</td>
    <td>${Balance }</td>
  </tr>
  </table>


<h1 style=" text-align: center ; color:red; margin-bottom: 25px;">Sender Name :
  ${Name }
  </h1>





<div class="card text-center"
		style="width: 500px; margin-left: auto; margin-right: auto;">
		<article class="card-body">
			<h4 class="card-title text-center mb-4 mt-1">Transfer Money</h4>
			<hr>
			<p class="text-primary text-center">Enter Money To Send User Here</p>
			
			<form action="To/${id }" method="post">
				<div class="form-group">
					<div class="input-group">
				
						<label for="lname">Receiver Name</label><br>
						<input name="rName" class="form-control"
							placeholder="Enter a Name" type="text">
					</div>
				</div>

				
				
				<div class="form-group">
					<div class="input-group">
						<label for="lname">Balance</label><br>
						<input name="balance" class="form-control"
							placeholder="Enter a Amount " type="text">
						<small class="form-text text-muted text-danger">Amount Will be More Than 100.</small>
							
					</div>
				</div>

				<div class="form-group">
								<button type="submit" class="btn btn-primary  text-center">
					Send</button>
				
				
	</div>
	</form>
	</article>
	</div>
	


	

	














<%-- 


<form action="To/${id }" method="post">

  
  
  <label for="lname">receiver Name</label><br>
  <input type="text" id="lname" name="rName"><br>
  
  <label for="fname">Amount</label><br>
  <input type="text" id="fname" name="balance"><br><br>
    
    <input type="submit" value="Tansfer">
</form> 

 --%>

</body>
</html>