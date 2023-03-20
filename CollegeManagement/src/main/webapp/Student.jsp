<%@ page import="java.util.ArrayList" %>
<%@ page import=" gettersetter.details" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="Database.jdbcutil" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student</title>
    <link rel="stylesheet" href="navbar.css">
    <style>
        .topnav,#home a{
            background-color: #008b8b;
            overflow: hidden;
          }  
     .logo{
        float: left;
       }
        .head {
            text-align: left;
            background-color: lightgoldenrodyellow;
            color: darkblue;
            box-sizing: border-box;
            margin: 0px 100px 0px 300px;
            width: 910px;
            border-radius: 20px;
            padding: 5px 5px 5px 10px;
        }
        body {
          
background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(221,4,236,1) 58%, rgba(239,245,246,1) 99%);
            padding: 0;
            margin: 0;
            font-family: 'Lato', sans-serif;
            color: #000;
          }

        .mid{
            margin: 20px 200px 0px 100px;
            text-align: center;
            margin-right: 6cm;
            margin-top: 2cm;
          
        }
        .mid{
            animation: blinker 0.5s linear infinite;
        }

        @keyframes blinker {
            50% {
                opacity: 0.6;
            }
        }
        .name{
            text-align: center;
            float: left;
            font-size: 1cm;
            margin-right: 30cm;
        }
        .info{
            text-align: center;
            background-color: aquamarine;
            color: black;
            padding: 5px 10px 10px 10px;
                margin: 20px 10px 0px 530px;
                text-align: center;
                width: 400px;
        }
        .content {
  padding: 10px ;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
  cursor: pointer;
}
.collapsible {
 
            text-align: center;
            box-sizing: border-box;
  			background-color: rgb(93, 54, 234);
  			color: white;
            width: 272px;
            margin: auto;
                padding: 20px;
                padding: 20px;
                padding-bottom: 20px;
                border-radius: 20px;
                text-emphasis: bold;
                font-size: 0.42cm;
}

collapsible:hover {
  background-color: #555;
}
.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
.student_profile .profile_img{
         border-radius: 10px;
         width: 150px;
  height: 150px;
  /* object-fit: cover; */
  margin: 10px auto;
  border: 10px solid rgb(109, 103, 103);
  border-radius: 50%;
  font-size: 20px;
  font-weight: 700;
  font-size: 14px;
  padding: 5px 10px;
  color: #000;
}
img {
    float: left;
  }
  .name{
    font-family: cursive;
    font-size: 30px
  }
  .edit {
            text-align: center;
            box-sizing: border-box;
            margin: 40px 0px 0px 750px; 
            width: 100px;
            border-radius: 20px; 
            padding: 10px;
            font-size: 20px;
            font-weight: bold;
            background: yellow;
            
            
         }

        
         @mixin object-center {
  display: flex;
  justify-content: center;
  align-items: center;
}




  input {
    display: none;
  }
  
 
label {
    display: inline-block;
    max-width: 100%;
    margin-bottom: 5px;
    font-weight: 700;
}

label {
    cursor: default;
}

 
  



body {
  height: 100vh;

  @include object-center;
}
  a:hover {
    text-decoration: none;
  }


.profile-pic {
  color: transparent;
  transition: all 0.3s ease;
  display: flex;
  justify-content: center;
  align-items: center;
  position: relative;
  transition: all 0.3s ease;
  float:left;
}
.profile-pic input {
  display: none;
}
.profile-pic img {
  position: absolute;
  object-fit: cover;
  width: 165px;
  height: 165px;
  box-shadow: 0 0 10px 0 rgba(255, 255, 255, 0.35);
  border-radius: 100px;
  z-index: 0;
}
.profile-pic .-label {
  cursor: pointer;
  height: 165px;
  width: 165px;
}
.profile-pic:hover .-label {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: rgba(0, 0, 0, 0.8);
  z-index: 10000;
  color: #fafafa;
  transition: background-color 0.2s ease-in-out;
  border-radius: 100px;
  margin-bottom: 0;
}
.profile-pic span {
  display: inline-flex;
  padding: 0.2em;
  height: 2em;
}
table,th,td{
border: 1px solid black;
}
    </style>
</head>
<body>

    <div id="home">
        <a href="index.html" target="_blank">Home</a>
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
     </div> 
     <br>

     <div class="student_profile">
        <div class="container">      
       <form method="Post" action="Profile_Pic">      
<div class="profile-pic">
  <label class="-label" for="file">
    <span class="glyphicon glyphicon-camera"></span>
    <span>Change Image</span>
  </label>
 < <input id="file" type="file" name="pic" onchange="loadFile(event)" />
  <img src="stu.jpg" id="output" width="200" />
