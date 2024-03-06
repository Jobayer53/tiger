<?php 
session_start();
require '../db.php';
if(!isset($_SESSION['login_korchi'])){
    header('location:../login.php');
}

$select_user = "SELECT * FROM users";
$select_user_result = mysqli_query($db_connect, $select_user);


?>

<?php 
require '../dashboard_header.php';
?>
<?php if($_SESSION['role'] !=0){ ?>
<div class="container-fluied">
    <div class="row">
        <div class="col-lg-8 <?php echo($_SESSION['role'] == 1? '':'m-auto')?>">
            <div class="card mt-5">
                <div class="card-header bg-primary">
                    <h3 class="text-white">User List</h3>
                </div>
                <div class="card-body">
                <?php if(isset($_SESSION['success'])){ ?>
                        <div class="alert alert-success"><?=$_SESSION['success']?></div>
                    <?php } unset($_SESSION['success'])?>
                    <table class="table table-striped">
                        <tr>
                            <th>SL</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Photo</th>
                            <th>Action</th>
                        </tr>
                        <?php foreach($select_user_result as $sl=>$user){?>
                        <tr>
                            <td><?=$sl+1?></td>
                            <td><?=$user['name']?></td>
                            <td><?=$user['email']?></td>
                            <td>
                                <?php 
                                   if($user['role'] ==1){
                                      echo '<span class="badge badge-primary">Admin</span>';
                                   }
                                   else if($user['role'] ==2){
                                    echo '<span class="badge badge-info">Mod</span>';
                                   }
                                   else if($user['role'] ==3){
                                    echo '<span class="badge badge-danger">Editor</span>';
                                   }
                                   else if($user['role'] ==0){
                                    echo '<span class="badge badge-success">Visitor</span>';
                                   }
                                ?>
                            </td>
                            <td><img width="50" src="/tiger/uploads/user/<?=$user['profile_photo']?>" alt=""></td>
                            <td>
                                <a href="edit_user.php?id=<?=$user['id']?>" class="btn btn-success">Edit</a>
                                <?php if($_SESSION['role']==1){ ?>
                                <a class="btn btn-danger del text-white" value="delete_user.php?id=<?=$user['id']?>">Delete</a>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
            </div>
        </div>
    <?php if($_SESSION['role']==1 || $_SESSION['role']==2){ ?>
        <div class="col-lg-4">
            <div class="login-box">
                <div class="login-box-body">
                    <h3 class="login-box-msg">Add User</h3>
                    <?php if(isset($_SESSION['register'])){ ?>
                        <div class="alert alert-success"><?=$_SESSION['register']?></div>
                    <?php } unset($_SESSION['register'])?>
                    <form action="../register_post.php" method="post" enctype="multipart/form-data">
                    <div class="form-group has-feedback">
                        <input type="text" class="form-control sty1 <?=(isset($_SESSION['errors']['name'])?'border border-danger':'')?>" id="name" name="name" placeholder="Name" value="">
                        <?php if(isset($_SESSION['errors']['name'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['errors']['name']?></strong>
                        <?php } ?>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="email" class="form-control sty1" name="email" placeholder="Email">
                        <?php if(isset($_SESSION['errors']['email'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['errors']['email']?></strong>
                        <?php } ?>
                        <?php if(isset($_SESSION['invalid'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['invalid']?></strong>
                        <?php } ?>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="password" class="form-control sty1" placeholder="Password">
                        <?php if(isset($_SESSION['errors']['password'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['errors']['password']?></strong>
                        <?php } ?>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="confirm_password" class="form-control sty1" placeholder="Conform Password">
                        <?php if(isset($_SESSION['errors']['confirm_password'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['errors']['confirm_password']?></strong>
                        <?php } ?>
                        <?php if(isset($_SESSION['pass'])){ ?>
                            <strong class="text-danger"><?=$_SESSION['pass']?></strong>
                        <?php } ?>
                    </div>
                    <div class="form-group has-feedback">
                        <select name="role" class="form-control">
                            <option value="">-- SELECT ROLE --</option>
                            <option value="1">ADMIN</option>
                            <option value="2">MODERATOR</option>
                            <option value="3">EDITOR</option>
                            <option value="0">VISITOR</option>
                        </select>
                    </div>
                    <div class="mb-3">
                            <label for="" class="form-label">Profile Photo</label>
                            <input type="file" name="profile_photo" class="form-control"  onchange="document.getElementById('blah').src = window.URL.createObjectURL(this.files[0])">
                            <br>
                            <img width="300" src="" id="blah" alt="">
                            <?php if(isset($_SESSION['extension'])){ ?>
                                <div class="alert alert-warning"><?=$_SESSION['extension']?></div>
                            <?php } unset($_SESSION['extension'])?>
                            <?php if(isset($_SESSION['size'])){ ?>
                                <div class="alert alert-warning"><?=$_SESSION['size']?></div>
                            <?php } unset($_SESSION['size'])?>
                        </div>
                    <div>
                        <!-- /.col -->
                        <div class="col-xs-4 m-t-1">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">ADD</button>
                        </div>
                        <!-- /.col --> 
                    </div>
                    </form>
                   
                </div>
    
            </div>
        </div>
    <?php }?>
    </div>
</div>
<?php } else{?>
<div class="alert alert_info">
    <h2>ছিড়া কাথায় শুয়ে লাখ টাকার সপ্ন..? আহারে সোনাগো আমার। </h2>
</div>
<?php } ?>
<!-- jQuery 3 --> 
<script src="backend/js/jquery.min.js"></script> 

<!-- v4.0.0-alpha.6 --> 
<script src="backend/bootstrap/js/bootstrap.min.js"></script> 
<!-- template --> 
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="backend/js/niche.js"></script>
<?php 
require '../dashboard_footer.php';
?>
<script>
    $('.del').click(function(){
        Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
        if (result.isConfirmed) {
            var link = $(this).attr('value');
            window.location.href = link;
        }
        })
    })
</script>

<?php if(isset($_SESSION['del'])){ ?>
    <script>
        Swal.fire(
            'Deleted!',
            '<?=$_SESSION['del']?>',
            'success'
            )
    </script>
<?php } unset($_SESSION['del']);?>    
<?php if(isset($_SESSION['email_exist'])){?>
    <script>
        Swal.fire({
        icon: 'error',
        title: 'Oops...',
        text: '<?=$_SESSION['email_exist']?>',
        })
    </script>
<?php } unset($_SESSION['email_exist'])?>

<?php 
unset($_SESSION['errors']);
unset($_SESSION['name']);
unset($_SESSION['invalid']);
unset($_SESSION['pass']);

?>