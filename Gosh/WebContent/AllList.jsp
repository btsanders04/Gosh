<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Login.html">Shiny Web Online Bank</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="Login.html">Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Browse <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><form action= "GetAll" method= "POST">Products</form></li>
            <li><form action= "GetAll" method= "GET">Shops</form></li>
          </ul>
        </li>
        <li><a href="Account.html">Accounts</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.html"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

${List}
</body>
</html>