</div>
</form>
        <div class="head">
        <h1><marquee>FUTURE INSTITUTE OF ENGINEERING & MANAGEMENT</marquee></h1>
    </div>
        <div class="mid">
            <h1>WELCOME</h1>
        </div>
        <div class="name" id="name">
         
        </div><br><br><br><br><br><br>
         <script>
        
        function getCookie(name) {
        	  var value = "; " + document.cookie;
        	  var parts = value.split("; " + name + "=");
        	  if (parts.length == 2) return parts.pop().split(";").shift();
        	}
        var fname = getCookie("fname");
        var lname = getCookie("lname");
        var array = [fname,lname];
        const name=array.join(' ');

        document.getElementById("name").innerHTML = name;

        </script>
        <button type="button" class="collapsible">Student Details</button>
    <div class="content">
        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
        <%
String email = "";
 String user_uid;
Cookie[] cookies = request.getCookies();
if (cookies != null) {
  for (Cookie cookie : cookies) {
    if (cookie.getName().equals("email")) {
      email = cookie.getValue();
      break;
      }
    
}
  email = "\"" + email + "\"";
  System.out.println("email is "+email);

}
else
{
	System.out.println("Cookie is null");
	  response.sendRedirect("Student.jsp");
}
  Connection conn = null;
  PreparedStatement statement = null;
  ResultSet resultSet = null;
  Connection conn1 = null;
  PreparedStatement statement1 = null;
  ResultSet resultSet1 = null;
  //final String DRIVER = "com.mysql.cj.jdbc.Driver";
  //final String URL = "jdbc:mysql://127.0.0.1:3306/college_project";
   //final String USERNAME = "root";
   //final String PASSWORD = "Pragna@05";
  ArrayList<details> detailsList = new ArrayList<details>();
  //ArrayList<UID> detailsLists = new ArrayList<UID>();


  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    //conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    conn= jdbcutil.getConnection();
    statement = conn.prepareStatement("SELECT *  FROM student_details where email= "+email);
    statement1 = conn.prepareStatement("SELECT uid FROM users where email= "+email);
	System.out.println("query 1 is "+statement);
	System.out.println("query 2 is "+statement1);
    resultSet = statement.executeQuery();
    resultSet1 = statement1.executeQuery();
    
	
    while (resultSet.next() && resultSet1.next()) {
      details detail = new details("a","b","c","d","e","f","g","h");
      detail.setEmail(resultSet.getString("email"));
      detail.setFname(resultSet.getString("fname"));
      detail.setMname(resultSet.getString("mname"));
      detail.setDept(resultSet.getString("dept"));
      detail.setAddress(resultSet.getString("address"));
      detail.setBgroup(resultSet.getString("b_group"));
      detail.setPhn(resultSet.getString("phn"));
      detail.setUid(resultSet1.getString("uid"));
      System.out.println("Email is "+detail.getEmail());
      //user_uid=detail.getUid();
      pageContext.setAttribute("user_uid",detail.getUid());
      detailsList.add(detail);
      
    
    }
    
    //System.out.println("uid is "+resultSet1.getString("uid"));
    request.setAttribute("detailsList", detailsList);
	//request.setAttribute("detailsLists", detailsLists);
  }

  catch (Exception e) {
    e.printStackTrace();
  }
%>
    <table class="table table-bordered">
        <tr>
          <th width="30%">Father's Name</th>
          <td width="2%">:</td>
             <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getFname() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
        </tr>
        <tr>
          <th width="30%">Mother's Name</th>
          <td width="2%">:</td>
             <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getMname() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
        </tr>
        <tr>
          <th width="30%">Blood Group	</th>
          <td width="2%">:</td>
             <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getBgroup() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
        </tr>

        <tr>
            <th width="30%">Department</th>
            <td width="2%">:</td>
             <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getDept() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
          </tr>
          <tr>
            <th width="30%">UID</th>
            <td width="2%">:</td>
            <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getUid() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
      </table>
      <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Contact Information</h3>
      <table class="table table-bordered">
 <tr>
          <th width="30%">Address	</th>
          <td width="2%">:</td>
         
      
         <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getAddress() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
  </tr>
 
        <tr>
          <th width="30%">Email	</th>
          <td width="2%">:</td>
         
      
         <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getEmail() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
  </tr>
    <tr>
          <th width="30%">Phone	</th>
          <td width="2%">:</td>
        <%
    try {
      for (details det : detailsList) {
  %>
 
   
    <td><%= det.getPhn() %></td>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %>
  </tr>
        
      </table>
    
      <div class="edit">
      <br><a href="studentedit.jsp?uid=<%= pageContext.getAttribute("user_uid") %>">Edit</a>
    </div>
    </div>
    <br><br>
     <form id="stu_marks" name="stu_marks" method="Get" action="stu_marks">
      <button type="button" class="collapsible"><a href="Stu_marks.jsp">Marks</a></button>
      <div class="content">
       <a href="Stu_marks.jsp"></a>
      </div>
      </form>
      <br>
      <form id="Library_detailsServ" name="Library_detailsServ" method="Get" action="Library_detailsServ">
      <button type="button" class="collapsible"><a href="display_library.jsp?uid=<%= pageContext.getAttribute("user_uid") %>">Library</a></button>
     </form>    
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
           

             var loadFile = function (event) {
             var image = document.getElementById("output");
             image.src = URL.createObjectURL(event.target.files[0]);
            };

            </script>
        
    </div>
    </body>
    </html>