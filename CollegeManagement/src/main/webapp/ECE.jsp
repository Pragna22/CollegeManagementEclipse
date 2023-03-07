<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ECE</title>
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
  padding: 0 0px;
  width: 1500px;
  margin-right: 510px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
.roll{
  color: darkblue;
    background-color: lightcoral;
    width: 400px;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
  padding: 10px 10px 10px 10px;
  margin: 1px 10px 1px 500px;
  border-radius: 10px;
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
   <!--<a href="#club" target="_blank">Extracurricular</a>-->
   
   <a href="courses.html" target="_blank">Streams</a>
   <a href="gallery.jsp">Gallery</a>
   <a href="contact.html">Contact</a>
   <a href="About.html" class="hre">About</a> 
   </div><br>
   <h1><b>ADD MARKS </b></h1>
   <div class="det">
    <form id="ECE" method="Post" action="ECE">
      <br>  <div class="roll">
        <label for="uid"><b>Makaut Roll No.</b></label>
        <input type="number" name="uid" max="500000000000000" required>
      </div>
       <table class="table table-bordered">
        <tr>
          <th width="0%">Name: </th>
          <td width="2%">:</td>
          </tr>
           <tr>
          <th width="30%">Email: </th>
          <td width="2%">:</td>
          </tr>
           <tr>
          <th width="30%">UID: </th>
          <td width="2%">:</td>
          </tr>
          </table>
      <br><br>
		<!-- <h3>CA MARKS DETAILS</h3><br> -->
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
              
            </tr><br>
            <tr>
              <td>EC601(6277)</td>
              <td>Control System and Instrumentation</td>
              <td>
                <label for="cs1"><b></b></label>
                    <input type="number" name="cs1" id="cs1" min="0" max="25">
              </td>
              <td >
                <label for="cs2"><b></b></label>
                    <input type="number" name="cs2" id="cs2" min="0" max="25">
              </td>
              <td>
                <label for="cs3"><b></b></label>
                    <input type="number" name="cs3" id="cs3" min="0" max="25">
              </td>
              <td>
                <label for="cs4"><b></b></label>
                    <input type="number" name="cs4" id="cs4" min="0" max="25">
              </td>
            </tr>
            <tr>
              <td>EC602(6296)</td>
              <td>COMPUTER NETWORK</td>
              <td>
                <label for="cn1"><b></b></label>
                    <input type="number" name="cn1" id="cn1" min="0" max="25">
              </td>
              <td >
                <label for="cn2"><b></b></label>
                    <input type="number" name="cn2" id="cn2" min="0" max="25">
              </td>
              <td>
                <label for="dms3"><b></b></label>
                    <input type="number" name="cn3" id="cn3" min="0" max="25">
              </td>
              <td>
                <label for="cn4"><b></b></label>
                    <input type="number" name="cn4" id="cn4" min="0" max="25">
              </td>
              
            </tr>
             <tr>
              <td>HS-HU 601(6570)</td>
              <td>DISTRIBUTED SYSTEMS</td>
              <td>
                <label for="ds1"><b></b></label>
                    <input type="number" name="ds1" id="ds1" min="0" max="25">
              </td>
              <td >
                <label for="ds2"><b></b></label>
                    <input type="number" name="ds2" id="ds2" min="0" max="25">
              </td>
              <td>
                <label for="ds3"><b></b></label>
                    <input type="number" name="ds3" id="ds3" min="0" max="25">
              </td>
              <td>
                <label for="ds4"><b></b></label>
                    <input type="number" name="ds4" id="ds4" min="0" max="25">
              </td>
              
            </tr>
             <tr>
              <td>PE-EC603B(6486)</td>
              <td>BIO-MEDICAL ELECTRONICS</td>
               <td>
                <label for="mb1"><b></b></label>
                    <input type="number" name="mb1" id="mb1" min="0" max="25">
              </td>
              <td >
                <label for="mb2"><b></b></label>
                    <input type="number" name="mb2" id="mb2" min="0" max="25">
              </td>
              <td>
                <label for="mb3"><b></b></label>
                    <input type="number" name="mb3" id="mb3" min="0" max="25">
              </td>
              <td>
                <label for="mb4"><b></b></label>
                    <input type="number" name="mb4" id="mb4" min="0" max="25">
              </td>
              
            </tr>
            <tr>
            
              <td>OEC-EC604B(6593)</td>
                <td>OPERATING SYSTEMS</td>
              <td>
                <label for="os1"><b></b></label>
                    <input type="number" name="os1" id="os1" min="0" max="25">
              </td>
              <td >
                <label for="os2"><b></b></label>
                    <input type="number" name="os2" id="os2" min="0" max="25">
              </td>
              <td>
                <label for="os3"><b></b></label>
                    <input type="number" name="os3" id="os3" min="0" max="25">
              </td>
              <td>
                <label for="os4"><b></b></label>
                    <input type="number" name="os4" id="os4" min="0" max="25">
                    </td>
              
            </tr>
          </table>
        </div><br>
		<br><br>
         <!-- <h3>PCA MARKS DETAILS</h3> -->
        <br>
        <button type="button" class="collapsible"><b>PCA MARKS DETAILS</b></button>
	<div class="content">
        <table style="margin-left : 300px;">
            <tr>
              <th>Paper Code(Unique Code)</th>
              <th>Paper Name</th>
              <th>PA 1</th>
              <th>PA 2</th>
            </tr><br>
            <tr>
              <td>EC-691</td>
              <td>Control System and Instrumentation</td>
              <td>
                <label for="csp1"><b></b></label>
                <input type="number" name="csp1" id="csp1" min="0" max="40">
              </td>
              <td>
                <label for="csp2"><b></b></label>
                <input type="number" name="csp2" id="csp2" min="0" max="40">
              </td>
            </tr>
            <tr>
              <td>EC-692</td>
              <td>COMPUTER NETWORK</td>
              <td>
                <label for="cnp1"><b></b></label>
                <input type="number" name="cnp1" id="cnp1" min="0" max="40">
              </td>
              <td>
                <label for="cnp2"><b></b></label>
                <input type="number" name="cnp2" id="cnp2" min="0" max="40">
              </td>
            </tr>
           
          </table>
	</div><br>  
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
   

</body>
</html>
