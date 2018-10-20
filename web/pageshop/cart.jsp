<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conmon.ConnectDB"%>
<%@page import="model.sanphamDAO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Free Bootstrap Themes by 365Bootstrap dot com - Free Responsive Html5 Templates">
    <meta name="author" content="https://www.365bootstrap.com">
	
    <title>Mobile Shop | Free Bootstrap Themes by 365bootstrap.com</title>
	
    <!-- Bootstrap Core CSS -->
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Mobile Shop | Free Bootstrap Themes by 365bootstrap.com</title>
	
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pageshop/support/css/bootstrap.min.css"  type="text/css">
	
	<!-- Custom CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pageshop/support/css/style.css">
	
	
	<!-- Custom Fonts -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pageshop/support/font-awesome/css/font-awesome.min.css"  type="text/css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/pageshop/support/fonts/font-slider.css" type="text/css">
	
	<!-- jQuery and Modernizr-->
	<script src="<%=request.getContextPath()%>/pageshop/support/js/jquery-2.1.1.js"></script>
	
	<!-- Core JavaScript Files -->  	 
    <script src="<%=request.getContextPath()%>/pageshop/support/js/bootstrap.min.js"></script>
    <script>
          if(${thongbaocheckout == 'true'}){
      alert(" Thành công!");
      
  }  
        
    </script>
