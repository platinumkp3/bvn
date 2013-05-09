<?php
include('../functions/phpfunctions.php'); 
include "../inc/header.php";
?>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="wrapper">
  <tr>
    <td><? $pagelink = getpagelink($_GET['link']); include($pagelink); ?></td>
  </tr>
</table>
<?php
include "../inc/footer.php";
?>