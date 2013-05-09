// JavaScript Document
var productarray = new Array();
var flag=false;
function saveProduct()
{
	var form = $("#submitform" );
	var error = $("#form-error" );
	error.html('');
	var passData = "";
	var field = $("#pname" );
	if(!field.val()) { error.html(errormessage("Enter the Product Name. ")); field.focus(); return false; }
	var field = $("#price" );
	if(field.val() == 0) { error.html(errormessage("Enter product unit price. ")); field.focus(); return false; }
	if(isNaN(field.val())) { error.html(errormessage("Enter unit price as digits. ")); field.focus(); return false; }
	var field = $("#purchasedfrom" );
	if(!field.val()) { error.html(errormessage("Enter the Product puchased from whom. ")); field.focus(); return false; }
	var notinuse =0;
	if($('#notinuse').attr('checked')) {
		notinuse=1;
	}
	var field = $("#purchasedate" );
	if(!field.val()) { error.html(errormessage("Select Purchase Date. ")); field.focus(); return false; }
	var field = $("#expirydate" );
	if(!field.val()) { error.html(errormessage("Select Expiry Date. ")); field.focus(); return false; }
	var field = $("#stockdate" );
	if(!field.val()) { error.html(errormessage("Select stock updating Date. ")); field.focus(); return false; }

	var field = $("#prdid" );
	if(field.val() == '')
	{
		passData =  "switchtype=save&productname=" + encodeURIComponent($("#pname").val()) + "&quantity=" + encodeURIComponent($("#quantity").val()) + "&price=" + encodeURIComponent($("#price").val()) + "&notinuse=" + encodeURIComponent(notinuse) + "&dealer=" + encodeURIComponent($("#purchasedfrom").val()) + "&purchasedate=" + encodeURIComponent($("#purchasedate").val()) + "&expirydate=" + encodeURIComponent($("#expirydate").val()) + "&stockdate=" + encodeURIComponent($("#stockdate").val()) + "&dummy=" + Math.floor(Math.random()*100000000);
	}
	else
	{
		passData =  "switchtype=update&prdid=" + encodeURIComponent($("#prdid").val()) + "&productname=" + encodeURIComponent($("#pname").val()) + "&quantity=" + encodeURIComponent($("#quantity").val()) + "&price=" + encodeURIComponent($("#price").val()) + "&notinuse=" + encodeURIComponent(notinuse) + "&dealer=" + encodeURIComponent($("#purchasedfrom").val()) + "&purchasedate=" + encodeURIComponent($("#purchasedate").val()) + "&expirydate=" + encodeURIComponent($("#expirydate").val()) + "&stockdate=" + encodeURIComponent($("#stockdate").val()) + "&dummy=" + Math.floor(Math.random()*100000000);
	}
	var queryString = '../ajax/products.php';
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
					var msg=successmessage(response['errormessage']);
					$("#form-error").html(msg);
					//gettotalcustomercount();
					clearForm();
					productlist();
				}
				else if(response['errorcode'] == '2')
				{
					 $("#form-error").html(successmessage(response['errormessage']));
					//gettotalcustomercount();
					clearForm();
					productlist();
				}
			}
		}, 
		error: function(a,b)
		{
			error.html(scripterror());
		}
	});	
}

function productlist()
{
	
	var form = $("#submitform" );
	var error = $("#form-error" );
	var passData = "";

	passData =  "switchtype=productlist&dummy=" + Math.floor(Math.random()*100000000);
	
	var queryString = '../ajax/products.php';
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
				productarray = new Array();
				for( var i=0; i<response.length; i++)
				{
					productarray[i] = response[i];
				}
				getproductlist();
				//$("#totalproductcount").html(productarray.length);
			}
		}, 
		error: function(a,b)
		{
			error.html(scripterror());
		}
	});	
}

