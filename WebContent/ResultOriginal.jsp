<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="edu.neu.cs5200.rest.client.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<head>
		<title>Search Result</title>
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
								<li>
									<a href="">Submenu</a>
									<ul>
										<li><a href="#">Option One</a></li>
										<li><a href="#">Option Two</a></li>
										<li><a href="#">Option Three</a></li>
										<li><a href="#">Option Four</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#" class="button">Log in</a></li>
					</ul>
				</nav>
			</header>

 <%

String keyword = request.getParameter("keyword");

TryUrl tryurl = new TryUrl();

Recipe[] recipes = tryurl.findRecipeByName(keyword);
for(Recipe recipe : recipes){
	out.print("document.write(\""+recipe.getLabel()+"<br>\");\n");
	out.print("document.write(\""+recipe.getSource()+"<br>\");\n");
	out.print("document.write(\""+recipe.getCalories()+"<br>\");\n");
	String srcimg = "<img src=\"" + recipe.getImage() + "\">";
	out.print("document.write('"+ srcimg +"<br>');\n");
}  

%>

		<!-- Main -->
			<section id="main" class="container">
				<header>
					<h2>Recommended Recipes</h2>
				</header>
			</section>
				<section class="box special features">
					<div class="features-row">
						<section>
							<!-- <span class="icon major fa-bolt accent2"></span> -->
							<h3>R1</h3>
							<p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
						</section>
						<section>
							<!-- <span class="icon major fa-area-chart accent3"></span> -->
							<h3>R2</h3>
							<p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
						</section>
					</div>
					<div class="features-row">
						<section>
							<!-- <span class="icon major fa-cloud accent4"></span> -->
							<h3>R3</h3>
							<p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
						</section>
						<section>
							<!-- <span class="icon major fa-lock accent5"></span> -->
							<h3>R4</h3>
							<p>Integer volutpat ante et accumsan commophasellus sed aliquam feugiat lorem aliquet ut enim rutrum phasellus iaculis accumsan dolore magna aliquam veroeros.</p>
						</section>
					</div>
				</section>
<script>
/* function result(label, source, calories, imgsrc){
	this.label = label;
	this.source = source;
	this.calories = calories;
	this.imgsrc = imgsrc;
} */




</script>



</body>
</html>

