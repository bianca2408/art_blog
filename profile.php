<?php 
$con =mysqli_connect('localhost', 'root', '', 'art_web');
$query="select * from user where id_user=9";
$result=mysqli_query($con,$query); 
$name=mysqli_fetch_assoc($result);
 ?>
<!DOCTYPE html>
<html lang="en">
    <head>
      
        <meta charset="UTF-8">
        <link rel="stylesheet" href="style.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>Artsy</title>
    </head>
    <body>
        <header>
          <nav>
            <ul>
              <li>
                <a href="home.html">Home</a>
              </li>
              <li>
                <a href="about.html">About</a>
              </li>
              <li>
                <a href="gallery.html">Gallery</a>
              </li>
              <li>
                <a href="contact.html">Contact</a>
              </li>
              <li>
                <a href="index.html">Login</a>
              </li>
            </ul>
          </nav>
          

    </header>
          
        <section class="parallax">
          <h1 style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 100PX; z-index: 3;" id="text">NOWLHA</h1>
          <img src="1.png" id="clouds1">
            <img src="2.png" id="clouds2">
          </section>
         
        <div class="profile-container">
            <div class="profile-header">
            <div class="profile-img">
                <img src="<?php echo $art['photo_art']?>" width="200" alt="">

            </div>
            <div class="profile-nav-info">
                <h3 class="user-name"><?php echo $name['username']?></h3>
                <div class="address">
                    <p class="country">Romania</p>
                    
                </div>
            </div></div>
            <div class="main-bd">
                <div class="left-side">
                    <div class="profile-side">
                        <p class="mobile-nr">
                            <i class="fas fa-phone"></i>45651335456
                        </p>
                        <p class="user-mail"><i class="fas fa-envelope"></i><?php echo $name['email']?></p>
                
                        <div class="user-bio">
                            <h3>Bio</h3>
                            <p class="bio">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Vel amet dolorum atque quas laudantium dignissimos sit sapiente porro sed odio, rerum unde, doloribus neque fugit aut soluta. Ab, tenetur ducimus.</p>
                        </div>

                    </div>
                </div>
                <div class="right-side">
                    <div class="profile-nav">
                        <ul>
                            <li onclick="tabs(0)"
                            class=".user-post active">Posts</li>
                            <li onclick="tabs(1)"
                            class=".user-comments">Comments</li>
                            <li onclick="tabs(2)"
                            class=".user-settings">Settings</li>
                        </ul>
                    </div>
                    <div class="profile-body">
                        <div class="profile-posts tab">
                        <h1>Posts</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Earum assumenda quo magnam vel distinctio facilis odit aspernatur sequi consectetur ducimus, quisquam error esse, blanditiis quibusdam ad minus laborum dolorem laudantium!</p>
                        </div>
                        <div class="profile-comments tab">
                        <h1>Comments</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore nemo numquam ducimus? Dicta facilis totam non sed! Corrupti nisi nobis voluptates a sequi tempore temporibus quas, fuga non at laboriosam?</p>
                        </div>
                        <div class="profile-settings tab">
                            <h1>Settings</h1>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quas fugiat suscipit tempora adipisci itaque, molestiae pariatur, expedita laudantium officia sint assumenda qui reprehenderit quasi placeat ut voluptatibus, labore quia maxime!</p>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="profile.js"></script>
    </body>
    
    
    </html>