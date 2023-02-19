<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
        .topnav,#home a{
  background-color: #008b8b;
  overflow: hidden;
}
        body{
            background-color: lightgreen;
            font-family: 'Arial';
        }
        .det{
        text-align: center;
            background-color: lightgoldenrodyellow;
            color: black;
            padding: 5px 10px 10px 10px;
                margin: 20px 10px 0px 10px;
                text-align: center;
                width: 450px;
                border-radius: 10px;
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
    
      
      <a href="login.html" target="_blank">Logout</a>
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
      <br>
    </div><br><br><br>
    <form id="stu_marks" method="post" action="stu_marks">
      <div class="det">
    <label><b>Makaut roll number : </b></label>
    <input type="number" id="uid" name="uid" maxlength="50" placeholder="enter your uid number">
    <br><br>
    <label ><b>Department</b></label>
                    <select name="dept" id="dept">
                        <option value="CSE">CSE</option>
                        <option value="ECE">ECE</option>
                        <option value="IT">IT</option>
             
                    </select><br><br>
    <br><button type="submit">Submit Now</button>
                    <button type="reset">Reset Now</button>
                </div>
                </form>
</body>
</html>

