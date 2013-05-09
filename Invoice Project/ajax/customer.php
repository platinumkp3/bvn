<?php


include('../functions/phpfunctions.php');


$switchtype = $_POST['switchtype'];

switch($switchtype)
{
	case 'save':
	{
		$customername = $_POST['customername'];
		$address = $_POST['address'];
		$state = $_POST['state'];
		$district = $_POST['district'];
		$pincode = $_POST['pincode'];
		$fax = $_POST['fax'];
		$stdcode = $_POST['stdcode'];
		$phone = $_POST['phone'];
		$cell = $_POST['cell'];
		$email = $_POST['email'];
		$datecteated = $_POST['datecteated']." 00:00:00";
		$pan = $_POST['pan'];
		$tin = $_POST['tin'];
		
		$query = "Insert into inv_customer(name,address,district, state,pincode,stdcode,phone,cell,email,fax,createddate,pan,tin) values ('".$customername."','".$address."',".$district.",".$state.",".$pincode.",'".$stdcode."',".$phone.",'".$cell."','".$email."','".$fax."','".$datecteated."','".$pan."','".$tin."');";
		$result = runmysqlquery($query);
		$responsearray1['errorcode'] = "1";
		$responsearray1['errormessage'] = "Customer added Successfully";
		echo(json_encode($responsearray1));
	}
	break;
	
	case 'update':
	{
		$customerid = $_POST['customerid'];
		$customername = $_POST['customername'];
		$address = $_POST['address'];
		$state = $_POST['state'];
		$district = $_POST['district'];
		$pincode = $_POST['pincode'];
		$fax = $_POST['fax'];
		$stdcode = $_POST['stdcode'];
		$phone = $_POST['phone'];
		$cell = $_POST['cell'];
		$email = $_POST['email'];
		$datecteated = $_POST['datecteated']." 00:00:00";
		$pan = $_POST['pan'];
		$tin = $_POST['tin'];
						
		$query = "update inv_customer set name='".$customername."',address='".$address."',district=".$district.", state=".$state.",pincode=".$pincode.",stdcode='".$stdcode."',phone=".$phone.",cell='".$cell."',email='".$email."',fax='".$fax."',createddate='".$datecteated."',pan='".$pan."',tin='".$tin."' where customerid=".$customerid.";";		
		$result = runmysqlquery($query);
		$responsearray1['errorcode'] = "1";
		$responsearray1['errormessage'] = "Customer updated Successfully";
		echo(json_encode($responsearray1));
	}
	break;
	
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
	
	case 'customerdetailstoform':
	{
		$customerid=$_POST['customerid'];
		$generateproductlistarray=array();
		$query = "select * from inv_customer where customerid=".$customerid.";";
		$result = runmysqlquery($query);
		$c=mysql_num_rows($result);
		if($c>0)
		{
			$fetch = mysql_fetch_array($result);
			
			$customerdetailstoformarray['errorcode'] = '1';
			$customerdetailstoformarray['customerid'] = $fetch['customerid'];
			$customerdetailstoformarray['cname'] = $fetch['name'];
			$customerdetailstoformarray['address'] = $fetch['address'];
			$customerdetailstoformarray['district'] = $fetch['district'];
			$customerdetailstoformarray['state'] = $fetch['state'];
			$customerdetailstoformarray['pincode'] = $fetch['pincode'];
			$customerdetailstoformarray['stdcode'] = $fetch['stdcode'];
			$customerdetailstoformarray['phone'] = $fetch['phone'];
			$customerdetailstoformarray['cell'] = $fetch['cell'];
			$customerdetailstoformarray['email'] = $fetch['email'];
			$customerdetailstoformarray['fax'] = $fetch['fax'];
			$customerdetailstoformarray['createddate'] = $fetch['createddate'];
			$customerdetailstoformarray['pan'] = $fetch['pan'];
			$customerdetailstoformarray['tin'] = $fetch['tin'];
		}
		else
		{
			$customerdetailstoformarray['errorcode'] = '2';
			$customerdetailstoformarray['customerid'] = '';
			$customerdetailstoformarray['name'] = '';
			$customerdetailstoformarray['address'] = '';
			$customerdetailstoformarray['district'] = '';
			$customerdetailstoformarray['state'] = '';
			$customerdetailstoformarray['pincode'] ='';
			$customerdetailstoformarray['stdcode'] = '';
			$customerdetailstoformarray['phone'] = '';
			$customerdetailstoformarray['cell'] ='';
			$customerdetailstoformarray['email'] = '';
			$customerdetailstoformarray['fax'] = '';
			$customerdetailstoformarray['createddate'] = '';
			$customerdetailstoformarray['pan'] = '';
			$customerdetailstoformarray['tin'] = '';
		}
		echo(json_encode($customerdetailstoformarray));
	}
	break;
	
	case 'delete':
	{
		$customerid=$_POST['customerid'];
		$query = "select * from inv_customer where customerid=".$customerid.";";
		$result = runmysqlquery($query);
		$c=mysql_num_rows($result);
		if($c>0)
		{
			$query1 = "delete from inv_customer where customerid=".$customerid.";";
			$result1 = runmysqlquery($query1);
			$responsearray1['errorcode'] = '1';
			$responsearray1['errormessage'] = "Customer removed Successfully";
		}
		else
		{
			$responsearray1['errorcode'] = '2';
			$responsearray1['errormessage'] = "Customer not found";
		}
		echo(json_encode($responsearray1));
	}
	break;
	
}