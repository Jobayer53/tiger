<?php 
session_start();
require '../db.php';

$id = $_POST['id'];
$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];
$role = $_POST['role'];



if(empty($password)){
     $uploaded_file = $_FILES['profile_photo'];
     if($uploaded_file['name'] == ''){
        $update = "UPDATE users SET name='$name', email='$email', role='$role' WHERE id=$id";
        $update_result = mysqli_query($db_connect, $update);
        $_SESSION['success'] = 'User Updated!';
        header('location:view_users.php?id='.$id);
     }
     else {
        $after_explode = explode('.', $uploaded_file['name']);
        $extension = end($after_explode);
        $allowed_extension = array('jpg','png', 'gif', 'webp');
        if(in_array($extension, $allowed_extension)){
            if($uploaded_file['size'] <= 10000000){
                $select = "SELECT * FROM users WHERE id=$id";
                $select_result = mysqli_query($db_connect, $select);
                $after_assoc = mysqli_fetch_assoc($select_result);
                $delete_from = '../uploads/user/'.$after_assoc['profile_photo'];
                unlink($delete_from);

                $file_name = $id.'.'.$extension;
                $new_location = '../uploads/user/'.$file_name;
                move_uploaded_file($uploaded_file['tmp_name'], $new_location);

                $update = "UPDATE users SET name='$name', email='$email', profile_photo='$file_name', role='$role' WHERE id=$id";
                $update_result = mysqli_query($db_connect, $update);
                $_SESSION['success'] = 'User Updated!';
                header('location:view_users.php?id='.$id);
            }
            else {
                $_SESSION['size'] = 'File size too long!';      
                header('location:edit_user.php?id='.$id);
            }
        }
        else {
            $_SESSION['extension'] = 'Invalid Extension!';
            header('location:edit_user.php?id='.$id);
        }
     }
}

else {

     $uploaded_file = $_FILES['profile_photo'];
     if($uploaded_file['name'] == ''){
        $update = "UPDATE users SET name='$name', email='$email', password='$password', role='$role' WHERE id=$id";
        $update_result = mysqli_query($db_connect, $update);
        $_SESSION['success'] = 'User Updated!';
        header('location:view_users.php?id='.$id);
     }
     else {
        $after_explode = explode('.', $uploaded_file['name']);
        $extension = end($after_explode);
        $allowed_extension = array('jpg','png', 'gif', 'webp');
        if(in_array($extension, $allowed_extension)){
            if($uploaded_file['size'] <= 10000000){
                $select = "SELECT * FROM users WHERE id=$id";
                $select_result = mysqli_query($db_connect, $select);
                $after_assoc = mysqli_fetch_assoc($select_result);
                $delete_from = '../uploads/user/'.$after_assoc['profile_photo'];
                unlink($delete_from);

                $file_name = $id.'.'.$extension;
                $new_location = '../uploads/user/'.$file_name;
                move_uploaded_file($uploaded_file['tmp_name'], $new_location);

                $update = "UPDATE users SET name='$name', email='$email', password='$password', profile_photo='$file_name', role='$role' WHERE id=$id";
                $update_result = mysqli_query($db_connect, $update);
                $_SESSION['success'] = 'User Updated!';
                header('location:view_users.php?id='.$id);
            }
            else {
                $_SESSION['size'] = 'File size too long!';      
                header('location:edit_user.php?id='.$id);
            }
        }
        else {
            $_SESSION['extension'] = 'Invalid Extension!';
            header('location:edit_user.php?id='.$id);
        }
     }
}


?>