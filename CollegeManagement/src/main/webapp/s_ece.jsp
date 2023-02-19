<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eced</title>
    <link rel="stylesheet" href="navbar.css">
</head>
<style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
    table, th, td {
      border:1px solid black;
    }
    h3{
        background-color: aqua;
        color: brown;
        width: 300px;
        margin: 0px 680px 0px 40px;
        padding-left: 10px;
    }
    body{
        background-color: lightpink;
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
.content {
  padding: 0 0px;
  width: 650px;
  margin-right: 510px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
  text-align: center;
}
.logo{
        float: left;
    }
    
    </style>
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
   <a href="#Notice">Notice Board</a>
   <!--<a href="#club" target="_blank">Extracurricular</a>-->
   
   <a href="courses.html" target="_blank">Streams</a>
   <a href="#gallery">Gallery</a>
   <a href="contact.html">Contact</a>
   <a href="About.html" class="hre">About</a> 
   </div><br>
    
    <button type="button" class="collapsible"><b>CA MARKS DETAILS</b></button>
	<div class="content">
    <table >
        <tr>
            <th>Paper Code(Unique Code)</th>
              <th>Paper Name</th>
              <th>CA 1</th>
              <th>CA 2</th>
              <th>CA 3</th>
              <th>CA 4</th>
        </tr>
        <br>
        <tr>
            <td>EC601(6277)</td>
            <td>Control System and Instrumentation</td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
        </tr>
        <br>
        <tr>
            <td>EC602(6296)</td>
              <td>COMPUTER NETWORKS</td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
      </tr><br>
      <tr>
        <td>HS-HU 601(6570)</td>
              <td>DISTRIBUTED SYSTEMS</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
  </tr><br>
  <tr>
    <td>PE-EC603B(6486)</td>
    <td>BIO-MEDICAL ELECTRONICS</td>
    <td></td>
        <td></td>
        <td></td>
        <td></td>
  </tr><br>
  <tr>
    <td>OEC-EC604B(6593)</td>
    <td>OPERATING SYSTEMS</td>
    <td></td>
        <td></td>
        <td></td>
        <td></td>
  </tr>
          </table>
        </div><br><br>
        <button type="button" class="collapsible"><b>PCA MARKS DETAILS</b></button>
	<div class="content">
        <table>
            <tr>
            <th>Paper Code(Unique Code)</th>
              <th>Paper Name</th>
              <th>PCA 1</th>
              <th>PCA 2</th>
            </tr><br>
            <tr>
                <td>EC-691</td>
              <td>Control System and Instrumentation</td>
              <td></td>
              <td></td>
                </tr>
                <br>
            <tr>
                <td>EC-692</td>
              <td>COMPUTER NETWORKS</td>
              <td></td>
              <td></td>
                </tr>
        </table>
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