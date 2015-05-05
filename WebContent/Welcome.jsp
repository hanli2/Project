<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome</h1>
<%
String action = request.getParameter("action");
if("logout".equals(action)){
	session.removeAttribute("Register");
}
	
Register user = (Register)session.getAttribute("Register");
if(user != null)
	out.println(user.getEmail());
%>
<form action="Welcome.jsp">
<button name="action" value="logout">log out</button>
</form>
<script>

<%
String username = request.getParameter("Username");


String link = "<a href=\'http://localhost:8080/Project/Myaccount.jsp?Username=" + username + "\'>";
String linkfinish = "</a>";

out.print("document.write(\""+link+username+linkfinish+"<br>\");\n");
%>

</script>


</body>
</html>