<html>
<head>
	<title>Login</title>
	<style type="text/css">
	body {
	background: #FFFFFF;
	font: 0.8em/1.6em "Lucida Grande", Lucida, Verdana, sans-serif;
	color: #5F5F5F;
	}
	h3 {
	color: #FF9933;
	}
	table {
	background-color: #EEEEEE;
	border: medium solid #DDDDDD;
	}
	td {
	background-color: #EEEEEE;
	font: 0.8em/1.6em "Lucida Grande", Lucida, Verdana, sans-serif;
	}
</style>
</head>

<body>
<h1>exercise_1.0</h1>
<h3>Login</h3>
<div align="center">
	
	<form action="act_validate.cfm" method="post">
	
	<table>
		<tr>
			<td>Username:</td>
			<td><input type="text" name="Name" size="25" maxlength="50"></td>
		</tr>
		<tr>																				
			<td>Password:</td>
			<td><input type="Password" name="Password" size="25" maxlength="50"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" name="submit" value="submit"></td>
		</tr>
	</table>
	</form>
</div>
</body>
</html>