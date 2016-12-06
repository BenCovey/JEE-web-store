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

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Farm Animal Web Store</a>
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
        <p>Final Clearance sale, all sales are final. Sales are valid until inventory is empty. All prices and sales are final.</p>
        <!--  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more »</a></p>-->
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=goat">Goat</a>
          <p>A hardy domesticated animal that has backward curving horns and (in the male) a beard. It is kept for its milk and meat and is noted for its lively and frisky behavior.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=goat" role="button">Purchase »</a></p>
        </div>
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=sheep">Sheep</a>
          <p>A domesticated animal with a thick woolly coat and (typically only in the male) curving horns. It is kept in flocks for its wool or meat, and is proverbial for its tendency to follow others in the flock.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=sheep" role="button">Purchase »</a></p>
       </div>
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=donkey">Donkey</a>
          <p>A domesticated hoofed mammal of the horse family with long ears and a braying call, used as a beast of burden; an ass.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=donkey" role="button">Purchase »</a></p>
        </div>
      </div>
		<div class="row">
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=llama">Llama</a>
          <p>A domesticated pack animal of the camel family found in the Andes, valued for its soft woolly fleece.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=llama" role="button">Purchase »</a></p>
        </div>
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=cow">Cow</a>
          <p>A fully grown female animal of a domesticated breed of ox, used as a source of milk or beef.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=cow" role="button">Purchase »</a></p>
       </div>
        <div class="col-md-4">
          <a href="purchase.jsp?Animal=pig">Pig</a>
          <p>An omnivorous domesticated hoofed mammal with sparse bristly hair and a flat snout for rooting in the soil, kept for its meat.</p>
          <p><a class="btn btn-default" href="purchase.jsp?Animal=pig" role="button"> Purchase »</a></p>
        </div>
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