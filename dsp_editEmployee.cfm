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

<cfoutput>
    <form method="Post" action="act_editEmployee.cfm?EmployeeID=#URL.IntEmployeeId#">
</cfoutput>
<cfoutput query="GetEmployeeInfo">
    <tr>
        <th>Company ID</th>
        <td><input name="intCompanyID" type="text" value=#CompanyID# validate="integer"></input></td>
    </tr>
	<tr>
		<th>Employee ID</th>
		<td><input name="intEmployeeID" value=#EmployeeID# readonly></input></td>
	</tr>
	<tr>
		<th>First Name</th>
		<td><input name="vcFirstName" value=#FirstName#></input></td>
	</tr>
	<tr>
		<th>Last Name</th>
		<td><input name="vcLastName" value=#LastName#></input></td>
	</tr>
    <tr>
        <td colspan="1"><input type="submit" name="submit" value="submit"></td>
		<td colspan="1"><a href="dsp_index.cfm"><input type="button" name="cancel" value="cancel"></a></td>
    </tr>
</cfoutput>
</form>

</table>


<p><a href="dsp_index.cfm">Home</a></p>

</body>
</html>