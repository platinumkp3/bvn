<?
	$query = "SELECT districtcode,districtname FROM inv_mas_district order by districtname;";
	$result = runmysqlquery($query);
	while($fetch = mysql_fetch_array($result))
	{
		echo('<option value="'.$fetch['districtcode'].'">'.$fetch['districtname'].'</option>');
	}
?>
