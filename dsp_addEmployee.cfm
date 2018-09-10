<html>
<form method="Post" action="act_addEmployee.cfm">

<table cellpadding="3" cellspacing="1">
    <tr>
        <th>Company ID</th>
        <td><input name="intCompanyID" type="text" validate="integer"></input></td>
    </tr>
    <tr>
        <th>First Name</th>
        <td><input name="vcFirstName" type="text"></input></td>
    </tr>
    <tr>
        <th>Last Name</th>
        <td><input name="vcLastName" type="text"></input></td>
    </tr>
    <tr>
		<td colspan="1"><input type="submit" name="submit" value="submit"></td>
		<td colspan="1"><a href="dsp_index.cfm"><input type="button" name="cancel" value="cancel"></a></td>
	</tr>
</table>
</form>
</html>