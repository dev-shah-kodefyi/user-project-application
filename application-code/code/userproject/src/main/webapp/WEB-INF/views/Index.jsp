<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.m in.js"></script>
<title>AdminUser</title>
 <style>
body{
 background: url(https://motionarray.imgix.net/preview-54581lZpOLX9xfU_0013.jpg);  
 background-repeat: no-repeat;
 background-size:150%;
}
</style>
</head>
<body>
<div class="container">
<h2><font color="white"> Enter the User Details </font></h2>
  <form action="AdminPage" method="post">
    <div class="form-group">
        <label for="UserId"><font color="white">User ID :</font></label>
      <input type="text" class="form-control" id="senduserid" placeholder="Please Enter User ID" name="senduserid">
    </div>
    <div class="form-group">
        <label for="pwd"><font color="white">Password :</font></label>
      <input type="password" class="form-control" id="pwd" placeholder="Please Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"><font color="white"> Remember me</font></label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
</body>
</html>
