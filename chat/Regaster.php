<?php

include('database_connection.php');

session_start();

$message = '';
 

if(isset($_POST["CreateAcount"]))
{
     
        $query = "
         INSERT INTO `login` (`user_id`, `username`, `password`) VALUES (NULL, '".$_POST["username"]."', '". $_POST["password"]."');
        ";
        $statement = $connect->prepare($query);
        $IsSaved =  $statement->execute();  

        if($IsSaved){
            header("location:login.php");
        }
}

?>

<html>  
    <head>  
        <title>Chat Application - Create Acount</title>  
       

        <link rel="stylesheet" href="css/bootstrap.min.css" />

        
    </head>  
    <body>  
        <div class="container">
   <br />
   
   <h3 align="center">Chat Application - Create Acount</a></h3><br />
   <br />
   <div class="panel panel-default">
      <div class="panel-heading">Chat Application - Create Acount</div>
    <div class="panel-body">
     <form method="post">
      <p class="text-danger"><?php echo $message; ?></p>
      <div class="form-group">
       <label>Enter Username</label>
       <input type="text" name="username" class="form-control" required />
      </div>

      <div class="form-group">
       <label>Enter Password</label>
       <input type="password" name="password" class="form-control" required />
      </div>
      
      <div class="form-group">
       <input type="submit" name="CreateAcount" class="btn btn-info" value="Create " />
       
      </div>
     </form>
    </div>
   </div>
  </div>

        <script src="js/jquery-3.1.1.min.js"></script>
        
    </body>  
</html>