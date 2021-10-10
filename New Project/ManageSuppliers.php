<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Manage Suppliers</h1>
    <p>Search Suppliers:<p>
    <p>Names: <input placeholder="">
    <p>Contacts:<p>
    
            <p>Supervisor: <a class="primary-button" >Search</a>
                        <a class="primary-button" >Clear</a> 
                        <a class="primary-button" href="/CreateNewSupplier.php">Add Supplier</a></h2>
           
       
       
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="6"><BR><h1><b>Suppliers</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>Name</p></TH>
      <TH><p>Address</p></TH>
      <TH><p>Contact</p></TH>
      <TH><p>Phone</p></TH>
      <TH><p>Mobile</p></TH>   
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Edit</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
      <TD><p>Data 5</p></TD>
      <TD><p>Data 6</p></TD>

   </TR>
</TABLE>
        

    </form>
</div>

<?php require_once "components/layout_bottom.php"; ?>