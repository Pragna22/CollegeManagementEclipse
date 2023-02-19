<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GalleryEdit</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
        body{
            background-color: rgb(238, 176, 219);
        }
        h1{
            text-align: center;
            color: rgb(2, 32, 36);
            background-color: rgb(250, 243, 42);
            box-sizing: border-box;
            width: 450px;  
    		margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;    
   		    padding: 10px;  
   		    border-radius: 15px ;
        }
       
        .gallery{
                box-sizing: border-box;
				padding: 12px 20px;
				width: 450px;
				background-color:#a283eb;
                text-align: center;
                margin: auto;
                margin: 20 0 0 450px;
                padding: 80px;
                padding: 20px;
                border-radius: 20px;
        }
        button{
            color: peachpuff;
            background-color: rgb(32, 0, 128);
        } 
        button:hover{
            background-color: rgb(152, 66, 233);
        }
        .topnav,#home a{
  background-color: #008b8b;
  overflow: hidden;
}
        body{
            background-color: rgb(243, 191, 222)255, 0, 149);
             font-family: 'Arial';
        }
    </style>
</head>
<body>
    <div id="logo">
        <img src="fiem.jpg">
      </div>
      
      <div id="home">
         <a href="index.html">Home</a>
      </div>
     <div class="topnav">
    
      
      <a href="login.html" target="_blank">Login/Signup</a>
      <div class="dropdown">
        <button class="dropbtn">Extracurricular
          <i class="fa fa-caret-down"></i>
        </button>
        <div class="dropdown-content">
          <a href="xplorica.html" target="_blank">Xplorica</a>
          <a href="culrav.html" target="_blank">Culrav</a>
          <a href="estrella-1.html" target="_blank">Estrella</a>
          <a href="sportivo.html" target="_blank">Sportivo</a>
        </div>
      </div>
      <a href="#Notice">Notice Board</a>
      <!--<a href="#club" target="_blank">Extracurricular</a>-->
      
      <a href="courses.html" target="_blank">Streams</a>
      <a href="#gallery">Gallery</a>
      <a href="contact.html">Contact</a>
      <a href="About.html">About</a> 
      </div> <br><br><br>
      <form id="gallery" method="Post" action="#gal" >
                <div>
                <label><b>Uid</b></label>
                <input type="text" id="uid" name="uid" maxlength="50" placeholder="enter your uid number">
                <label><b>Email</b></label>
                <input type="email" id="email" name="email" placeholder="enter your email id">
                <br><br>
        <h1>Add to Gallery</h1><br>
    <div class="gallery">
        <div class="div">
            <label for="file"><b>Upload file</b></label>
            <input type="file" name="file" id="file" required>
        </div><br>
                    <button type="submit">Upload</button>
                    <button type="reset">Reset</button>
        </div>
        </form>
</body>
</html>