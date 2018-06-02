<?php

    if(isset($_GET['edit_user'])){
        $the_user_id = $_GET['edit_user'];
    }

    $query = "SELECT * FROM users WHERE user_id = $the_user_id";
    $select_users_by_id= mysqli_query($connection, $query);

    while($row = mysqli_fetch_assoc($select_users_by_id)){

        $user_id = $row['user_id'];
        $user_firstname = $row['user_firstname'];
        $user_lastname = $row['user_lastname'];
        $user_role = $row['user_role'];
        $username= $row['username'];

        // $post_image = $_FILES['image']['name'];
        // $post_image_temp = $_FILES['image']['tmp_name'];

        $user_email = $row['user_email'];
        $user_password = $row['user_password'];
    
    }

    if(isset($_POST['edit_user'])){

        $user_firstname = $_POST['user_firstname'];
        $user_lastname = $_POST['user_lastname'];
        $user_role = $_POST['user_role'];
        $username= $_POST['username'];

        // $post_image = $_FILES['image']['name'];
        // $post_image_temp = $_FILES['image']['tmp_name'];

        $user_email = $_POST['user_email'];
        $user_password = $_POST['user_password'];
    
        // move_uploaded_file($post_image_temp, "../images/$post_image");

        // if(empty($post_image)){
        //     $query = "SELECT * FROM posts WHERE post_id = $the_post_id";
        //     $select_image = mysqli_query($connection, $query);
        //     while($row = mysqli_fetch_array($select_image)){
        //         $post_image = $row['post_image'];
        //     }
        // }

        $query = "UPDATE users SET ";
        $query .= "user_firstname = '{$user_firstname}', ";
        $query .= "user_lastname = '{$user_lastname}', ";
        $query .= "user_role = '{$user_role}', ";
        $query .= "username = '{$username}', ";
        $query .= "user_email = '{$user_email}', ";
        $query .= "user_password = '{$user_password}' ";
        $query .= "WHERE user_id = {$the_user_id} ";

        $update_user = mysqli_query($connection, $query);

        confirmQuery($update_user);
        header("Location: users.php"); //header
    }

?>


<form class="" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label for="firstname">Firstname</label>
        <input value="<?php echo $user_firstname; ?>" type="text" class="form-control" name="user_firstname">
    </div>

    <div class="form-group">
        <label for="lastname">Lastname</label>
        <input value="<?php echo $user_lastname; ?>" type="text" class="form-control" name="user_lastname">
    </div>

    <div class="form-group">
        <select name="user_role" id="">
            <option value="<?php echo $user_role?>"><?php echo $user_role?></option>
            <?php
                if($user_role == 'admin'){
                    echo "<option value='subscriber'>subscriber</option>";
                } else {
                    echo "<option value='admin'>admin</option>"; 
                }
            
            ?>

        </select>
    </div>


    <div class="form-group">
        <label for="username">Username</label>
        <input value="<?php echo $username; ?>" type="text" class="form-control" name="username">
    </div>

    <div class="form-group">
        <label for="user_email">Email</label>
        <input value="<?php echo $user_email; ?>" type="email" class="form-control" name="user_email">
    </div>

        <div class="form-group">
        <label for="user_password">Email</label>
        <input value="<?php echo $user_password; ?>" type="password" class="form-control" name="user_password">
    </div>

    <!-- <div class="form-group">
        <img width="100"  src="../images/<?php echo $post_image; ?>" alt="">
        <input type="file" name="image">
    </div> -->

    <div class="form-group">
        <input type="submit" class="btn btn-primary" name="edit_user" value="Update User">
    </div>

</form>