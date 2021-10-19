<?php require_once "components/layout_top.php"; ?>



</head>
  <body>
        
    <div class="ContentArea">
      
    <h1 class="subheader">Home</h1>


        <h2>
             
            <p>Primary contact:</p>
            <p>Contact Phone number:</p>
            <p>Location:</p>
            <a class="primary-button" href="/EditStoreDetails.php">Edit store details</a> <!-- FUTURE NOTE link to correct page -->

    <h3>
    <br>
   

    <a class="primary-button" href="/StartShopAdmin.php">Start Shopping</a><label> Administrative updates/repurchases</label>
   <br>
   <br>
   <br>
    <a class="primary-button" href="/StartShopCard.php">Start Shopping</a><label> Shopping from a user's perspective</label>
     
    </h3>  
<br>
    <h1 class="subheader">Accounting</h1>
    
    <h3>
      
      <br>
      <a class="primary-button" href="/CreateNewProject.php">Create New Project</a>
      <a class="primary-button" href="/ManageAccount.php">Manage Accounts</a>
      <!--<input type="text" name="name" placeholder="Required" required minlength="2" maxlength="more"> -->
      <a class="primary-button" href="/ManageUsers.php">Manage Users</a>
      <a class="primary-button" href="/ManageProject.php">Manage Project</a>
      <!--<input type="text" name="name" placeholder="Required" required minlength="2" maxlength="more"> -->
      </h3> 
 
        <br>
      <h1 class="subheader">Inventory</h1>

        <br>
        <a class="primary-button" href="/CreateNewProject.php">Manage Items</a>
        <a class="primary-button" href="/ManageSuppliers.php">Manage Suppliers</a>
        <a class="primary-button" href="/ManageItemCategories.php">Manage Categories</a>    
        <a class="primary-button" href="/CreateNewProject.php">Manage Units</a>
        <a class="primary-button" href="/CreateNewProject.php">View Transactions</a>  
        <br>        
        <br>
        <h1 class="subheader">Reporting</h1>
        <h3>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">Changing Journal Report (to Excel)</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">Changing Summary Report (to Excel)</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/StockOnHand.php">Stock on Hand for Stocktake</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/InventoryPurchaseHistory.php">Inventory Purchase History</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/UserChangeReminders.php">User Change reminders</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/ItemsBelowStockLevel.php">Items below low stock level</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">User/Account Transactions</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">Users in projects</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">User List</a>
        <br>
        <br>
        <br>
        <a class="primary-button" href="/CreateNewProject.php">Account List</a>
        <br>
        <br>
        <h1 class="subheader">Loans</h1>
        <br>
        <a class="primary-button" href="/ListLoans.php">List Loans</a>
      <br>
      <br>  
      </h3>  
</h2>
            </div>
        
      </form>
    </div>
  </body>
  <?php require_once "components/layout_bottom.php"; ?>
  </html>



