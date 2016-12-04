<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase</title>
</head>
<body onload="setPic(<%request.getParameter("Animal");%>)">
<img id="placeholder" src="http://placehold.it/500x500">

<script>

function setPic(animal){
	if(animal == "goat"){
		document.getElementById("placeholder").src="https://66.media.tumblr.com/c3bf8a266f2af35dbc6537a3a9ec516a/tumblr_npg8duhVDH1r7yxrco1_500.jpg";	
	}
	else if(animal == "donkey"){
		document.getElementById("placeholder").src="https://pbs.twimg.com/profile_images/2722910442/5faa5dc5075ff54e14705d8483104f90.jpeg";	
	}
	else if(animal == "cow"){
		document.getElementById("placeholder").src="http://cdn.analyteguru.com/uploads/2015/03/goofy-cow1.jpg";	
	}
	else if(animal == "llama"){
		document.getElementById("placeholder").src="https://pgcpsmess.files.wordpress.com/2014/04/artworks-000056755264-z8hm7l-t500x500.jpg?w=510";	
	}
	else if(animal == "pig"){
		document.getElementById("placeholder").src="https://pbs.twimg.com/profile_images/3502642221/6284f02123933665e8d149b599a0e823.jpeg";	
	}
	
}
</script>

<% 
	String Description = "";	

	if(request.getParameter("Animal").toString() == "goat"){
		Description = "A good old beautiful goat";
	}
	else if(request.getParameter("Animal").toString() == "donkey"){
		Description = "A good old beautiful donkey";
	}
	else if(request.getParameter("Animal").toString() == "cow"){
		Description = "A good old beautiful cow";
	}
	else if(request.getParameter("Animal").toString() == "llama"){
		Description = "A good old beautiful llama";
	}
	else if(request.getParameter("Animal").toString() == "pig"){
		Description = "A good old beautiful pig";
	}
	
	pageContext.setAttribute("desc", Description);
%>



<h1><%request.getParameter("Animal").toString(); %></h1>

<p>${desc}</p>

<form target="paypal" action="https://www.paypal.com/cgi-bin/webscr" method="post" >
<input type="hidden" name="cmd" value="_cart">
<input type="hidden" name="business" value="brandonchristen@hotmail.ca">
<input type="hidden" name="lc" value="BM">
<input type="hidden" name="item_name" value="figure ot how to get animal name here">
<input type="hidden" name="item_number" value="01">
<input type="hidden" name="amount" value="25.00">
<input type="hidden" name="currency_code" value="CAD">
<input type="hidden" name="button_subtype" value="products">
<input type="hidden" name="no_note" value="0">
<input type="hidden" name="tax_rate" value="15.000">
<input type="hidden" name="shipping" value="5.00">
<input type="hidden" name="add" value="1">
<input type="hidden" name="bn" value="PP-ShopCartBF:btn_cart_LG.gif:NonHostedGuest">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_cart_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>


</body>
</html>