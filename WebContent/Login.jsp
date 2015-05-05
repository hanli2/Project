<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
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

		<!-- CTA -->
     			<section id="cta">

				<h2>Log in</h2>
				<p>Please enter your email and password</p>

				<form name="login" method="post" action="RegRecipe">
				<input type="hidden" name="pagename" value="Login"/>
					<div class="row uniform 50%">
						<div class="8u 12u(mobilep)">
							<input type="text" name="txtUserName" id="UserName" placeholder="Email Address" />
						</div>
                        <div class="8u 12u(mobilep)">
							<input type="password" name="txtPassword" id="password" placeholder="Password" />
						</div>
						<div class="4u 12u(mobilep)">
							<input type="submit" value="Sign Up" class="fit" />
						</div>
					</div>
				</form>

			</section>
			
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
<!-- <form >

<table>
	<tr>
		<td>User Name</td>
		<td><input type="text" name="txtUserName"/></td>
	</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="txtPassword"/></td>
	</tr>
		<tr>
		<td><button type="submit">Login</button></td>
		<td><label>Register</label></td>
	</tr>
</table>
</form> -->

</body>
</html>