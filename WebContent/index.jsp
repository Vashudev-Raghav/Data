<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color:
}

* {
  box-sizing: border-box;
}

/* Add padding to containers */
.container {
  padding: 16px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password], input[type=date] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
</style>
</head>
<body>

<form action="Reg.jsp" method="post">
  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="pas" required>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="pswr" id="pa" required>
    <span id="check"></span>
    <label for="DOB"><b>Date Of Birth</b></label>
    <input type="date" placeholder="Enter DOB" name="dob" required><br/>
    <br/>
    <label for="sex"><b>Male</b></label>
    <input type="radio" value="male" name="sex" required>&nbsp<b>Female</b>
    <input type="radio" value="female" name="sex" required>
    
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    <button type="submit" class="registerbtn" onclick="Hello()">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="Login.jsp">Sign in</a>.</p>
  </div>
</form>
<script>
function Hello()
{
	var a=document.getElementById("pas");
	var b=document.getElementById("pa");
	if(a==b)
		{
			return true;
		}
	else
		{
			//alert("Please match Password");
			var x=document.getElementById("check").innerHTML="Wrong Password";
			return false;
		}
	
}
</script>
</body>
</html>