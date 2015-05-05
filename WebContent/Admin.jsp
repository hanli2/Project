<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%DetailsDAO dao = new DetailsDAO();
String action = request.getParameter("action");
String idStr  = request.getParameter("id");

if("delete".equals(action))
{
//System.out.println(idStr);
int ids = Integer.parseInt(idStr);
dao.deleteDetails(ids);
}
List<details> allDetails = dao.readAllDetails();%>
<table class="table table-striped">
			<tr>
				<th>Label</th>
				<th>Calories</th>
				<th>Ingredient</th>
				<th>&nbsp;</th>
			</tr>
</tr>
		<%
			for(details de:allDetails)
			{
		%>	<tr>
				<td>
				    <a href="Admin.jsp?id=<%= de.getId() %>">
				    <%= de.getLabel() %>
				    </a>
				</td>
				<td><%= de.getCalories() %></td>
				<td><%= de.getIngredient() %></td>
				<td>		 
				<a href="Admin.jsp?action=delete&id=<%= de.getId() %>" class="btn btn-danger">Delete</a>
				
				</td> 
			</tr>
			<%
			}
		%>
		</table>
</body>
</html>