<%@ page import="Servlets.gallery_upload" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GalleryEdit</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
      
        h1{
            text-align: center;
            color: darkblue;
            background-color: lightgoldenrodyellow;
            box-sizing: border-box;
            width: 600px;  
    		margin: auto;  
            margin: 20 0 0 450px;  
            padding: 80px;    
   		    padding: 10px;  
   		    border-radius: 15px ;
        }
        h1:hover{
            color: green;
            background-color: rgb(67, 208, 187);
        }
        
       
        input[type=text]{
            color: darkblue;
        } 
        
        .topnav,#home a{
  background-color: #008b8b;
  overflow: hidden;
}
        body{
            background-color: lightgreen;
             font-family: 'Arial';
        }
        button {
            text-align: center;
            box-sizing: border-box;
  			background-color: rgb(204, 38, 66);
  			color: white;
            width: 172px;
            margin: auto;
                padding: 10px;
                padding: 10px;
                padding-bottom: 10px;
                border-radius: 20px;
                text-emphasis: bold;
                font-size: 0.42cm;
                cursor: pointer;
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
      <a href="notice.jsp">Notice Board</a>
      <!--<a href="#club" target="_blank">Extracurricular</a>-->
      
      <a href="courses.html" target="_blank">Streams</a>
      <a href="gallery.jsp">Gallery</a>
      <a href="contact.html">Contact</a>
      <a href="About.html">About</a> 
      </div> <br><br><br>
      <form id="gallery" method="post" action="gallery_upload"  enctype="multipart/form-data">
               
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