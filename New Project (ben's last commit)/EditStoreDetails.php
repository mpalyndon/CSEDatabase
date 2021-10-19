<?php require_once "components/layout_top.php"; ?>

<div>

<h1 class="subheader">Editing details for CSE Store</h1>

<h2>
         <h1 class="subheader">Fields</h1>

          <label> Description</label>
          <br>
          <input placeholder="">
            <br>
            <label> contactName</label>
            <br>
            <input placeholder="">
            <br>
            <label> contactPhone</label>
            <br>
            <input placeholder= "">
            <br>
            <label> location</label>
            <br>
            <input placeholder="">
            <br>
            <label> % Markup</label>
            <br>
            <input placeholder="">
            <br>
            <label> contactPhone</label>
            <br>
            <input placeholder= "">
            <br>
            <br>

            <!--Check Boxes Fields for editing CSE Store Details -->
            <label> Use OHS Purchasing Warnings</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>
            <label> Enable Loans</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>
            <label> Orders Module Enabled</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>
            <label> Confirm Purchase Dialogs enabled</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>
            <label> Confirm Cancel Dialogs enabled</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>
            <label> Allow over purchasing of stock</label>
            <br>
            <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
            <br>

            <!--Combo Boxe Fields for editing CSE Store Details -->
            <label> Manager User Group</label>
            <br>
              <select name="All Categoriesrs" id="All Categories">
              <option value="All Categories">All Categories</option>
            </select><option value=" "></option>

            <!--Placeholder Field for editing CSE Store Details -->
            <label> Public purchasing computer</label>
            <br>
            <!--<input type="text" name="name" placeholder="Required" required minlength="2" maxlength="more"> -->
            <input type="submit" value="Save" class="primary-button">
            <br>
            <br>
            <input type="submit" value="Cancel" class="primary-button">

            
          </h2>  
            </div>
        



</form>
</div>

<?php require_once "components/layout_bottom.php"; ?>


