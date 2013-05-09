<script src="../functions/products.js"></script>
<script type="text/javascript">
productlist();
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
        <td align="left" ><input name="detailsearchtext" type="text" class="swifttext" id="detailsearchtext" onkeyup="productsearch(event);" autocomplete="off" style="width:204px" />
            <input type="hidden" name="flag" id="flag" />
            <span style="display:none">
            <input name="searchtextid" type="hidden" id="searchtextid"  disabled="disabled"/>
            </span>
            <div id="detailloaddealerlist">
              <select name="productlist" size="5" class="swiftselect" id="productlist" style="width:210px; height:400px;" onclick="selectfromlist()">
                <option></option>
              </select>
          </div></td>
      </tr>
    </table>

</td>
<td valign="top">
	<div id="productdetails">
    <form id="submitform" name="submitform" method="post" action="">
    	<table cellspacing="10" cellpadding="3">
        	<tr>
            	<th colspan="4" align="left">
                	<h3>Product Details</h3>
                </th>
            </tr>
        	<tr>
            	<td>
                	<label for="pname">Product Name : </label>
                </td>
                <td colspan="3">
                    <input type="text" id="pname" name="pname" value="" maxlength="300" size="100"/>
                </td>
            </tr>
        	<tr>
            	<td>
                	<label for="quantity">Quantity : </label>
                </td>
                <td>
                    <input type="number" id="quantity" name="quantity" value="0" />
                </td>
                <td>
                	<label for="price">Unit Price : </label>
                </td>
                <td>
                    <input type="number" id="price" name="price" value="0" />
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="purchasedfrom">Purchased From : </label>
                </td>
                <td>
                    <input type="text" id="purchasedfrom" name="purchasedfrom" value="" />
                </td>
                <td>
                	<label for="purchasedate">Purchased Date : </label>
                </td>
                <td>
  				    <input type="date" id="purchasedate" name="purchasedate">
                 </td>
            </tr>
        	<tr>
            	<td>
                	<label for="expirydate">Expiry Date : </label>
                </td>
                <td>
                    <input type="date" id="expirydate" name="expirydate"/>
                </td>
                <td>
                	<label for="stockdate">stock upfated Date : </label>
                </td>
                <td>
                    <input type="date" id="stockdate" name="stockdate"/>
                 </td>
            </tr>
        	<tr>
                <td>
                    <label for="notinuse">Product Not In use : </label>
                </td>
                <td align="left">
                    <input type="checkbox" id="notinuse" name="notinuse"/>
                </td>
                <td><input type="hidden" id="prdid" name="prdid" value="" />
                    
                </td>
                <td>&nbsp;
                    
                </td>
            </tr>
        </table>
        <div align="right" style="padding-right:10px">
            <input type="button" id="new" name="new" value="New" class="button" onclick="clearForm()" />
            <input type="button" id="save" name="save" value="Save" class="button"  onclick="saveProduct()"/>
        </div>
        </form><br />
        <div id="form-error">
        </div>
    </div>
    <div id="stockdetails">
    	
    </div>
</td>
</tr>
</table>
</div>
