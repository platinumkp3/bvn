<?php


include('../functions/phpfunctions.php');


$switchtype = $_POST['switchtype'];

switch($switchtype)
{
	case 'save':
	{
		$productname = $_POST['productname'];
		$quantity = $_POST['quantity'];
		$price = $_POST['price'];
		$notinuse = $_POST['notinuse'];
		$dealer = $_POST['dealer'];
		$purchasedate = $_POST['purchasedate'];
		$expirydate = $_POST['expirydate'];
		$stockdate = $_POST['stockdate'];
		
		$query = "Insert into inv_products(name,quantity,price,dealer, purchasedate,expirydate,stockdate,notinuse) values ('".$productname."','".$quantity."','".$price."','".$dealer."','".$purchasedate."','".$expirydate."','".$stockdate."','".$notinuse."');";
		$result = runmysqlquery($query);
		$responsearray1['errorcode'] = "1";
		$responsearray1['errormessage'] = "Product Saved Successfully";
		echo(json_encode($responsearray1));
	}
	break;
	
	case 'update':
	{
		$prdid=$_POST['prdid'];
		$productname = $_POST['productname'];
		$quantity = $_POST['quantity'];
		$price = $_POST['price'];
		$notinuse = $_POST['notinuse'];
		$dealer = $_POST['dealer'];
		$purchasedate = $_POST['purchasedate'];
		$expirydate = $_POST['expirydate'];
		$stockdate = $_POST['stockdate'];
		
		$query = "update inv_products set name='".$productname."',quantity='".$quantity."',price='".$price."',dealer='".$dealer."', purchasedate='".$purchasedate."',expirydate='".$expirydate."',stockdate='".$stockdate."',notinuse='".$notinuse."' where prdid=".$prdid.";";
		
		$result = runmysqlquery($query);
		$responsearray1['errorcode'] = "1";
		$responsearray1['errormessage'] = "Product updated Successfully";
		echo(json_encode($responsearray1));
	}
	break;
	
	case 'productlist':
	{
		$generateproductlistarray=array();
		$query = "select * from inv_products;";
		$result = runmysqlquery($query);
		$c=mysql_num_rows($result);
		$count = 0;
		if($c>0)
		{
			while($fetch = mysql_fetch_array($result))
			{
				$generateproductlistarray[$count] = $fetch['name'].'^'.$fetch['prdid'];
				$count++;
			}
		}
		echo(json_encode($generateproductlistarray));
	}
	break;
	
	case 'productdetailstoform':
	{
		$prdid=$_POST['prdid'];
		$generateproductlistarray=array();
		$query = "select * from inv_products where prdid=".$prdid.";";
		$result = runmysqlquery($query);
		$c=mysql_num_rows($result);
		$count = 0;
		if($c>0)
		{
			$fetch = mysql_fetch_array($result);
			
			$productdetailstoformarray['errorcode'] = '1';
			$productdetailstoformarray['prdid'] = $fetch['prdid'];
			$productdetailstoformarray['name'] = $fetch['name'];
			$productdetailstoformarray['quantity'] = $fetch['quantity'];
			$productdetailstoformarray['price'] = $fetch['price'];
			$productdetailstoformarray['dealer'] = $fetch['dealer'];
			$productdetailstoformarray['purchasedate'] = $fetch['purchasedate'];
			$productdetailstoformarray['expirydate'] = $fetch['expirydate'];
			$productdetailstoformarray['stockdate'] = $fetch['stockdate'];
			$productdetailstoformarray['notinuse'] = $fetch['notinuse'];
		}
		else
		{
			$productdetailstoformarray['errorcode'] = '2';
			$productdetailstoformarray['name'] = '';
			$productdetailstoformarray['quantity'] = '0';
			$productdetailstoformarray['price'] = '0';
			$productdetailstoformarray['dealer'] = '';
			$productdetailstoformarray['purchasedate'] = 'dd/mm/YYYY';
			$productdetailstoformarray['expirydate'] = 'dd/mm/YYYY';
			$productdetailstoformarray['stockdate'] = 'dd/mm/YYYY';
			$productdetailstoformarray['notinuse'] = 0;
		}
		echo(json_encode($productdetailstoformarray));
	}
	break;
}