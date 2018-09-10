<cfif #form.Name# IS "Zach" and #form.Password# IS "Matthiesen">
	<cfset session.Name = form.Name>				<!--- SESSION SCOPE --->
	<cfset session.Password = form.Password>
	
	<cflocation url="dsp_index.cfm">
<cfelse>
	<cflocation url="index.cfm">
</cfif>
