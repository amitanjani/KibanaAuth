<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="false" isELIgnored="false"%>
<html>
<head>
<title>Login Page</title>
<style>
fieldset { -webkit-border-radius: 5px; padding: 20px; }
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

.display { margin: 150px auto; width: 600px }
legend { text-align:center }
html, body, div {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}

body {
	font: 14px/20px 'Helvetica Neue', Helvetica, Arial, sans-serif;
	color: #BBB;
	background: #373737;
	line-height: 1;
}

.login {
	position: relative;
	margin: 80px auto;
	width: 400px;
	padding-right: 32px;
	font-weight: 300;
	color: #a8a7a8;
	text-shadow: 1px 1px 0 rgba(0, 0, 0, 0.8);
}

.login p {
	margin: 0 0 10px;
}

.login-submit {
	  padding-left: 330px;
}

input, button, label, legend {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	font-size: 15px;
	font-weight: 300;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

input[type=text], input[type=password] {
	padding: 0 10px;
	width: 300px;
	height: 40px;
	color: #bbb;
	text-shadow: 1px 1px 1px black;
	background: rgba(0, 0, 0, 0.16);
	border: 0;
	border-radius: 5px;
	-webkit-box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.06);
	box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.3), 0 1px
		rgba(255, 255, 255, 0.06);
}

input[type=text]:focus, input[type=password]:focus {
	color: white;
	background: rgba(0, 0, 0, 0.1);
	outline: 0;
}

label {
	float: left;
	width: 100px;
	line-height: 40px;
	padding-right: 10px;
	font-weight: 100;
	text-align: right;
	letter-spacing: 1px;
}

input[type=submit] {
  padding: 0 18px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
}
</style>
</head>
<body onload='document.loginForm.username.focus();'>

	<!-- <div id="login-box"> -->
		<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		<div class="display">
		<form name='loginForm'
			action="<c:url value='j_spring_security_check' />" method='POST'>
			<fieldset>
				<legend>login to kibana</legend>
				<p>
					<label for="login">UserId:</label> <input type="text"
						name='username' id="login" value=""
						placeholder="Your Official UserId" />
				</p>
				<p>
					<label for="password">Password:</label> <input type="password"
						name="password" id="password" value="" placeholder="Password">
				</p>

				<p class="login-submit">
					<input type="submit" name="submit" value="Login">
				</p>

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</fieldset>
		</form>
	</div>
</body>
</html>