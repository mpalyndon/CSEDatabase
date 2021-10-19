<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Manage Accounts</h1>
    <p>Search on<p>
    <p>Account Number:<p>
    <p>Account Description: <input placeholder=""> or  <select name="cars" id="cars">
    <option value="volvo">All Projects</option>
    <option value="saab">Saab</option>
    <option value="opel">Opel</option>
    <option value="audi">Audi</option> <!-- edit options -->
  </select>
    
    <p>Project Code:<p>
    <p>Project Description:<p>
    <p>Project Manager:<p>
        
      
            <p>Manager: <a class="primary-button" >Search</a>
                        <a class="primary-button" >Clear</a> 
                        <a class="primary-button" href="/index.php">Home</a></h2>
           
       
       
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="4"><BR><h1><b>Accounts</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>Account Number</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Project Manager</p></TH> 
   </TR>
   <TR ALIGN="CENTER">
   <TD><a class="primary-button" >Edit</a> <a class="primary-button" >Delete</a> </TD>
      <TD><p>Data 2</p></TD>
      <TD><p>Data 3</p></TD>
      <TD><p>Data 4</p></TD>
   </TR>
</TABLE>
        

    </form>
</div>

<?php require_once "components/layout_bottom.php"; ?>
