<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="user.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recipe Details</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />

 		<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/jquery.scrollgress.min.js"></script>
		<script src="js/skel.min.js"></script>
 		<script src="js/skel-layers.min.js"></script> 
 		<script src="js/init.js"></script>  
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
		</noscript>
</head>

<body>
    <%
	FavoriteDAO dao = new FavoriteDAO();
    DetailsDAO ddo = new DetailsDAO();
    CommentDAO dco = new CommentDAO();
	
	String action = request.getParameter("action");
	String ids = request.getParameter("id");
	String content = request.getParameter("content");


        if("fav".equals(action))
		{ 
        	
        	Register rid = (Register)session.getAttribute("Register");
        	details did = ddo.readDetailsById(Integer.parseInt(ids));
        	
        	favorite fa = new favorite(null, rid, did);
        	dao.createFavorite(fa);
         	}
        
        
        if("com".equals(action))
        {
       	Register rid = (Register)session.getAttribute("Register");
        	details did = ddo.readDetailsById(Integer.parseInt(ids));
        	
        	Comment com = new Comment(null, rid, did, content);
        	dco.createComment(com);
        }
      
    %>
    


    
    <!-- CTA -->
      			<section id="cta">
<%--       			<h2>Favourite</h2>
     			<div class="row uniform 50%">
     			<div class="8u 12u(mobilep)" action = "recipeDetails.jsp">
							<input type="submit" name = "fav" value="Favourite" class="fit"  />
     			<form action="recipeDetails.jsp">
                <button class="btn btn-primary" type="submit" name="action" value="fav">Favourite</button>
                <input type="hidden" name="id" value="<%=ids%>">
                </form>
                </div>
                </div> --%>



				<h2>Favourite & Comment</h2>
				<form name="comment"  action="recipeDetails.jsp">
				<input type="hidden" name="pagename" value="comment"/>
					<div class="row uniform 50%">
					    <div class="8u 12u(mobilep)" action = "recipeDetails.jsp">
					        <button type="submit" name="action" value="fav">Favourite</button>
					        <input type="hidden" name="id" value="<%=ids%>">
<!-- 							<input type="submit" name = "action" value="Favourite"  /> -->
                        </div>
                        <div>
                            <form action = "recipeDetails.jsp">
                            <button class="btn btn-primary" type="submit" name="action" value="com">Comment</button>
					        <input type="text" name="content" value="content">
					        </form>
                        </div>
<!-- 						<div class="8u 12u(mobilep)">
							<input type="text" name="com" id="comment" placeholder="Comment" />
						</div>
						<div class="4u 12u(mobilep)">
							<input type="submit" value="comment" />
						</div> -->
					</div>
				</form>

			</section>
    
<%--     <div>
    <form action="recipeDetails.jsp">
    <button class="btn btn-primary" type="submit" name="action" value="comment">Comment</button>
    <input type="submit" name="id" value="<%=ids%>">
    
    </form>
       
    </div>
     --%>
    
    
    
   
</body>
</html>