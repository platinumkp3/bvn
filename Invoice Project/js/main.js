function errormessage(message)
{
	var msg = '<div class="errorbox">' + message + '</div>';
	return msg;
}

function successmessage(message)
{
	var msg = '<div class="successbox">' + message + '</div>';
	return msg;
}

function getprocessingimage()
{
	var imagehtml = '<img src="../images/imax-loading-image.gif" border="0"/>';
	return imagehtml;
}

function autochecknew(selectid,comparevalue)
{
		var selection = selectid;
		if(comparevalue == 'yes' || comparevalue== 0)
		{
			$(selection).attr('checked',true)
			return;
		}
		else
		{
			$(selection).attr('checked',false)
			return;
		}
}


function in_array(checkvalue, arrayobject) 
{
	for(var i = 0, l = arrayobject.length; i < l; i++) 
	{
		if(arrayobject[i] == checkvalue) 
		{
			return true;
		}
	}
	return false;
}

function validateZIP(pincode) 
{
	
  var error=0;
  if(pincode!="")
  {
	if(isNaN(pincode))
	{
	  error=2;
	  //alert("Please enter valid digit 0-9.");
	}
	else if(pincode.length!=6)
	{
		error=1;
	  //alert("Please enter zip code of 6 digit.");
	}	
  }
  else
  {
	  error=3;
	  //null
  }
  return error;
}

function validateFax(fax)
{
	//
	var myRegExp = /[\+? *[1-9]+]?[0-9 ]+/;
	if(myRegExp.test(fax))
	{
	  return true;
	}
	else
	{
	  return false;
	}
}

function trimdotspaces(text)
{
	var output = text.replace(/ /g,""); 
	var output2 = output.replace(/\./g,"");
	return output2;
}

function tab(tab) 
{
	for(i=1;i<=4;i++)
	{
		if(i==tab)
		{
			document.getElementById('tab'+i).style.display = 'block';
			//document.getElementById('li_tab'+i).setAttribute("class", "active");
			 $('#li_tab'+i+' a').addClass("active");
		}
		else
		{
			document.getElementById('tab'+i).style.display = 'none';
			//document.getElementById('li_tab'+i).setAttribute("class", "");
			 $('#li_tab'+i+' a').removeClass("active");
		}
	}
}