<?php
if(file_exists("../inc/dbconfig.php"))
	include('../inc/dbconfig.php');
elseif(file_exists("../../inc/dbconfig.php"))
	include('../../inc/dbconfig.php');
else
	include('./inc/dbconfig.php');

$newconnection = mysql_connect($dbhost, $dbuser, $dbpwd) or die("Cannot connect to Mysql server host");

function runmysqlquery($query)
{
	global $newconnection;
	global $dbname;
	
	//Connect to Database
	mysql_select_db($dbname,$newconnection) or die("Cannot connect to database");
	set_time_limit(3600);
	//Run the query
	$result = mysql_query($query,$newconnection) or die(" run Query Failed in Runquery function1.".$query); //;
	
	//Return the result
	return $result;
}

function runmysqlqueryfetch($query)
{
	global $newconnection;
	global $dbname;

	//Connect to Database
	mysql_select_db($dbname,$newconnection) or die("Cannot connect to database");
	set_time_limit(3600);
	//Run the query
	$result = mysql_query($query,$newconnection) or die(" run Query Failed in Runquery function1.".$query); //;
	
	//Fetch the Query to an array
	$fetchresult = mysql_fetch_array($result) or die("Cannot fetch the query result.".$query);
	
	//Return the result
	return $fetchresult;
}

function getpagelink($linkvalue)
{
	switch($linkvalue)
	{
		case 'products':return '../main/products.php'; break;
		case 'customer': return '../main/customer.php'; break;
		case 'invoicing': return '../main/invoicing.php'; break;
		default: return '../main/dashboard.php'; break;
	}
}

function getpagetitle($linkvalue)
{
	switch($linkvalue)
	{
		case 'products':return 'Invoice Master : Product Details'; break;
		case 'customer': return 'Invoice Master : Customer Master'; break;
		case 'invoicing': return 'Invoice Master : Invoicing'; break;
		default: return 'Invoice Master : Dashboard'; break;
	}
}
?>