<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit</title>
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
		background-color: lightpink;
		font-family: 'Arial';
		padding: 20px;
	}
  h4{
        text-decoration: underline;
       } 
       .det{
        text-align: center;
            background-color: lightgoldenrodyellow;
            color: black;
            padding: 5px 10px 10px 10px;
                margin: 20px 10px 0px 10px;
                text-align: center;
                width: 1500px;
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
        h1{
                  text-align: center;
                  color: blue;
                  text-decoration: underline;
                  font-size: 1cm;
                  text-emphasis-style: none;
                  margin-left: 1.8cm;
                }
                .logo{
                  float: left;
                }
                table, th, td {
  border:1px solid black;
}
h3{
    color: darkblue;
    background-color: lightcoral;
    width: 250px;
    text-align: center;
    margin: 20px 10px 0px 610px;
    padding: 10px 10px 10px 10px;
    border-radius: 10px;
}
.collapsible {
    color: darkblue;
    background-color: lightcoral;
  cursor: pointer;
  padding: 18px;
  width: 200px;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
  margin: 4px;
}

/* .collapsible:hover {
  background-color: #555;
} */

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
.dep{
  float: middle;
  text-align: center;
  margin : 0px 500px 20px 100px;
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
   <a href="notice.jsp">Notice Board</a>
   <a href="courses.html" target="_blank">Streams</a>
   <a href="gallery.jsp">Gallery</a>
   <a href="contact.html">Contact</a>
   <a href="About.html" class="hre">About</a> 
   </div><br>
   <h1><b>ADD MARKS </b></h1>
   <div class="det">
    <form id="marks" method="Get" action="Fac_marks">
        <label><b>Student Name :</b></label>  
        <input type="text" name="name" placeholder="Enter the name of the student"><br><br>
            <div><br>
                <label><b>Makaut Roll Number :</b></label>  
                <input type="text" name="uid" placeholder="Enter the makaut roll number.">
                </div><br>
                <div><br>
                    <label><b>Email id :</b></label>  
                    <input type="text" name="email" placeholder="Enter the email id.">
                    </div><br>
                    <div><br>
                      <label for="type">Department:</label>
                      <br>
                      <select id="type" name="dept">
                          <option value="CSE">CSE</option>
                          <option value="ECE">ECE</option>
                          <option value="IT">IT</option>
                        
                   
                      </select>  
                      <br>
                    
                    
		<br>  
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
        </script><br>
        <br><br>
        <button type="submit">S U B M I T </button>
                    <button type="reset">R E S E T</button>
    </form>
    
   </div>

   <br>
   <script>
    let changedetails= confirm("Add Student details");
  </script>

</body>
</html>