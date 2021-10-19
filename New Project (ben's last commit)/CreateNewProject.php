<?php require_once "components/layout_top.php"; ?>

<div>
    <h1 class="subheader">CSE | Create new Project</h1>
    
 

    <form style="width: 100%; border: 1px solid black; padding: 20px;" action="php/action_create_project.php" method="POST">

        <div>
            <label for="managercode" style="display: inline-block; width: 200px; padding-bottom: 4px;">Manager Code:</label>
            <input type="text" name="managercode"></input>
        </div>

        <div style="margin: 10px 0;">
            <label for="projectmanager" style="display: inline-block; width: 200px; padding-bottom: 4px;">Project Manager:</label>
            <input type="text" name="projectmanager"></input>
        </div>

        <div>
            <label for="description" style="display: inline-block; width: 200px; padding-bottom: 4px;">Project Description:</label>
            <textarea name="description" rows="4" cols="50"></textarea>
        </div>

      
            <input type="submit" value="Submit" class="primary-button">
            <input type="button" value="Cancel" onclick="cancel()" class="primary-button" style="margin: 0 10px;">
           <a class="primary-button" href="/index.php">Home</a>

            

    </form>
</div>

<?php require_once "components/layout_bottom.php"; ?>