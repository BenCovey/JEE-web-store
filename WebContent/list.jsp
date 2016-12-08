<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase</title>
</head>
<body>
	<% String[] animals = {request.getParameter("animal0"),request.getParameter("animal1"),request.getParameter("animal2"),request.getParameter("animal3"),request.getParameter("animal4"),request.getParameter("animal5")};
	String[] prices = {request.getParameter("price0"),request.getParameter("price1"),request.getParameter("price2"),request.getParameter("price3"),request.getParameter("price4"),request.getParameter("price5")};
	String[] stock = {request.getParameter("stock0"),request.getParameter("stock1"),request.getParameter("stock2"),request.getParameter("stock3"),request.getParameter("stock4"),request.getParameter("stock5")};
		
			
			%>
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/FINAL/list">Farm Animal Web Store</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
            <div class="form-group">
              <input placeholder="Email" class="form-control" type="text">
            </div>
            <div class="form-group">
              <input placeholder="Password" class="form-control" type="password">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>
	
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Clearance Sale!</h1>
        <p> Final Clearance sale, all sales are final. Sales are valid until inventory is empty. All prices and sales are final.</p>
        <!--  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a></p>-->
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
      	<%for(int i = 0;i <= 5;i++){ %>
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=<%=animals[i]%>&Price=<%=prices[i]%>&Stock=<%=stock[i]%>"><%=animals[i]%></a>
          <p>Price:<%=prices[i] %></p>
          <p>Stock:<%=stock[i] %></p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=<%=animals[i]%>&Price=<%=prices[i]%>&Stock=<%=stock[i]%>" role="button">Purchase »</a></p>
        </div>
        <%} %>

      </div>
      <hr>
		
      <footer>
        <p>© 2016 Company, Inc.</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  

</body>


</html>