<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<%
			DetailsDAO dao = new DetailsDAO();
	        CommentDAO cao = new CommentDAO();
		
			String action = request.getParameter("action");
			String idStr  = request.getParameter("id");
		    String label = request.getParameter("label");			
			String calories  = request.getParameter("calories");
			String ingredient   = request.getParameter("ingredient");
//			Integer ids = Integer.parseInt(idStr);
			
					
			if("create".equals(action))
			{
				Register user = (Register)session.getAttribute("Register");
	            Integer ca = Integer.parseInt(calories);
				details detail = new details(null, label, ca, ingredient, user);
				dao.createDetails(detail);
//				System.out.println(idStr);
			}
			
			
			if("delete".equals(action))
			{
//			System.out.println(idStr);
	        int ids = Integer.parseInt(idStr);
			dao.deleteDetails(ids);
//          cao.deleteComment(id);
		
			}
			
			if("details".equals(action))
			{
//			System.out.println(idStr);
	        int ids = Integer.parseInt(idStr);
	        dao.readDetailsById(ids);
			}
			
			List<details> allDetails = dao.readAllDetails();
		%>
		<h1>
			hello
		</h1>
		<a href="search.jsp">Homepage</a>
		<form action="Myaccount.jsp">
		<table class="table table-striped">
			<tr>
				<th>Label</th>
				<th>Calories</th>
				<th>Ingredient</th>
				<th>&nbsp;</th>
			</tr>
			<tr>

				<td><input name="label" class="form-control"/></td>
				<td><input name="calories" class="form-control"/></td>
				<td><input name="ingredient" class="form-control"/></td>
				<td>
					<button class="btn btn-primary" type="submit" name="action" value="create">Create</button>
				</td>
			</tr>
		<%
			for(details de:allDetails)
			{
		%>	<tr>
				<td>
				    <a href="recipeDetails.jsp?id=<%= de.getId() %>">
				    <%= de.getLabel() %>
				    </a>
				</td>
				<td><%= de.getCalories() %></td>
				<td><%= de.getIngredient() %></td>
				<td>		 
				<a href="Myaccount.jsp?action=delete&id=<%= de.getId() %>" class="btn btn-danger">Delete</a>
				
				</td> 
			</tr>
		<%
			}
		%>
		</table>
		</form>
	</div>
</body>
</html>