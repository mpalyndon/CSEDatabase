<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | All Loans</h1>
    <p>Search Loans:<p>
    <p>Start date:   <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>
    <p>User name:<p>
    <p>end date:   <input type="date" id="datemax" name="datemax" max="1979-12-31"><p>
    <p>Item Description:<p>
    
      
         <a class="primary-button" >Search</a>
        <a class="primary-button" >Clear</a> 
        <a class="primary-button" href="/index.php">Home</a></h2>
        <br>
        <br>
        <input type="checkbox">
        <label for="vehicle1"> Show Returned</label><br>
        <br>
        <label for="fname">Text:</label>
  <input type="text" id="fname" name="fname">
           
       
       
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="11"><BR><h1><b>Loans</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>User</p></TH>
      <TH><p>Supervisor</p></TH>
      <TH><p>Account</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Destination</p></TH>
      <TH><p>Contact</p></TH>
      <TH><p>Quantity</p></TH>
      <TH><p>Unit price</p></TH>
      <TH><p>Total price</p></TH>
      <TH><p>Loan Date</p></TH>
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Edit</a> <a class="primary-button" >Delete</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
      <TD><p>Data 5</p></TD>
      <TD><p>Data 6</p></TD>
      <TD><p>Data 7</p></TD>
      <TD><p>Data 8</p></TD>
      <TD><p>Data 9</p></TD>
      <TD><p>Data 10</p></TD>
      <TD><p>Data 11</p></TD>
   </TR>
</TABLE>
        

    </form>
</div>

<?php require_once "components/layout_bottom.php"; ?>