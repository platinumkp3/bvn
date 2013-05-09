<script src="../functions/invoicing.js"></script>
<script type="text/javascript">
/*$(document).ready(function() {
    var date = new Date();

    var day = date.getDate();
    var month = date.getMonth() + 1;
    var year = date.getFullYear();

    if (month < 10) month = "0" + month;
    if (day < 10) day = "0" + day;

    var today = year + "-" + month + "-" + day;       
    $("#datecteated").attr("value", today);
});    */ 
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
              <select name="customerlist" size="5" class="swiftselect" id="customerlist" style="width:210px; height:400px;" onclick="selectfromlist()">
                <option></option>
              </select>
          </div></td>
      </tr>
    </table>

</td>
<td valign="top">

</td>
</tr>
</table>
</div>