function getproductlist()
{	
	var selectbox = $('#productlist');
	var numberofproducts = productarray.length;
	$('#detailsearchtext').focus();
	var actuallimit = 500;
	//var limitlist = (numberofproducts > actuallimit)?actuallimit:numberofproducts;
	var limitlist = numberofproducts;
	$('option', selectbox).remove();
	//var options = selectbox.attr('options');
	for( var i=0; i<limitlist; i++)
	{
		var splits = productarray[i].split("^");
		////options[options.length] = new Option(splits[0], splits[1]);
		$("#productlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
	}
	flag=true;
}

function selectfromlist()
{
	var selectbox = $("#productlist option:selected").val();
	$('#detailsearchtext').val($("#productlist option:selected").text());
	$('#detailsearchtext').select();
	productdetailstoform(selectbox);	
}

function productdetailstoform(prdid)
{
	if(prdid != '')
	{
	//	$("#productselectionprocess").html('');
		var form = $("#submitform");
		$("#submitform" )[0].reset();
		var passData = "switchtype=productdetailstoform&prdid=" + encodeURIComponent(prdid) + "&dummy=" + Math.floor(Math.random()*100032680100);//alert(passData)
		$("#form-error").html(getprocessingimage());
		var queryString = "../ajax/products.php";
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
						$("#prdid").val(response['prdid']);
						$("#pname").val(response['name']);
						$("#quantity").val(response['quantity']);
						$("#price").val(response['price']);
						$("#notinuse").attr('checked',response['notinuse']);
						$("#purchasedfrom").val(response['dealer']);
						$("#purchasedate").attr("value",response['purchasedate'].substring(0,10));
						$("#expirydate").attr("value",response['expirydate'].substring(0,10));
						$("#stockdate").attr("value",response['stockdate'].substring(0,10));
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

function clearForm()
{
	$("#prdid").val('');
	$("#pname").val('');
	$("#quantity").val('0');
	$("#price").val('0');
	$("#notinuse").attr('checked',0);
	$("#purchasedfrom").val('');
	$("#purchasedate").attr("value",'dd/mm/YYYY');
	$("#expirydate").attr("value",'dd/mm/YYYY');
	$("#stockdate").attr("value",'dd/mm/YYYY');
}

function productsearch(e)
{ 
	var KeyID = (window.event) ? event.keyCode : e.keyCode;
	if(KeyID == 38)
		scrollproduct('up');
	else if(KeyID == 40)
		scrollproduct('down');
	else
	{
		var form = $('#submitform');
		var input = $('#detailsearchtext').val();
		selectaproduct(input);
	}
}

function scrollproduct(type)
{
	var selectbox = $('#productlist');
	var totalpro = $("#productlist option").length;
	var selectedpro = $("select#productlist").prop('selectedIndex');
	if(type == 'up' && selectedpro > 0 )
		$("select#productlist").prop('selectedIndex', selectedpro - 1);
	else if(type == 'down' && selectedpro != totalpro)
		$("select#productlist").prop('selectedIndex', selectedpro + 1);
	selectfromlist();
}

function selectaproduct(input)
{
	var selectbox = $('#productlist');
	if(flag == true)
	{
		if(input == "")
		{
			getproductlist1();
		}
		else
		{
			$('option', selectbox).remove();
			var options = selectbox.attr('options');
			var addedcount = 0;
			for( var i=0; i < productarray.length; i++)
			{
					if(input.charAt(0) == "%")
					{
						withoutspace = input.substring(1,input.length);
						pattern = new RegExp(withoutspace.toLowerCase());
						comparestringsplit = productarray[i].split("^");
						comparestring = comparestringsplit[1];
					}
					else
					{
						pattern = new RegExp("^" + input.toLowerCase());
						comparestring = productarray[i];
					}
					var result1 = pattern.test(trimdotspaces(productarray[i]).toLowerCase());
					var result2 = pattern.test(productarray[i].toLowerCase());
					if(result1 || result2)
					{
						var splits = productarray[i].split("^");
						$("#productlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
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

function getproductlist1()
{	
	var form = $("#submitform" );
	var selectbox = $('#productlist');
	var numberofproducts = productarray.length;
	$('#detailsearchtext').focus();
	var limitlist = numberofproducts;
	$('option', selectbox).remove();
	var options = selectbox.attr('options');
	
	for( var i=0; i<limitlist; i++)
	{
		var splits = productarray[i].split("^");
		$("#productlist").append('<option value='+splits[1]+'>'+splits[0]+'</option>');
		//options[options.length] = new Option(splits[0], splits[1]);
	}
	
}