</head>
<body>
	<!--Top-->
	<nav id="top">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<select class="language">
						<option value="English" selected>English</option>
						<option value="France">France</option>
						<option value="Germany">Germany</option>
					</select>
					<select class="currency">
						<option value="USD" selected>USD</option>
						<option value="EUR">EUR</option>
						<option value="DDD">DDD</option>
					</select>
				</div>
				<div class="col-xs-6">
					<ul class="top-link">
						<li><a href="<%=request.getContextPath()%>/pageshop/login.jsp"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
						<li><a href="contact.html"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<!--Header-->
	<header class="container">
		<div class="row">
			<div class="col-md-4">
				<div id="logo"><img src="<%=request.getContextPath()%>/pageshop/support/images/logo.png" /></div>
			</div>
			<div class="col-md-4">
				<form class="form-search">  
					<input type="text" class="input-medium search-query">  
					<button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>  
				</form>
			</div>
                         <%     sanphamDAO spdao = new sanphamDAO();
                                    ConnectDB condb = new ConnectDB();
                                    Connection con = condb.getConnect();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select count(tenspmua) from giohang");
                                    while(rs.next()){

                        %>
			<div class="col-md-4">
                            <div id="cart"><a class="btn btn-1" href="<%=request.getContextPath()%>/pageshop/cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART : <%=rs.getInt(1) %> ITEM</a></div>
			</div>
		</div>
	</header>
	<!--Navigation-->
                        <%}%>
    <nav id="menu" class="navbar">
		<div class="container">
			<div class="navbar-header"><span id="heading" class="visible-xs">Categories</span>
			  <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
			</div>
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PC Computers</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">Window</a></li>
									<li><a href="category.html">MacBook</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Laptops &amp; Notebooks</a>
						<div class="dropdown-menu">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="category.html">Dell</a></li>
									<li><a href="category.html">Asus</a></li>
									<li><a href="category.html">Samsung</a></li>
									<li><a href="category.html">Lenovo</a></li>
									<li><a href="category.html">Acer</a></li>
								</ul>
							</div> 
						</div>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Mobiles &amp; Tablet</a>
						<div class="dropdown-menu" style="margin-left: -203.625px;">
							<div class="dropdown-inner">
								<ul class="list-unstyled">
									<li><a href="<%=request.getContextPath()%>/pageshop/shoping.jsp">Iphone</a></li>
									<li><a href="category.html">Samsung</a></li>
									<li><a href="category.html">Nokia</a></li>
									<li><a href="category.html">Lenovo</a></li>
									<li><a href="category.html">Google</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="category.html">Nexus</a></li>
									<li><a href="category.html">Dell</a></li>
									<li><a href="category.html">Oppo</a></li>
									<li><a href="category.html">Blackberry</a></li>
									<li><a href="category.html">HTC</a></li>
								</ul>
								<ul class="list-unstyled">
									<li><a href="category.html">LG</a></li>
									<li><a href="category.html">Q-Mobiles</a></li>
									<li><a href="category.html">Sony</a></li>
									<li><a href="category.html">Wiko</a></li>
									<li><a href="category.html">T&T</a></li>
								</ul>
							</div>
						</div>
					</li>
					<li><a href="category.html">Software</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--//////////////////////////////////////////////////-->
	<!--///////////////////Cart Page//////////////////////-->
	<!--//////////////////////////////////////////////////-->
	<div id="page-content" class="single-page">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="breadcrumb">
						<li><a href="index.html">Home</a></li>
						<li><a href="<%=request.getContextPath()%>/pageshop/cart.jsp">Cart</a></li>
					</ul>
				</div>
			</div>
			<div class="row">
                              <%     
                                     st = con.createStatement();
                                   rs = st.executeQuery("select * from giohang ");
                                    while(rs.next()){
                                        
                                    
                        %>
				<div class="product well">
					<div class="col-md-3">
						<div class="image">
                                                    <img src="<%=request.getContextPath()%>/<%=rs.getString("hinhanh") %>" />
						</div>
					</div>
					<div class="col-md-9">
						<div class="caption">
							<div class="name"><h3><a href="product.html"><%=rs.getString("tenspmua") %></a></h3></div>
							<div class="info">	
								<ul>
									<li>Brand: text</li>
									<li>ID: <%=rs.getString("maspmua") %></li>
								</ul>
                                                        </div>
							<div class="price"><%=rs.getString("giatiensp") %> VND</div>    <%!String abc; %>
                                                        <label>Qty: </label> <input class="form-inline quantity" type="text" name="soluongmua"    /> <span><%=rs.getString("soluongmua")%></span>
                                                        <a href="<%=request.getContextPath()%>/updatecartServlet?maspmua=<%=rs.getString("maspmua")%>&soluongmua=<%request.getParameter("soluongmua");%> " class="btn btn-2 ">Update</a>
							<hr>                                                                                                                   
							<a href="<%=request.getContextPath()%>/deletecartServlet?maspmua=<%=rs.getString("maspmua")%>" class="btn btn-default pull-right">REMOVE</a>
						</div>
					</div>
					<div class="clear"></div>
				</div>	
                        </div><%}%>
			<div class="row">
				<div class="col-md-4 col-md-offset-8 ">
					<center><a href="<%=request.getContextPath()%>/index.jsp" class="btn btn-1">Continue To Shopping</a></center>
				</div>
			</div>
				
			
			
			<div class="row">
				<div class="pricedetails">
					<div class="col-md-4 col-md-offset-8">
						<table>
                                                    <% st = con.createStatement();
                        rs = st.executeQuery("select format(sum(giatiensp),'#,##0') from giohang");
                        if(rs.next()){
                        %>
							<h6>Price Details</h6>
							<tr>
								<td>Total</td>
                                                                <td><%=rs.getString(1) %>VND</td>
							</tr>
							<tr>
								<td>Discount</td>
								<td>-----</td>
							</tr>
							
							<tr style="border-top: 1px solid #333">
								<td><h5>TOTAL</h5></td>
								<td><%=rs.getString(1) %>VND</td>
							</tr><%}%>
						</table>
						<center><a href="<%=request.getContextPath()%>/checkout" class="btn btn-1">Checkout</a></center>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<footer>
		<div class="container">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-md-3 col-footer footer-1">
						<img src="<%=request.getContextPath()%>/pageshop/support/images/logofooter.png" />
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
					</div>
					<div class="col-md-3 col-footer footer-2">
						<div class="heading"><h4>Customer Service</h4></div>
						<ul>
							<li><a href="#">About Us</a></li>
							<li><a href="#">Delivery Information</a></li>
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Terms & Conditions</a></li>
							<li><a href="#">Contact Us</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-3">
						<div class="heading"><h4>My Account</h4></div>
						<ul>
							<li><a href="#">My Account</a></li>
							<li><a href="#">Brands</a></li>
							<li><a href="#">Gift Vouchers</a></li>
							<li><a href="#">Specials</a></li>
							<li><a href="#">Site Map</a></li>
						</ul>
					</div>
					<div class="col-md-3 col-footer footer-4">
						<div class="heading"><h4>Contact Us</h4></div>
						<ul>
							<li><span class="glyphicon glyphicon-home"></span>California, United States 3000009</li>
							<li><span class="glyphicon glyphicon-earphone"></span>+91 8866888111</li>
							<li><span class="glyphicon glyphicon-envelope"></span>infor@yoursite.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						Your Store © 20xx - Designed by <a href="https://www.365bootstrap.com" target="_blank">365bootstrap</a>
					</div>
					<div class="col-md-6">
						<div class="pull-right">
							<ul>
								<li><img src="<%=request.getContextPath()%>/pageshop/support/images/visa-curved-32px.png" /></li>
								<li><img src="<%=request.getContextPath()%>/pageshop/support/images/paypal-curved-32px.png" /></li>
								<li><img src="<%=request.getContextPath()%>/pageshop/support/images/discover-curved-32px.png" /></li>
								<li><img src="<%=request.getContextPath()%>/pageshop/support/images/maestro-curved-32px.png" /></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>
