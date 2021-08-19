<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Sign_up</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signUpAction.jsp" method="post">
  	<input type="text" name="name" placeholder="enter name" required>
  	<input type="email" name="email" placeholder="enter email" required>
  	<input type="number" name="mobilenumber" placeholder="enter mobilenumber" required>
  	<select name="securityQuestion" required>
  		<option value="What is the name of your favorite pet?">What is the name of your favorite pet?</option>
  		<option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
  		<option value="In what city were you born?">In what city were you born?</option>
  	</select>
  	<input type="text" name="answer" placeholder="enter your answer" required>
  	<input type="password" name="password" placeholder="enter your password" required>
  	<input type="submit" name="signup">
  </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
	  %>
	  <h1>Successfully Registered</h1>
	  <%} %>
  
  <%
  if("invalid".equals(msg))
  {

  
  %>



<h1>Some thing Went Wrong! Try Again !</h1>
	  <%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>