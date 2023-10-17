<?php
session_start();        
    // getting all values from the HTML form
    
        // $username = $_POST['username'];
        // $email = $_POST['email'];
        // $password = $_POST['password'];
        $errors = array(); 

    // database details
    $host = "localhost";
    $root = "root";
    $password_root = "";
    $dbname = "art_web";

    // creating a connection
    $con = mysqli_connect($host, $root, $password_root, $dbname);

    // to ensure that the connection is made
    if (!$con)
    {
        die("Connection failed!" . mysqli_connect_error());
    }
   
      if (isset($_POST['login'])) {
      $username = mysqli_real_escape_string($con, $_POST['username']);
      $password = mysqli_real_escape_string($con, $_POST['password']);
    
      if (empty($username)) {
        array_push($errors, "Username is required");
      }
      if (empty($password)) {
        array_push($errors, "Password is required");
      }
    
      if (count($errors) == 0) {
        $password = md5($password);
        $query = "SELECT * FROM user WHERE username='$username' AND password='$password'";
        $results = mysqli_query($con, $query);
        if (mysqli_num_rows($results) == 1) {
          $_SESSION['username'] = $username;
          $_SESSION['success'] = "You are now logged in";
          header('location: home.html');
        }else {
          array_push($errors, "Wrong username/password combination");
        }
      }}
   
    // close connection
    mysqli_close($con);
?>