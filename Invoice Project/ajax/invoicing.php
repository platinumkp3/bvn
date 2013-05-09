<?php

include('../functions/phpfunctions.php');

$switchtype = $_POST['switchtype'];

switch($switchtype)
{
	case 'customerlist':
	{
		$generateproductlistarray=array();
		$query = "select * from inv_customer;";
		$result = runmysqlquery($query);
		$c=mysql_num_rows($result);
		$count = 0;
		if($c>0)
		{
			while($fetch = mysql_fetch_array($result))
			{
				$generatecustomerlistarray[$count] = $fetch['name'].'^'.$fetch['customerid'];
				$count++;
			}
		}
		echo(json_encode($generatecustomerlistarray));
	}
	break;
	
}

?>