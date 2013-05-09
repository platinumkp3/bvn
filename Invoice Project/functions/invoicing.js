// JavaScript Document
var customerarray=new Array();
var flag=false;
function customerlist()
{
	var form = $("#submitform" );
	var error = $("#form-error" );
	var passData = "";

	passData =  "switchtype=customerlist&dummy=" + Math.floor(Math.random()*100000000);
	
	var queryString = '../ajax/invoicing.php';
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
	//customerdetailstoform(selectbox);	
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
	if(type == 'up' && selectedcus != 0)
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
