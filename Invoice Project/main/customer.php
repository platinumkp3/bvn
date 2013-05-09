<script src="../functions/customer.js"></script>
<script language="javascript" src="../functions/getdistrictjs.php?dummy=<? echo (rand());?>"></script>
<script type="text/javascript">
$(document).ready(function() {
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10) month = "0" + month;
    if (day < 10) day = "0" + day;

    var today = year + "-" + month + "-" + day;       
    $("#datecteated").attr("value", today);
});     
customerlist();
</script>
<table border="0" width="100%">
<tr>
<td width="200px" valign="top">
 <!--<div id="sub-menu" style="height:100%; margin:0; padding:0" >
     <ul>
        <li><a href="#">Add Products</a></li>
        <li><a href="#">Edit Products</a></li>
        <li><a href="#">Stock Details</a></li>
    </ul>
 </div>-->
    <table width="100%" border="0" cellspacing="0" cellpadding="3">
      <tr>
        <td align="left" ><input name="detailsearchtext" type="text" class="swifttext" id="detailsearchtext" onkeyup="customersearch(event);" autocomplete="off" style="width:204px" />
            <input type="hidden" name="flag" id="flag" />
            <span style="display:none">
            <input name="searchtextid" type="hidden" id="searchtextid"  disabled="disabled"/>
            </span>
            <div id="detailloaddealerlist">
              <select name="customerlist" size="5" class="swiftselect" id="customerlist" style="width:210px; height:400px;" onclick="selectfromlist()" onchange="selectfromlist();" >
                <option></option>
              </select>
          </div></td>
      </tr>
    </table>

</td>
<td valign="top">
	<div id="customerdetails">
    <form id="submitform" name="submitform" method="post" action="">
    	<table cellspacing="10" cellpadding="3">
        	<tr>
            	<th colspan="4" align="left">
                	<h3>Product Details</h3>
                </th>
            </tr>
        	<tr>
            	<td>
                	<label for="cname">Customer Name : </label>
                </td>
                <td colspan="3">
                    <input type="text" id="cname" name="cname" value="" maxlength="300" size="100"/>
                </td>
            </tr>
        	<tr>
            	<td>
                	<label for="address">Address : </label>
                </td>
                <td colspan="3">
                    <input type="text" id="address" name="address" value="" maxlength="300" size="100" />
                </td>
            </tr>
        	<tr>
            	<td>
                	<label for="state">State : </label>
                </td>
                <td>
                    <select name="state" id="state" onchange="getdistrict('districtcodedisplay',this.value);" onkeyup="getdistrict('districtcodedisplay',this.value);"  style="width:200px;height:25px;width:100%;">
                   		<option value="">Select A State</option>
                            <? include('../inc/state.php'); ?>
                    </select>
                </td>
                <td width="140px">
                	<label for="district">District : </label>
                </td>
                <td id="districtcodedisplay">
  				    <select name="district" id="district" style="width:200px;height:25px;width:100%;">
                         <option value="">Select A State First</option>
                   </select>
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="pincode">Pincode : </label>
                </td>
                <td>
                    <input type="text" id="pincode" name="pincode"/>
                </td>
                <td>
                	<label for="fax">Fax : </label>
                </td>
                <td>
                    <input type="text" id="fax" name="fax"/>
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="stdcode">Std code : </label>
                </td>
                <td>
                    <input type="text" id="stdcode" name="stdcode"/>
                </td>
                <td>
                	<label for="phone">Phone : </label>
                </td>
                <td>
                    <input type="tel" id="phone" name="phone"/>
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="cell">Cell : </label>
                </td>
                <td>
                    <input type="tel" id="cell" name="cell"/>
                </td>
                <td>
                	<label for="email">Email : </label>
                </td>
                <td>
                    <input type="email" id="email" name="email"/>
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="pan">PAN Number : </label>
                </td>
                <td>
                    <input type="text" id="pan" name="pan"/>
                </td>
                <td>
                	<label for="tin">TIN Number : </label>
                </td>
                <td>
                    <input type="text" id="tin" name="tin"/>
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="datecteated">Created Date : </label>
                </td>
                <td>
                    <input type="date" id="datecteated" name="datecteated" value="date(d/m/Y)"/>
                </td>
                <td><input type="hidden" id="customerid" name="customerid" value="" />
                    
                </td>
                <td>&nbsp;
                    
                </td>
            </tr>
        </table>
        <div align="right" style="padding-right:10px">
            <input type="button" id="new" name="new" value="New" class="button" onclick="clearForm()" />
            <input type="button" id="save" name="save" value="save" class="button"  onclick="saveCustomer()"/>
            <input type="button" id="delete" name="delete" value="Delete" class="button" onclick="deletecustomer()" />
        </div>
        </form><br />
        <div id="form-error">
        </div>
    </div>
    <div id="stockdetails">
    	<div id="Tabs">
            <ul>
                <li id="li_tab1" onclick="tab('1')"><a>Tab 1</a></li>
                <li id="li_tab2" onclick="tab('2')"><a>Tab 2</a></li>
                <li id="li_tab3" onclick="tab('3')"><a>Tab 3</a></li>
                <li id="li_tab4" onclick="tab('4')"><a>Tab 4</a></li>
            </ul>
            <div id="Content_Area">
                <div id="tab1">
                    <p>This is the text for tab 1</p>
                </div>
                <div id="tab2" style="display: none;"> 
                    <p>This is the text for tab 2.</p>
                </div>
                <div id="tab3" style="display: none;"> 
                    <p>This is the text for tab 3.</p>
                </div>
                <div id="tab4" style="display: none;"> 
                    <p>This is the text for tab 4.</p>
                </div>
            </div> 
        </div>
    </div>
</td>
</tr>
</table>
</div>