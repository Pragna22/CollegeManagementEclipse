<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CSE</title>
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
    <form id="CSE" method="Post" action="CSE">
        <br>  <div class="roll">
        <label for="uid"><b>Makaut Roll No.</b></label>
        <input type="number" name="uid" max="500000000000000" required>
      </div>
       <table class="table table-bordered">
         <%
 String name = request.getParameter("name");
String email = request.getParameter("email");
 String uid = request.getParameter("uid");
%>
        <tr>
          <th width="30%">Name: </th>
          <td width="2%">: <%= name %></td>
          </tr>
           <tr>
          <th width="2%">Email: </th>
        
          
          <td width="20%">: <%= email %></td>
          </tr>
           <tr>
          <th width="2%">UID: </th>
          <td width="20%">:  <%= uid %></td>
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
              <td>PCC-CS601(6577)</td>
              <td>DATABASE MANAGEMENT SYSTEMS</td>
              <td>
                <label for="dms1"><b></b></label>
                    <input type="number" name="dms1" id="dms1" min="0" max="25">
              </td>
              <td >
                <label for="dms2"><b></b></label>
                    <input type="number" name="dms2" id="dms2" min="0" max="25">
              </td>
              <td>
                <label for="dms3"><b></b></label>
                    <input type="number" name="dms3" id="dms3" min="0" max="25">
              </td>
              <td>
                <label for="dms4"><b></b></label>
                    <input type="number" name="dms4" id="dms4" min="0" max="25">
              </td>
            </tr>
            <tr>
              <td>PCC-CS602(6596)</td>
              <td>COMPUTER NETWORKS</td>
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
              <td>PEC-IT601B(6590)</td>
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
              <td>PEC-IT602B(6584)</td>
              <td>DATA MINING & DATA WAREHOUSE</td>
              <td>
                <label for="dm1"><b></b></label>
                    <input type="number" name="dm1" id="dm1" min="0" max="25">
              </td>
              <td >
                <label for="dm2"><b></b></label>
                    <input type="number" name="dm2" id="dm2" min="0" max="25">
              </td>
              <td>
                <label for="dm3"><b></b></label>
                    <input type="number" name="dm3" id="dm3" min="0" max="25">
              </td>
              <td>
                <label for="dm4"><b></b></label>
                    <input type="number" name="dm4" id="dm4" min="0" max="25">
              </td>
              
              
            </tr>
              <tr>
              <td>OEC-IT601A(6595)</td>
              <td>NUMERICAL METHODS</td>
              <td>
                <label for="nm1"><b></b></label>
                    <input type="number" name="nm1" id="nm1" min="0" max="25" >
              </td>
              <td >
                <label for="nm2"><b></b></label>
                    <input type="number" name="nm2" id="nm2" min="0" max="25">
              </td>
              <td>
                <label for="nm3"><b></b></label>
                    <input type="number" name="nm3" id="nm3" min="0" max="25">
              </td>
              <td>
                <label for="dm4"><b></b></label>
                    <input type="number" name="nm4" id="nm4" min="0" max="25">
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
              <td>PCC-CS691(6581)</td>
              <td>DATABASE MANAGEMENT SYSTEMS</td>
              <td>
                <label for="dmp1"><b></b></label>
                <input type="number" name="dmp1" id="dmp1" min="0" max="40">
              </td>
              <td>
                <label for="dmp2"><b></b></label>
                <input type="number" name="dmp2" id="dmp2" min="0" max="40">
              </td>
            </tr>
            <tr>
              <td>PCC-CS692(6597)</td>
              <td>COMPUTER NETWORKS</td>
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
   <!-- <script>
    let changedetails= confirm("Add Student details");
  </script> -->

</body>
</html>