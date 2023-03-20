<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>LIBRARY</title>
  <link rel="stylesheet" href="navbar.css">
  <style>
    .topnav,#home a{
                 background-color: #008b8b;
                 overflow: hidden;
                }
	
	body{
		 background-image: linear-gradient(109.6deg, rgba(156,252,248,1)11.2%, rgba(110,123,251,1)91.1%);
		 background-attachment: fixed;
         background-repeat: no-repeat;
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
   <h1><b>BOOK DETAILS</b></h1>
   <div class="det">
    <form id="Library" method="Post" action="Library_detailsServ">
        <br>  <div class="roll">
        <label for="uid"><b>Uid No.</b></label>
        <input type="number" name="uid" max="500000000000000" required>
      </div>
        <table >
            <tr>
              <th>Book Name</th>
              <th>Book Id</th>
              <th>Issue date</th>
              <th>Due date</th>
              
            </tr><br>
            <tr>
              <td>
                <label for="book1"><b></b></label>
                <input type="text" name="book1" id="book1" maxlength="500000">
              </td>
              <td >
                <label for="id1"><b></b></label>
                    <input type="text" name="id1" id="id1" maxlength="500000">
              </td>
              <td>
                <label for="issue1"><b></b></label>
                    <input type="text" name="issue1" id="issue1" maxlength="500000">
              </td>
              <td>
                <label for="due1"><b></b></label>
                    <input type="text" name="due1" id="due1" maxlength="500000">
              </td>
              
            </tr>
            <tr>
                <td>
                  <label for="book2"><b></b></label>
                  <input type="text" name="book2" id="book2" maxlength="500000">
                </td>
                <td >
                  <label for="id2"><b></b></label>
                      <input type="text" name="id2" id="id2" maxlength="500000">
                </td>
                <td>
                  <label for="issue2"><b></b></label>
                      <input type="text" name="issue2" id="issue2" maxlength="500000">
                </td>
                <td>
                  <label for="due2"><b></b></label>
                      <input type="text" name="due2" id="due2" maxlength="500000">
                </td>
                
              </tr>
              <tr>
                <td>
                  <label for="book3"><b></b></label>
                  <input type="text" name="book3" id="book3" maxlength="500000">
                </td>
                <td >
                  <label for="id3"><b></b></label>
                      <input type="text" name="id3" id="id3" maxlength="500000">
                </td>
                <td>
                  <label for="issue3"><b></b></label>
                      <input type="text" name="issue3" id="issue3" maxlength="500000">
                </td>
                <td>
                  <label for="due3"><b></b></label>
                      <input type="text" name="due3" id="due3" maxlength="500000">
                </td>
                
              </tr>
              <tr>
                <td>
                  <label for="book4"><b></b></label>
                  <input type="text" name="book4" id="book4" maxlength="500000">
                </td>
                <td >
                  <label for="id4"><b></b></label>
                      <input type="text" name="id4" id="id4" maxlength="500000">
                </td>
                <td>
                  <label for="issue4"><b></b></label>
                      <input type="text" name="issue4" id="issue4" maxlength="500000">
                </td>
                <td>
                  <label for="due4"><b></b></label>
                      <input type="text" name="due4" id="due4" maxlength="500000">
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