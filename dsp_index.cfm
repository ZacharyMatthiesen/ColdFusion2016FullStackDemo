<html>
<head>
<title>Home Page.</title>
<style type="text/css">
	body {
	background: #FFFFFF;
	font: 0.8em/1.6em "Lucida Grande", Lucida, Verdana, sans-serif;
	}
	h3 {
	color: #FF9933;
	}
</style>
</head>
<body>

<cfoutput>

<cfquery name="dspEmployees"> 
	Select [EmployeeID], [FirstName], [LastName] From dbo.Employees 
</cfquery>


<cfloop index ="i" from="1" to="#dspEmployees.recordCount#">
	
	<cfset URL> 
	<cfoutput>
		<li>
			<a href= "dsp_employee.cfm?IntEmployeeId=#dspEmployees["EmployeeID"][i]#">
				#dspEmployees["LastName"][i]#
				#dspEmployees["FirstName"][i]#
			</a>
			<a href="dsp_editEmployee.cfm?IntEmployeeId=#dspEmployees["EmployeeID"][i]#">
				edit
			</a>
			<a href="dsp_deleteEmployee.cfm?IntEmployeeId=#dspEmployees["EmployeeID"][i]#">
				delete
			</a>
		</li>
	</cfoutput>
</cfloop>

<a href="dsp_addEmployee.cfm">
	Add an employee
</a>

</cfoutput>

<h3>Welcome<cfoutput> #session.Name#</cfoutput></h3>		

</body>
</html>