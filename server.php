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
    
    if (isset($_POST['submit'])) {
        // receive all input values from the form
        $username = mysqli_real_escape_string($con, $_POST['username']);
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $password_1 = mysqli_real_escape_string($con, $_POST['password']);
        //$password_2 = mysqli_real_escape_string($con, $_POST['password_2']);
      
        // form validation: ensure that the form is correctly filled ...
        // by adding (array_push()) corresponding error unto $errors array
        if (empty($username)) { array_push($errors, "Username is required"); }
        if (empty($email)) { array_push($errors, "Email is required"); }
        if (empty($password_1)) { array_push($errors, "Password is required"); }
        // if ($password_1 != $password_2) {
        //   array_push($errors, "The two passwords do not match");
        // }
      
        // first check the database to make sure 
        // a user does not already exist with the same username and/or email
        $user_check_query = "SELECT * FROM user WHERE username='$username' OR email='$email' LIMIT 1";
        $result = mysqli_query($con, $user_check_query);
        $user = mysqli_fetch_assoc($result);
        
        if ($user) { // if user exists
          if ($user['username'] === $username) {
            array_push($errors, "Username already exists");
          }
      
          if ($user['email'] === $email) {
            array_push($errors, "email already exists");
          }
        }
      
        // Finally, register user if there are no errors in the form
        if (count($errors) == 0) {
            $password = md5($password_1);//encrypt the password before saving in the database
      
            $query = "INSERT INTO user (username, email, password) 
                      VALUES('$username', '$email', '$password')";
            mysqli_query($con, $query);
            $_SESSION['username'] = $username;
            $_SESSION['success'] = "You are now logged in";
            header('location: home.html');
        }}
    // using sql to create a data entry query
    // if (isset($_POST['login'])) {
    //   $username = mysqli_real_escape_string($db, $_POST['username']);
    //   $password = mysqli_real_escape_string($db, $_POST['password']);
    
    //   if (empty($username)) {
    //     array_push($errors, "Username is required");
    //   }
    //   if (empty($password)) {
    //     array_push($errors, "Password is required");
    //   }
    
    //   if (count($errors) == 0) {
    //     $password = md5($password);
    //     $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
    //     $results = mysqli_query($db, $query);
    //     if (mysqli_num_rows($results) == 1) {
    //       $_SESSION['username'] = $username;
    //       $_SESSION['success'] = "You are now logged in";
    //       header('location: home.html');
    //     }else {
    //       array_push($errors, "Wrong username/password combination");
    //     }
    //   }}
     
   
    // close connection
    mysqli_close($con);
?>