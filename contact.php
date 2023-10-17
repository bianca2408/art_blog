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
    
   
      if (isset($_POST['contact'])) {
        // receive all input values from the form
        $name = mysqli_real_escape_string($con, $_POST['name']);
        $email = mysqli_real_escape_string($con, $_POST['email']);
        $message = mysqli_real_escape_string($con, $_POST['message']);
       
        if (empty($name)) { array_push($errors, "Name is required"); }
        if (empty($email)) { array_push($errors, "Email is required"); }
        if (empty($message)) { array_push($errors, "Message is required"); }
      
        if (count($errors) == 0) {
      
            $query = "INSERT INTO contact (name, email, message) 
                      VALUES('$name', '$email', '$message')";
            mysqli_query($con, $query);
           // $_SESSION['username'] = $username;
            //$_SESSION['success'] = "Your message has been sent!";
            
           header('location: home.html');
           //echo '<script>alert("Your message has been sent!")</script>';
        }}
   
    // close connection
    mysqli_close($con);
?>