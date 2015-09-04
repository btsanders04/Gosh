<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<c:set var="user_type" scope="session" value="${user_type}" />
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">Gosh</a>
			</div>
			<div>
			<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
				<ul class="nav navbar-nav">
						<li><a href="#">#</a></li>
					<c:if test="${user_type == 'admin'}">
						<li><a href="#">#</a></li>
						<li><a href="#">#</a></li>
						<li><a href="#">#</a></li>
					</c:if>	
					<c:if test="${user_type == 'regular'}">
						<li><a href="#">#</a></li>
						<li><a href="#">#</a></li>
						<li><a href="#">#</a></li>
					</c:if>
					<c:if test="${user_type == null}">
						<li><a href="#">#</a></li>
						<li><a href="#">#</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
${List}


</body>
</html>