<%@ page import="java.util.ArrayList" %>
<%@ page import=" gettersetter.Library" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.Cookie" %>
<%@ page import="Database.jdbcutil" %>

<%

 //String user_uid="";
/*Cookie[] cookies = request.getCookies();
if (cookies != null) {
  for (Cookie cookie : cookies) {
    if (cookie.getName().equals("uid")) {
    	user_uid = cookie.getValue();
      break;
      }
    
}
  user_uid = "\"" + user_uid + "\"";
  System.out.println("UID is "+user_uid);

}
else
{
	System.out.println("Cookie is null");
	  response.sendRedirect("Student.jsp");
}*/

String user_uid=request.getParameter("uid");

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
  ArrayList<Library> libraryDetails = new ArrayList<Library>();
  //ArrayList<UID> detailsLists = new ArrayList<UID>();


  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    //conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
    conn= jdbcutil.getConnection();
    statement = conn.prepareStatement("SELECT *  FROM library  where uid= "+user_uid);
    statement1 = conn.prepareStatement("SELECT uid FROM users where uid= "+user_uid);
	System.out.println("query 1 is "+statement);
	System.out.println("query 2 is "+statement1);
    resultSet = statement.executeQuery();
    resultSet1 = statement1.executeQuery();
    
	
    if (resultSet.next() && resultSet1.next()) {
      
	Library ob = new Library("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q");

    ob.setUid(resultSet.getString("uid"));
    ob.setBook1(resultSet.getString("book1"));
    ob.setId1(resultSet.getString("id1"));
    ob.setIssue1(resultSet.getString("issue1"));
    ob.setDue1(resultSet.getString("due1"));
    ob.setBook2(resultSet.getString("book2"));
    ob.setId2(resultSet.getString("id2"));
    ob.setIssue2(resultSet.getString("issue2"));
    ob.setDue2(resultSet.getString("due2"));
    ob.setBook3(resultSet.getString("book3"));
    ob.setId3(resultSet.getString("id3"));
    ob.setIssue3(resultSet.getString("issue3"));
    ob.setDue3(resultSet.getString("due3")); 
    ob.setBook4(resultSet.getString("book4")); 
    ob.setId4(resultSet.getString("id4")); 
    ob.setIssue4(resultSet.getString("issue4"));
    ob.setDue4(resultSet.getString("due4")); 
  
    
       

    	libraryDetails.add(ob);
      
    
    }
    
    //System.out.println("uid is "+resultSet1.getString("uid"));
   request.setAttribute("libraryDetails", libraryDetails);
	//request.setAttribute("detailsLists", detailsLists);
  }

  catch (Exception e) {
    e.printStackTrace();
  }
%>

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
		 background-image: linear-gradient(to right, #c6ffdd, #fbd786, #f7797d);
		 background-attachment: fixed;
         background-repeat: no-repeat;
		font-family: 'Arial';
	}
 
       .det{
        text-align: center;  
            color: black;
            padding: 0px 10px 10px 100px;
                margin: 20px 10px 0px 190px;
                text-align: center;
                width: 1000px;
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
                  margin-left: 5px;
                }
                .logo{
                  float: left;
                }
                table, th, td {
  border:1px solid black;
  text-align: center;
}
table{
    width: 500px;
    text-align: center;
    margin-left: 190px;
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
        <table >
        <tr>
            <th>Book Name</th>
            <th>Book Id</th>
            <th>Issue date</th>
            <th>Due date</th>
        </tr>
        <br>
        <tr>
            <td> <%
                try {
                  for (Library book: libraryDetails) {
              %>
             
               
              <%= book.getBook1() %>
            
              <%
                  }
                } catch (Exception e) {
              %>
              <tr>
                <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
              </tr>
              <%
                }
              %></td>
            <td>  <%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getId1() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
            <td><%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getIssue1() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
  <td><%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getDue1() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
        <br>

        <tr>
            <td> <%
                try {
                  for (Library book: libraryDetails) {
              %>
             
               
              <%= book.getBook2() %>
            
              <%
                  }
                } catch (Exception e) {
              %>
              <tr>
                <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
              </tr>
              <%
                }
              %></td>
            <td>  <%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getId2() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
            <td><%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getIssue2() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>
  <td><%
    try {
      for (Library book: libraryDetails) {
  %>
 
   
  <%= book.getDue2() %>

  <%
      }
    } catch (Exception e) {
  %>
  <tr>
    <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
  </tr>
  <%
    }
  %></td>

  <tr>
    <td> <%
        try {
          for (Library book: libraryDetails) {
      %>
     
       
      <%= book.getBook3() %>
    
      <%
          }
        } catch (Exception e) {
      %>
      <tr>
        <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
      </tr>
      <%
        }
      %></td>
    <td>  <%
try {
for (Library book: libraryDetails) {
%>


<%= book.getId3() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>
    <td><%
try {
for (Library book: libraryDetails) {
%>


<%= book.getIssue3() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>
<td><%
try {
for (Library book: libraryDetails) {
%>


<%= book.getDue3() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>

<tr>
    <td> <%
        try {
          for (Library book: libraryDetails) {
      %>
     
       
      <%= book.getBook4() %>
    
      <%
          }
        } catch (Exception e) {
      %>
      <tr>
        <td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
      </tr>
      <%
        }
      %></td>
    <td>  <%
try {
for (Library book: libraryDetails) {
%>


<%= book.getId4() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>
    <td><%
try {
for (Library book: libraryDetails) {
%>


<%= book.getIssue4() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>
<td><%
try {
for (Library book: libraryDetails) {
%>


<%= book.getDue4() %>

<%
}
} catch (Exception e) {
%>
<tr>
<td colspan="2">An error occurred while processing the request: <%= e.getMessage() %></td>
</tr>
<%
}
%></td>
           
     
          </table>

</body>
</html> 