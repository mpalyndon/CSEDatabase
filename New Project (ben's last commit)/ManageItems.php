<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Manage Items</h1>
    <p>Search items<p>
    
    <form action="/action_page.php">
 
    <label for="CSE">Store to search:</label>
  <select name="CSE" id="CSE">
    <option value="CSE Store">CSE Store</option>
  </select>
<br>
<br>
  <label for="CSE">Search Categories:</label>
  <select name="CSE" id="CSE">
    <option value="All Categories">All Categories</option>
  </select>

    <p>Barcode:<p>
    <p>Description:<p>
    <p>Suppliers:<p>

    <p>Search Criteria: <input placeholder=""></p>

    <input type="checkbox">
        <label for="vehicle1"> Show Disabled</label><br>
        <br>
      
                        <a class="primary-button" >Search</a>
                        <a class="primary-button" >Clear</a> 
                        <a class="primary-button" href="/index.php">Home</a></h2>
                        <a class="primary-button" href="/CreateNewItem.php">Create New Item</a></h2>
           
       
       <br>
       <br>
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="11"><BR><h1><b>Items</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Barcode</p></TH>
      <TH><p>Inventory</p></TH>
      <TH><p>Units</p></TH> 
      <TH><p>Price per unit</p></TH> 
      <TH><p>Category</p></TH> 
      <TH><p>Supplier</p></TH> 
      <TH><p>Part Number</p></TH>
      <TH><p>Store Location</p></TH>
      <TH><p>Enabled</p></TH> 
 
 




 
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Edit</a> <a class="primary-button" >Delete</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
      <TD><p>Data 5</p></TD>
      <TD><p><p><input placeholder=""></p></p></TD>
      <TD><p>Data 7</p></TD>
      <TD><p>Data 8</p></TD>
      <TD><p>Data 9</p></TD>
      <TD><p>Data 10</p></TD>
      <TD><p>True</p></TD>
   </TR>
</TABLE>
        

    </form>
</div>

<?php require_once "components/layout_bottom.php"; ?>