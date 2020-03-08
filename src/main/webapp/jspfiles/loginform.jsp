<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
	margin: auto;
	width: 40%;
	padding: 10px;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 20%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
</head>
<body>

	<form action="jspfiles/validatelogin.jsp">

		<div class="imgcontainer">
			<h2>Login Form</h2>
			<img src="images/img_avatar2.png" alt="Avatar" class="avatar">
		</div>

		<div class="container">
			<label for="uname"><b>UserName</b></label> <input type="text"
				placeholder="Enter Username" name="userName" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" required>

			<button type="submit">Login</button>

		</div>
	</form>

</body>
</html>


<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>User Details</h1>
	The form data will be passed to acceptuser.jsp  
             for validation on clicking submit 
       
	<form action="jspfiles/validatelogin.jsp">
		Enter UserName : <input type="text" name="userName"><br />
		<br /> Enter Password : <input type="password" name="password"><br />
		<input type="submit" value="SUBMIT">
	</form>
</body>
</html> --%>

