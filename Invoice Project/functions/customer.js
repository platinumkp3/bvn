var customerarray = new Array();
var flag=false;
function saveCustomer()
{
	var form = $("#submitform" );
	var error = $("#form-error" );
	error.html('');
	var passData = "";
	var field = $("#cname" );
	if(!field.val()) { error.html(errormessage("Enter the Customer Name. ")); field.focus(); return false; }
	var field = $("#address" );
	if(!field.val()) { error.html(errormessage("Enter Address. ")); field.focus(); return false; }
	var field = $("#state" );
	if(!field.val()){ error.html(errormessage("Select State. ")); field.focus(); return false; }
	var field = $("#district" );
	if(!field.val()){ error.html(errormessage("Select District. ")); field.focus(); return false; }
	var field = $("#pincode" );
	if(!field.val()) { error.html(errormessage("Enter the Pincode number. ")); field.focus(); return false; }
	else
	{
		var error=validateZIP(field.val());
		if(error!=0)
		{
			if(error==1)
			{
				$("#form-error" ).html(errormessage("Please enter zip code of 6 digit. ")); 
				//alert('Please enter zip code of 6 digit.');
				$("#pincode" ).focus(); 
				return false;
			}
			else if(error==2)
			{
				//error.html(errormessage("Please enter valid digit 0-9. "));
				$("#form-error" ).html(errormessage("Please enter valid digit 0-9. "));   
				$("#pincode" ).focus(); 
				return false;
			}
		}
	}
/*	var field = $("#fax" );
    if(field.val()!='')
	{
		if(!validateFax(field.val())) { 
			$("#form-error" ).html(errormessage("Enter valid Fax number. "));
			$("#pincode" ).focus(); 
			return false; 
		}
	}*/

	var field = $("#customerid" );
	if(field.val() == '')
	{
		passData =  "switchtype=save&customername=" + encodeURIComponent($("#cname").val()) + "&address=" + encodeURIComponent($("#address").val())  + "&state=" + encodeURIComponent($("#state").val()) + "&district=" + encodeURIComponent($("#district").val()) + "&pincode=" + encodeURIComponent($("#pincode").val()) + "&fax=" + encodeURIComponent($("#fax").val()) + "&stdcode=" + encodeURIComponent($("#stdcode").val()) + "&phone=" + encodeURIComponent($("#phone").val()) + "&cell=" + encodeURIComponent($("#cell").val()) + "&email=" + encodeURIComponent($("#email").val()) + "&datecteated=" + encodeURIComponent($("#datecteated").val()) + "&pan=" + encodeURIComponent($("#pan").val()) + "&tin=" + encodeURIComponent($("#tin").val()) + "&dummy=" + Math.floor(Math.random()*100000000);
	}
	else
	{
		passData =  "switchtype=update&customerid=" + encodeURIComponent($("#customerid").val()) + "&customername=" + encodeURIComponent($("#cname").val()) + "&address=" + encodeURIComponent($("#address").val())  + "&state=" + encodeURIComponent($("#state").val()) + "&district=" + encodeURIComponent($("#district").val()) + "&pincode=" + encodeURIComponent($("#pincode").val()) + "&fax=" + encodeURIComponent($("#fax").val()) + "&stdcode=" + encodeURIComponent($("#stdcode").val()) + "&phone=" + encodeURIComponent($("#phone").val()) + "&cell=" + encodeURIComponent($("#cell").val()) + "&email=" + encodeURIComponent($("#email").val()) + "&datecteated=" + encodeURIComponent($("#datecteated").val()) + "&pan=" + encodeURIComponent($("#pan").val()) + "&tin=" + encodeURIComponent($("#tin").val()) + "&dummy=" + Math.floor(Math.random()*100000000);
	}
	
	var queryString = '../ajax/customer.php';
	ajaxcall1 = $.ajax(
	{
		type: "POST",url: queryString, data: passData, cache: false,dataType: "json",
		success: function(ajaxresponse,status)
		{	
			if(ajaxresponse == 'Thinking to redirect')
			{
				//window.location = "../logout.php";
				return false;
			}
			else
			{
				var response = ajaxresponse;
				if(response['errorcode'] == '1')
				{
					$("#form-error" ).html(successmessage(response['errormessage']));
					//gettotalcustomercount();
					clearForm();
					customerlist();
					$('#delete').attr('disabled','disabled');
				}
				else if(response['errorcode'] == '2')
				{
					$("#form-error" ).html(successmessage(response['errormessage']));
					//gettotalcustomercount();
					clearForm();
					customerlist();
					$('#delete').attr('disabled','disabled');
				}
			}
		}, 
		error: function(a,b)
		{
			error.html(scripterror());
		}
	});	
}

