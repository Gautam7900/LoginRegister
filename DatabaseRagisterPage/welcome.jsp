<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@page import="jakarta.servlet.http.HttpSession" %>
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexStyle.css">
</head>
<body>
 <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session != null && session.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session.getAttribute("username");
    %>

<div class="container">
	<h1>Welcome,<%= username %>!</h1>
	<h3>This projcet has been passionatelly crafted by loginPage</h3>
     
     <a href="index.html">LOGOUT</a>
	</div>
	 <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
</body>
</html>