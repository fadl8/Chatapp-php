<?php

include('database_connection.php');

session_start();

$message = '';

if(isset($_SESSION['user_id']))
{
 header('location:index.php');
}

if(isset($_POST["login"]))
{
 $query = "
    SELECT * FROM login 
    WHERE username = :username
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
    array(
      ':username' => $_POST["username"]
     )
  );

  echo $count = $statement->rowCount();

  if($count == 1)
    {
        $result = $statement->fetchAll();
       

        foreach($result as $row)
         {
            if($result[0]["password"] == $_POST["password"] )
            {
                $_SESSION['user_id'] = $row['user_id'];
                $_SESSION['username'] = $row['username'];
                $sub_query = "
                INSERT INTO login_details 
                (user_id) 
                VALUES ('".$row['user_id']."')
                ";
                $statement = $connect->prepare($sub_query);
                $statement->execute();
                $_SESSION['login_details_id'] = $connect->lastInsertId();
                header("location:index.php");
            }
            else
            {
            $message = "<label>Wrong Password</label>";
            } //  end of else 
    } // end foreach
 } // end if 
 else
 {
  $message = "<label>Wrong Username</labe>";
 } // end else 
}

?>

<html>  
    <head>  
        <title>Chat Application</title>  
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <link rel="stylesheet" href="css/bootstrap.min.css" />

        
    </head>  
    <body>  
        <div class="container">
   <br />
   
   <h3 align="center">Chat Application</a></h3><br />
   <br />
   <div class="panel panel-default">
      <div class="panel-heading">Chat Application Login</div>
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
       <input type="submit" name="login" class="btn btn-info" value="Login" />
       <br>
       <a href="Regaster.php">Create New Acount</a>
      </div>
     </form>
    </div>
   </div>
  </div>

        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </body>  
</html>