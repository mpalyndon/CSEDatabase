<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Manage Project</h1>
    
 
    <h2>
    <h2>
            <p>Search projects:  <a class="primary-button" href="/CreateNewProject.php">Create New Project</a></h2>
             <br>
             <br>
        
        <input placeholder="Finance Code">
            <br>
            <input placeholder="Description">
            <br>
            <p>Manager: <a class="primary-button" >Search</a>
                        <a class="primary-button" >Clear</a> 
                        <a class="primary-button" href="/index.php">Home</a></h2>
           
       
       
        
        <TABLE BORDER="3"    WIDTH="100%"   CELLPADDING="1" CELLSPACING="1">
   <TR>
      <TH COLSPAN="4"><BR><h1><b>Projects</b></h1>
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
