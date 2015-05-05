<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
 		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!-- [if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif] -->
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
		<!-- CTA -->
     			<section id="cta">

				<h2>Sign up for more functions</h2>
				<p>Create your profile and share you recipe!</p>

				<form name="registration" action="RegRecipe" method="post">
				<input type="hidden" name="pagename" value="Register"/>
					<div class="row uniform 50%" >
					    <div class="8u 12u(mobilep)">
							<input type="text" name="txtFName" id="fName" placeholder="First Name" />
						</div>
						<div class="8u 12u(mobilep)">
							<input type="text" name="txtLName" id="lName" placeholder="Last Name" />
						</div>
						<div class="8u 12u(mobilep)">
							<input type="text" name="txtEmail" id="email" placeholder="Email Address" />
						</div>
                        <div class="8u 12u(mobilep)">
							<input type="text" name="txtPassword" id="password" placeholder="Password" />
						</div>
						<div class="4u 12u(mobilep)">
							<input type="submit" value="Register" class="fit"/>
						</div>
					</div>
				</form>

			</section>
<!-- <form name="registration" action="RegRecipe" method="post">
<input type="hidden" name="pagename" value="Register"/>
<table cellpadding="5" cellspacing="5">
<tr>
	<td>First Name</td>
	<td><input type="text" name="txtFName"/></td>
</tr>
<tr>
	<td>Last Name</td>
	<td><input type="text" name="txtLName"/></td>
</tr>
<tr>
	<td>Email</td>
	<td><input type="text" name="txtEmail"></td>
</tr>
<tr>
	<td>Password</td>
	<td><input type="password" name="txtPassword"/></td>
</tr>
<tr>
	
	        <td><button type="submit">Submit</button></td>

</tr>
</table>
</form> -->

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