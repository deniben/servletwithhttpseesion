<%--
  Created by IntelliJ IDEA.
  User: denis
  Date: 1/8/2020
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>Prog.kiev.ua</title>
</head>
<body>
<% String login = (String)session.getAttribute("user_login"); %>

<% if (login == null || "".equals(login)) { %>
<form action="${pageContext.request.contextPath}/login" method="POST">
  Login: <input type="text" name="login"><br>
  Password: <input type="password" name="password"><br>
  <input type="submit" />
</form>
<% } else { %>
<h1>You are logged in as: <%= login %></h1>
<br>Click this link to <a href="${pageContext.request.contextPath}/login?a=exit">logout</a>
<% } %>
</body>
</html>
