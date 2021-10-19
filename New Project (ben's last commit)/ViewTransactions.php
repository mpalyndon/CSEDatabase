<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | View Transactions</h1>
    <p>Select transactions:<p>

    <p>Start date:   <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>
    <p>Account Number:<p>
    <p>User Name:<p>
    <p>Item Description:<p>        
    <p>End date:     <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>
    <br>
    <a class="primary-button" >Search</a>
        <a class="primary-button" >Clear</a> 
        <a class="primary-button" href="/index.php">Home</a></h2>
        <input type="checkbox">
        <label for="vehicle1"> Show Stock Alterations</label><br>


        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="10"><BR><h1><b>Transactions</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>User</p></TH>
      <TH><p>Account</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Quantity</p></TH>
      <TH><p>UnitPrice</p></TH>
      <TH><p>TotalPrice</p></TH>
      <TH><p>StockOnHand</p></TH>
      <TH><p>Purchase Date</p></TH>
      <TH><p>Operator</p></TH>   
  
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Reverse</a> <a class="primary-button" >Delete</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
      <TD><p>Data 5</p></TD>
      <TD><p>Data 6</p></TD>
      <TD><p>Data 7</p></TD>
      <TD><p>Data 8</p></TD>
      <TD><p>Data 9</p></TD>
      <TD><p>Data 10</p></TD>





   </TR>
</TABLE>


    

    <?php require_once "components/layout_bottom.php"; ?>