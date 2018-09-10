<html>
<head>
<title>Employee Detail</title>
</head>

<body>
<cfoutput>

<h3>Employee Detail</h3>
<cfquery name="GetEmployeeInfo">
	SELECT *
	FROM dbo.Employees
	WHERE EmployeeID = #URL.IntEmployeeId# 							<!--- URL SCOPE --->
</cfquery>

</cfoutput>

<table cellpadding="3" cellspacing="1">

<cfoutput query="GetEmployeeInfo">
	<tr>
		<th>Employee ID</th>
		<td>#EmployeeID#</td>
	</tr>
	<tr>
		<th>First Name</th>
		<td>#FirstName#</td>
	</tr>
	<tr>
		<th>Last Name</th>
		<td>#LastName#</td>
	</tr>
</cfoutput>
</table>

<cfoutput query="GetEmployeeInfo">
    <p>Do you really want to delete #FirstName#?</p>
    <p><a href="act_deleteEmployee.cfm?EmployeeID=#intEmployeeID#"> Click here to terminate #FirstName#</a></p>
</cfoutput>

<p><a href="dsp_index.cfm">Home</a></p>

</body>
</html>