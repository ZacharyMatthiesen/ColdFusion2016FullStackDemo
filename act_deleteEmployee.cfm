<cfquery name="deleteEmployee">
    Delete From [dbo].[Employees]
    WHERE EmployeeID=#URL.EmployeeID#
</cfquery>