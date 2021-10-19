<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Manage Users</h1>
    
 
    <h2>
    <h2>
            <p>Search Users<p>
            <p>Name<p>
            <p>Barcode: <input placeholder>
            <p>Supervisor: <a class="primary-button" >Search</a>
                        <a class="primary-button" >Clear</a> 
                        <a class="primary-button" href="/CreateNewUser.php">Create new user</a></h2>
           
       
       
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="4"><BR><h1><b>Users</b></h1>
      </TH>
   </TR>
   <TR>
      <TH><p>Actions</p></TH>
      <TH><p>Finance Code</p></TH>
      <TH><p>Description</p></TH>
      <TH><p>Manager</p></TH>
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
