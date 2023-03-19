<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
        .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
	h1{
		text-align: center;
	}
	body{
		background-color: lightgray;
		font-family: 'Arial';
	}
    .head {
            text-align: left;
            background-color: lightgoldenrodyellow;
            color: darkblue;
            box-sizing: border-box;
            margin: 0px 100px 0px 300px;
            width: 910px;
            border-radius: 20px;
            padding: 2px 2px 2px 2px;
        }
        .mid{
            animation: blinker 1.5s linear infinite;
        }

        @keyframes blinker {
            50% {
                opacity: 0.6;
            }
        }
        button{
			text-align: center;
            box-sizing: border-box;
  			background-color: lightgoldenrodyellow;
  			color: rgb(128, 0, 0);
            width: 172px;
                padding: 10px;
                padding: 10px;
                padding-bottom: 10px;
                border-radius: 20px;
                text-emphasis: bold;
                font-size: 0.42cm;
				cursor: pointer;
                
		}
        .collapsible {
  background-color: lightsalmon;
  color: darkblue;
  cursor: pointer;
  padding: 18px;
  width: 200px;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
  margin: 4px;
}

.collapsible:hover {
  background-color: #555;
}

.content {
  display: none;
  overflow: hidden;
 
}
	p{
		font-size: 20px;
        text-align: center;
	}
    .log{
        text-align: center;
    }
     .gallery {
            box-sizing: border-box; 
            width: 170px;
           padding: 10px;
                padding: 10px;
                padding-bottom: 10px;
                border-radius: 20px;
            font-size: 20px;
            font-weight: bold;
            background: yellow; 
            float: left;
            text-align: center; 
            
         }
         .notice {
            box-sizing: border-box; 
            width: 270px;
           padding: 10px;
                padding: 10px;
                padding-bottom: 10px;
                border-radius: 20px;
            font-size: 20px;
            font-weight: bold;
            background: yellow; 
            float: left;
            text-align: center; 
            
         }
    </style>
</head>
<body>
    <div id="logo">
		<img src="fiem.jpg">
	  </div><br>
      <div id="home">
        <a href="index.html">Home</a>
     </div>
    <div class="topnav">
   
     
     <a href="login.html">Logout</a>
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
     <a href="About.html" class="hre">About</a> 
     </div><br>
     <div class="head">
        <h1><marquee>FUTURE INSTITUTE OF ENGINEERING & MANAGEMENT</marquee></h1>
    </div><br><br>
    <div class="log">
        <img src="admin.jpg" alt="">
    </div>
    <div class="mid">
        <h1>ADMIN</h1>
    </div><br>
   <button type="button" class="collapsible"> 
        <a href="timetable.jsp">Faculty</a>
      </button>
      </div><br><br>
      <button type="button" class="collapsible">
       <a href="library_details.jsp">Student</a>
       </button>
    
      <br><br>
      <button type="button" class="collapsible"><b>Management</b></button>
      <div class="content">
      <br>
    <div class="gallery">
     <a href="galleryedit.jsp" target="_blank">Add to Gallery</a>
      </div>
      <div class="notice">
     <a href="noticeedit.jsp" target="_blank">Add to Notice Board</a>
    </div>
      </div>
      <script>
        var coll = document.getElementsByClassName("collapsible");
        var i;
        
        for (i = 0; i < coll.length; i++) {
          coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
              content.style.display = "none";
            } else {
              content.style.display = "block";
            }
          });
        }
        </script>
</body>
</html>