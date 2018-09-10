<cfoutput>
<h2>Try to Insert row...</h2>
<cfset commitIt="Yes">
<cftransaction action="BEGIN">
<cftry><!--- Try running this stored procedure --->
<!--- If it fails, it will jump down to the      CFCATCH statement --->
<!--- Use Native Driver --->

#form.vcFirstName#
#form.vcLastName#
#form.intCompanyID#

<cfquery name="insData"> 
	INSERT INTO [dbo].[Employees](LastName, FirstName, CompanyID)   
	VALUES ('#form.vcLastName#', '#form.vcFirstName#', '#form.intCompanyID#');
</cfquery>

<cfif commitIt EQ "Yes">
<p>INSERT ran okay, Commit transaction</p>
<cftransaction action="COMMIT" />
</cfif><!--- If the Stored Procedure FAILS,      Catch it here --->\
<!--- and tell them what went wrong --->
<cfcatch type="Database">
<h3>Oops, You've thrown a database error</h3>
Message :#CFCATCH.message# 
<p> Type :#CFCATCH.type# <p>
</cfcatch>
</cftry>
<cfset commitIt = "No">
<p><i>Rolling back the attempted transaction</i></p>
<cftransaction action="ROLLBACK" />
</cftransaction>
</cfoutput>

<a href="dsp_index.cfm"> Click Here to go back to the employee list </a>

