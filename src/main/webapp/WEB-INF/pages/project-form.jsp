<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	background-color: lightblue;
}

#main {
	width: 600px;
	height: 260px;
	margin-left: auto;
	margin-right: auto;
	border-radius: 5px;
	padding-left: 10px;
	margin-top: 100px;
	border-top: 3px double #f1f1f1;
	border-bottom: 3px double #f1f1f1;
	padding-top: 20px;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<link
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
<title>New/Edit Project</title>
</head>
<body>
	<div class="container">
		<div class="col-md-5">
			<div class="form-area">
				<form:form id="inputForm" action="saveProject" method="post"
					modelAttribute="project">
					<form:hidden path="id" />
					<br style="clear: both">
					<h4 style="margin-bottom: 25px; text-align: center;">New/Edit
						Project</h4>
					<p>Please enter values in all the fields.</p>

					<table>
						<tr>
							<td><b>projectName:</b></td>
							<td><input type='text' name='projectName'></td>
						</tr>
						<tr>
							<td><b>plannedStartDate:</b></td>
							<td><input type='date' name='plannedStartDate'
								placeholder="yyyy-mm-dd"></td>
						</tr>
						<tr>
							<td><b>plannedFinishedDate:</b></td>
							<td><input type='date' name='plannedFinishedDate'
								placeholder="yyyy-mm-dd"></td>
						</tr>
						<tr>
							<td><b>description:</b></td>
							<td><input type='text' name='description'></td>
						</tr>
						<tr>
							<td><b>procedure1:</b></td>
							<td><input type='text' name='procedure1'></td>
						</tr>
						<tr>
							<td><b>createdDate:</b></td>
							<td><input type='date' name='createdDate'
								placeholder="yyyy-mm-dd"></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" name="save" value="Save"
								class="btn btn-primary pull-right"></td>
						</tr>
						</form:form>
						<span></span>
						<p>
							Revert to projects list&nbsp;<a href="./">here</a>
						</p>
						</div>
						</div>
						</div>
</body>
</html>