<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TIMETABLE</title>
  <link rel="stylesheet" href="navbar.css">
  <style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
	
	body{
		background-color: lightpink;
		font-family: 'Arial';

	}

       .det{
        text-align: center;
            color: black;
            padding: 5px 10px 10px 10px;
                margin: 20px 10px 0px 180px;
                text-align: center;
                width: 1100px;
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
  text-align: center;
}
table{
    width: auto;
    text-align: center;
    margin-left: 290px;
    width: 550px;
}
th {
  height: 70px;
}

.roll{
  color: darkblue;
    /* background-color: lightcoral; */
    width: 550px;
  border: none;
  text-align: center;
  outline: none;
  font-size: 15px;
  padding: 10px 10px 10px 10px;
  margin: 1px 10px 1px 300px;
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
   <h1><b>ADD TIMETABLE</b></h1>
   <div class="det">
    <form id="Timetable" method="Post" action="TimetabledetailsServ">
        <br>  <div class="roll">
        <label for="uid"><b>Uid No.</b></label>
        <input type="number" name="uid" max="500000000000000" required>
      </div>
        <table >
            <tr>
              <th>Day</th>
              <th>Subject</th>
              <th>Time</th>
              
            </tr><br>
            <tr>
              <td>Monday</td>
              <td >
                <label for="monsub"><b></b></label>
                    <input type="text" name="ms" id="ms" maxlength="500000">
              </td>
              <td>
                <label for="montime"><b></b></label>
                    <input type="text" name="mt" id="mt" maxlength="500000">
              </td>
              
            </tr>
            <tr>
                <td>Tuesday</td>
                <td >
                    <label for="tuessub"><b></b></label>
                        <input type="text" name="tus" id="tus" maxlength="500000">
                  </td>
                <td>
                  <label for="tuestime"><b></b></label>
                      <input type="text" name="tut" id="tut" maxlength="500000">
                </td>
                
            </tr>
             <tr>
                <td>Wednesday</td>
                <td >
                    <label for="wedsub"><b></b></label>
                        <input type="text" name="ws" id="ws" maxlength="500000">
                  </td>
                <td>
                  <label for="wedtime"><b></b></label>
                      <input type="text" name="wt" id="wt" maxlength="500000">
                </td>
                
              
            </tr>
            <tr>
                <td>Thursday</td>
                <td >
                    <label for="thurssub"><b></b></label>
                        <input type="text" name="ths" id="ths" maxlength="500000">
                  </td>
                <td>
                  <label for="thurstime"><b></b></label>
                      <input type="text" name="tht" id="tht" maxlength="500000">
                </td>
            </tr>
              <tr>
                <td>Friday</td>
                <td >
                    <label for="frisub"><b></b></label>
                        <input type="text" name="fs" id="fs" maxlength="500000">
                  </td>
                <td>
                  <label for="fritime"><b></b></label>
                      <input type="text" name="ft" id="ft" maxlength="500000">
                </td>
            </tr> 
          </table>
        <br><br>
        <button type="submit">S U B M I T </button>
                    <button type="reset">R E S E T</button>
    </form>
</div>

</body>
</html>