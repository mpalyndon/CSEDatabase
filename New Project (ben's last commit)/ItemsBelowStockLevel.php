<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Low Stock Report</h1>
    <br>
    <a class="primary-button" href="/index.php">Home</a></h2>
    <br>
    <br>
    
    <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="9"><BR><h1><b>Items Below Stock Level</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Barcode</p></TH>
      <TH><p>Stock on Hand</p></TH>
      <TH><p>Low Stock Level</p></TH>
      <TH><p>Category</p></TH>
      <TH><p>Supplier</p></TH>
      <TH><p>Shelf/Location</p></TH>
      <TH><p>Part Number</p></TH>
      
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Edit/View</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
      <TD><p> <input type="checkbox">
        <label for="vehicle1"> (0)</label><br></p></TD>
      <TD><p>Data 6</p></TD>
      <TD><p>Data 7</p></TD>
      <TD><p>Data 8</p></TD>
      <TD><p>Data 9</p></TD>
     
   </TR>
</TABLE>



    <?php require_once "components/layout_bottom.php"; ?>