function customerlist()
{
	
	var form = $("#submitform" );
	var error = $("#form-error" );
	var passData = "";

	passData =  "switchtype=customerlist&dummy=" + Math.floor(Math.random()*100000000);
	
	var queryString = '../ajax/customer.php';
	ajaxcall1 = $.ajax(
	{
		type: "POST",url: queryString, data: passData, cache: false,dataType: "json",
		success: function(ajaxresponse,status)
		{	
			if(ajaxresponse == 'Thinking to redirect')
			{
				//window.location = "../logout.php";
				return false;
			}
			else
			{
				var response = ajaxresponse;
				customerarray = new Array();
				for( var i=0; i<response.length; i++)
				{
					customerarray[i] = response[i];
				}
				getcustomerlist();
				//$("#totalcustomercount").html(customerarray.length);
			}
		}, 
		error: function(a,b)
		{
			error.html(scripterror());
		}
	});	
}

function getcustomerlist()
{	
	var selectbox = $('#customerlist');
	var numberofcustomers = customerarray.length;
	$('#detailsearchtext').focus();
	var actuallimit = 500;
	//var limitlist = (numberofproducts > actuallimit)?actuallimit:numberofproducts;
	var limitlist = numberofcustomers;
	$('option', selectbox).remove();
	//var options = selectbox.attr('options');
	for( var i=0; i<limitlist; i++)
	{
		var splits = customerarray[i].split("^");
		////options[options.length] = new Option(splits[0], splits[1]);
		$("#customerlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
	}
	flag = true
}

function selectfromlist()
{
	var selectbox = $("#customerlist option:selected").val();
	$('#detailsearchtext').val($("#customerlist option:selected").text());
	$('#detailsearchtext').select();
	customerdetailstoform(selectbox);	
}

function customerdetailstoform(customerid)
{
	if(customerid != '')
	{
	//	$("#productselectionprocess").html('');
		var form = $("#submitform");
		$("#submitform" )[0].reset();
		var passData = "switchtype=customerdetailstoform&customerid=" + encodeURIComponent(customerid) + "&dummy=" + Math.floor(Math.random()*100032680100);//alert(passData)
		$("#form-error").html(getprocessingimage());
		var queryString = "../ajax/customer.php";
		ajaxcall2 = $.ajax(
		{
			type: "POST",url: queryString, data: passData, cache: false,dataType: "json",
			success: function(ajaxresponse,status)
			{	
				if(ajaxresponse == 'Thinking to redirect')
				{
					//window.location = "../logout.php";
					return false;
				}
				else
				{
					$("#form-error").html('');
					var response = ajaxresponse;
					if(response['errorcode'] == '1')
					{
						$("#customerid").val(response['customerid']);
						$("#cname").val(response['cname']);
						$("#address").val(response['address']);
						$("#state").val(response['state']);
						getdistrict('districtcodedisplay', response['state']);
						$("#district").val(response['district']);
						$("#pincode").val(response['pincode']);
						$("#stdcode").val(response['stdcode']);
						$("#phone").val(response['phone']);
						$("#cell").val(response['cell']);
						$("#email").val(response['email']);
						$("#fax").val(response['fax']);
						$("#pan").val(response['pan']);
						$("#tin").val(response['tin']);
						$("#createddate").attr("value",response['createddate'].substring(0,10));
						$('#delete').removeAttr('disabled','disabled');
					}
					else
					{						
						$("#form-error").html(errormessage("No datas found to be displayed."));
					}
				}
			}, 
			error: function(a,b)
			{
				error.html(scripterror());
			}
		});
	}
}

function deletecustomer()
{
	var form = $("#submitform" );
	var error = $("#form-error" );
	error.html('');
	var passData = "";
	var field = $("#customerid" );
	if(!field.val()) { error.html(errormessage("Select Customer. ")); field.focus(); return false; }

	passData =  "switchtype=delete&customerid=" + encodeURIComponent($("#customerid").val()) + "&dummy=" + Math.floor(Math.random()*100000000);
	//alert(passData);
	
	var queryString = '../ajax/customer.php';
	ajaxcall1 = $.ajax(
	{
		type: "POST",url: queryString, data: passData, cache: false,dataType: "json",
		success: function(ajaxresponse,status)
		{	
			if(ajaxresponse == 'Thinking to redirect')
			{
				//window.location = "../logout.php";
				return false;
			}
			else
			{
				var response = ajaxresponse;
				if(response['errorcode'] == '1')
				{
					$("#form-error" ).html(successmessage(response['errormessage']));
					//gettotalcustomercount();
					clearForm();
					customerlist();
					$('#delete').attr('disabled','disabled');
				}
				else if(response['errorcode'] == '2')
				{
					$("#form-error" ).html(successmessage(response['errormessage']));
					//gettotalcustomercount();
					clearForm();
					customerlist();
					$('#delete').attr('disabled','disabled');
				}
			}
		}, 
		error: function(a,b)
		{
			error.html(scripterror());
		}
	});	
}

function clearForm()
{
	$("#customerid").val('');
	$("#cname").val('');
	$("#address").val('');
	$("#state").val('');
	$("#districtcodedisplay" ).html('<select name="district" id="district" style="width:200px;"><option value="">Select A State First</option></select>');
	$("#pincode").val('');
	$("#stdcode").val('');
	$("#phone").val('');
	$("#cell").val('');
	$("#email").val('');
	$("#fax").val('');
	$("#pan").val('');
	$("#tin").val('');    
	var date = new Date();
	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();
	if (month < 10) month = "0" + month;
	if (day < 10) day = "0" + day;
	var today = year + "-" + month + "-" + day;       
	$("#datecteated").attr("value", today);
	$('#delete').attr('disabled','disabled');
}

function customersearch(e)
{ 
	var KeyID = (window.event) ? event.keyCode : e.keyCode;
	if(KeyID == 38)
		scrollcustomer('up');
	else if(KeyID == 40)
		scrollcustomer('down');
	else
	{
		var form = $('#submitform');
		var input = $('#detailsearchtext').val();
		selectacustomer(input);
	}
}

function scrollcustomer(type)
{
	var selectbox = $('#customerlist');
	var totalcus = $("#customerlist option").length;
	var selectedcus = $("select#customerlist").prop('selectedIndex');
	if(type == 'up' && selectedcus > 0 )
		$("select#customerlist").prop('selectedIndex', selectedcus - 1);
	else if(type == 'down' && selectedcus != totalcus)
		$("select#customerlist").prop('selectedIndex', selectedcus + 1);
	selectfromlist();
}

function selectacustomer(input)
{
	var selectbox = $('#customerlist');
	if(flag == true)
	{
		if(input == "")
		{
			getcustomerlist1();
		}
		else
		{
			$('option', selectbox).remove();
			var options = selectbox.attr('options');
			var addedcount = 0;
			for( var i=0; i < customerarray.length; i++)
			{
					if(input.charAt(0) == "%")
					{
						withoutspace = input.substring(1,input.length);
						pattern = new RegExp(withoutspace.toLowerCase());
						comparestringsplit = customerarray[i].split("^");
						comparestring = comparestringsplit[1];
					}
					else
					{
						pattern = new RegExp("^" + input.toLowerCase());
						comparestring = customerarray[i];
					}
					var result1 = pattern.test(trimdotspaces(customerarray[i]).toLowerCase());
					var result2 = pattern.test(customerarray[i].toLowerCase());
					if(result1 || result2)
					{
						var splits = customerarray[i].split("^");
						$("#customerlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
						//options[options.length] = new Option(splits[0], splits[1]);
						addedcount++;
						if(addedcount == 100)
							break;
					}
			}
		}
	}
	else if(flag == false)
	{/*
		if(input == "")
		{
			getcustomerlistonsearch();
		}
		else
		{
			$('option', selectbox).remove();
			var options = selectbox.attr('options');
			var addedcount = 0;
			for( var i=0; i < customersearcharray.length; i++)
			{
					if(input.charAt(0) == "%")
					{
						withoutspace = input.substring(1,input.length);
						pattern = new RegExp(withoutspace.toLowerCase());
						comparestringsplit = customersearcharray[i].split("^");
						comparestring = comparestringsplit[1];
					}
					else
					{
						pattern = new RegExp("^" + input.toLowerCase());
						comparestring = customersearcharray[i];
					}
					var result1 = pattern.test(trimdotspaces(customersearcharray[i]).toLowerCase());
					var result2 = pattern.test(customersearcharray[i].toLowerCase());
					if(result1 || result2)
					{
						var splits = customersearcharray[i].split("^");
						options[options.length] = new Option(splits[0], splits[1]);
						addedcount++;
						if(addedcount == 100)
							break;
					}
			}
		}
	*/}
}

function getcustomerlist1()
{	
	var form = $("#submitform" );
	var selectbox = $('#customerlist');
	var numberofcustomers = customerarray.length;
	$('#detailsearchtext').focus();
	var limitlist = numberofcustomers;
	$('option', selectbox).remove();
	var options = selectbox.attr('options');
	
	for( var i=0; i<limitlist; i++)
	{
		var splits = customerarray[i].split("^");
		$("#customerlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
		//options[options.length] = new Option(splits[0], splits[1]);
	}
	
}
