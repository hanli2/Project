<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.rest.client.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
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
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>

		<!-- Header -->
			<header id="header" class="skel-layers-fixed">
				<h1><a href="index.html">Recipe Advisor</a> </h1>
				<nav id="nav">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>
							<a href="" class="icon fa-angle-down">Layouts</a>
							<ul>
								<li><a href="profile.html">Profile</a></li>
								<li><a href="contact.html">Contact</a></li>
								<li><a href="elements.html">Elements</a></li>
							</ul>
						</li>
						<li><a href="Login.jsp" class="button">Login</a></li>
						<li><a href="Register.jsp" class="button">Sign up</a></li>
					</ul>
				</nav>
			</header>

		<!-- Main -->
			<section id="main" class="container">
				<header>
					<h2>Detailed Recipe</h2>
				</header>
			</section>


<script>

<%

String keyword = request.getParameter("keyword");
String num = request.getParameter("num");

int number = Integer.parseInt(num);

TryUrl tryurl = new TryUrl();

Recipe[] recipes = tryurl.findRecipeByName(keyword);
int count = 0;
for(Recipe recipe : recipes){
	if(count++ != number) {
		continue;
	}
	
	out.print("document.write(\""+recipe.getLabel()+"<br>\");\n");
	String srcimg = "";
	srcimg = "<img src=\"" + recipe.getImage() + "\">";
	out.print("document.write('"+ srcimg +"<br>');\n");
	out.print("document.write(\""+recipe.getSource()+"<br>\");\n");
	out.print("document.write(\""+recipe.getCalories()+"<br>\");\n");
	out.print("document.write(\'"+recipe.getIngredientLines()+"<br>\');\n");
	out.print("document.write(\""+recipe.getLevel()+"<br>\");\n");

}


%>

</script>

<a href="Comment.jsp">Comment</a>

		<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
					<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
				</ul>
				<ul class="copyright">
					<li>Copyright (c) 2015</li><li>Design: Han Li | Yao Liu | Xizi Zhang</a></li>
				</ul>
			</footer>

</body>
</html>


