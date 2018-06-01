
<!DOCTYPE html>
<html>
<head>
<title>Vestidos de xv - Creaciones Mia Alta Costura</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO 8859-1" />
<meta name="keywords" content="Modern Shoppe Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//for-mobile-apps -->
<!--Custom Theme files -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!--//Custom Theme files -->
<!--js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<!--//js-->
<!--cart-->
<script src="js/simpleCart.min.js"></script>
<!--cart-->
<!--web-fonts-->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Pompiere' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Fascinate' rel='stylesheet' type='text/css'>
<!--web-fonts-->
<!--animation-effect-->
<link href="css/animate.min.css" rel="stylesheet"> 
<script src="js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<!--//animation-effect-->
<!--start-smooth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
</script>
<!--//end-smooth-scrolling-->
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="top-header navbar navbar-default"><!--header-one-->
			<div class="container">
				<div class="nav navbar-nav wow fadeInLeft animated" data-wow-delay=".5s">
				</div>
				<div class="nav navbar-nav navbar-right social-icons wow fadeInRight animated" data-wow-delay=".5s">
					<ul>
						<li><a href="https://www.facebook.com/creacionesmiatiendas/"> </a></li>
						<li><a href="https://www.instagram.com/creaciones_mia_ac/?hl=es" class="pin"> </a></li>
						<li><a href="Contacto.html" class="in"> </a></li>
						
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="header-two navbar navbar-default"><!--header-two-->
			<div class="container">
				<div class="nav navbar-nav header-two-left">
					<ul>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>91524461</li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="Contacto.html">CreacionesMia@hotmail.com</a></li>			
					</ul>
				</div>
				<div class="nav navbar-nav logo wow zoomIn animated" data-wow-delay=".7s">
		<h1><a href="index.html" id="logo">MIA</a> </a></h1>
				</div>
				<div class="nav navbar-nav navbar-right header-two-right">
					<div class="header-right my-account">
						<a href="Contacto.html"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> CONTACTANOS</a>						
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="top-nav navbar navbar-default"><!--header-three-->
			<div class="container">
				<nav class="navbar" role="navigation">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!--navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav top-nav-info">
							<li><a href="index.html" >Conócenos</a></li>
							
							<li><a href="Servicios.html">Servicios</a></li>
							<li><a href="Catalogo.php" class="active">Catálogo</a></li>
							<li><a href="Contacto.html">Contacto</a></li>
						</ul> 
						<div class="clearfix"> </div>
						<!--//navbar-collapse-->
						<header class="cd-main-header">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul> <!-- cd-header-buttons -->
						</header>
					</div>
					<!--//navbar-header-->
				</nav>
				<div id="cd-search" class="cd-search">
					<form>
						<input type="search" placeholder="Buscar...">
					</form>
				</div>
			</div>
		</div>
	</div>
	<!--//header-->
	<!--banner-->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				
			</ol>
		</div>
	</div>
	<!--//breadcrumbs-->
	<!--products-->
	<div class="products">	 
		<div class="container">
			<div class="col-md-9 product-model-sec">
				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".5s">
					<div class="new-top1">
		<?php
        				include('dbConfig.php');
        					$query1= $db->query("SELECT *  FROM productos where id=1");
       						if($query1->num_rows>0){
           					 while($row = $query1->fetch_assoc()){
                				$imageThumbURL = 'images/'.$row["imagen"];
               					 $imageURL = 'images/'.$row["imagen"];
               					 $nombrep =$row["nombre"];
                				 $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  
			<?php 												}
        											}   
        	?>
						 
						<div class="new-text">
							<ul>
								<li><a href="v1.html">Vista rapida </a></li>
								
							</ul>
						</div>
					</div>
						<div class="new-bottom">
							<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
							<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
							</div>
						</div>
				</div>
				<div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
					<div class="new-top1">
		<?php
        				include('dbConfig.php');
        					$query2= $db->query("SELECT *  FROM productos where id=2");
       						if($query2->num_rows>0){
            				while($row = $query2->fetch_assoc()){
                			$imageThumbURL = 'images/'.$row["imagen"];
                			$imageURL = 'images/'.$row["imagen"];
                 			$nombrep =$row["nombre"];
                			$preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  
					<?php 										}
        											} 			
        			?>
						
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida </a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
						<p><span class="item_price"><?php echo $preciop; ?></span></p>	
						</div>
					</div>
				</div>

				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".9s">
					<div class="new-top1"> 
		<?php
        				include('dbConfig.php');
        					$query3= $db->query("SELECT *  FROM productos where id=3");
       						if($query3->num_rows>0){
            				while($row = $query3->fetch_assoc()){
                			$imageThumbURL = 'images/'.$row["imagen"];
                			$imageURL = 'images/'.$row["imagen"];
                 			$nombrep =$row["nombre"];
                			$preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  
		<?php 													}
        											} 
        ?>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida</a></li>
								
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>
				
				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".5s">
					<div class="new-top1">
		<?php
        				include('dbConfig.php');
					        $query4= $db->query("SELECT *  FROM productos where id=4");
       						if($query4->num_rows>0){
            				while($row = $query4->fetch_assoc()){
                			$imageThumbURL = 'images/'.$row["imagen"];
                			$imageURL = 'images/'.$row["imagen"];
                 			$nombrep =$row["nombre"];
                			$preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  
		<?php 													}
        											} 
        ?>
						
						<div class="new-text">
							<ul>
								<li><a href="v1.html">Vista rapida </a></li>
								
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>

				<div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
					<div class="new-top1">
		<?php
        				include('dbConfig.php');
        					$query5= $db->query("SELECT *  FROM productos where id=5");
       						if($query5->num_rows>0){
            				while($row = $query5->fetch_assoc()){
              				  $imageThumbURL = 'images/'.$row["imagen"];
               				 $imageURL = 'images/'.$row["imagen"];
               				  $nombrep =$row["nombre"];
               				 $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  
		<?php 													}
        											} 
        ?>
						
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida </a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>	
					</div>
				</div>

				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".9s">
					<div class="new-top1">
						 <?php
        //Include database configuration file
        include('dbConfig.php');
        
        //get images from database
        $query6= $db->query("SELECT *  FROM productos where id=6");
       if($query6->num_rows>0){
            while($row = $query6->fetch_assoc()){
                $imageThumbURL = 'images/'.$row["imagen"];
                $imageURL = 'images/'.$row["imagen"];
                 $nombrep =$row["nombre"];
                $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  <?php }
        } ?>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida</a></li>
								
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
														<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>
				
				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".5s">
					<div class="new-top1">
						 <?php
        //Include database configuration file
        include('dbConfig.php');
        
        //get images from database
        $query7= $db->query("SELECT *  FROM productos where id=7");
       if($query7->num_rows>0){
            while($row = $query7->fetch_assoc()){
                $imageThumbURL = 'images/'.$row["imagen"];
                $imageURL = 'images/'.$row["imagen"];
                 $nombrep =$row["nombre"];
                $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  <?php }
        } ?>
						<div class="new-text">
							<ul>
								<li><a href="v1.html">Vista rapida </a></li>
								
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>
				<div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
					<div class="new-top1">
						 <?php
        //Include database configuration file
        include('dbConfig.php');
        
        //get images from database
        $query8= $db->query("SELECT *  FROM productos where id=8");
       if($query8->num_rows>0){
            while($row = $query8->fetch_assoc()){
                $imageThumbURL = 'images/'.$row["imagen"];
                $imageURL = 'images/'.$row["imagen"];
                 $nombrep =$row["nombre"];
                $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  <?php }
        } ?>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida </a></li>
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>
				<div class="product-grids simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".9s">
					<div class="new-top1">
						 <?php
        //Include database configuration file
        include('dbConfig.php');
        
        //get images from database
        $query9= $db->query("SELECT *  FROM productos where id=9");
       if($query9->num_rows>0){
            while($row = $query9->fetch_assoc()){
                $imageThumbURL = 'images/'.$row["imagen"];
                $imageURL = 'images/'.$row["imagen"];
                 $nombrep =$row["nombre"];
                $preciop =$row["precio"];
        ?>
						<a href="<?php echo $imageURL; ?>"  ><img src="<?php echo $imageThumbURL; ?>" class="img-responsive" alt=""/></a>  <?php }
        } ?>
						<div class="new-text">
							<ul>
								<li><a href="single.html">Vista rapida</a></li>
								
							</ul>
						</div>
					</div>
					<div class="new-bottom">
						<h5><a class="name" href="single.html"><?php echo $nombrep; ?></a></h5>
						<div class="ofr">
							
							<p><span class="item_price"><?php echo $preciop; ?></span></p>
						</div>
					</div>
				</div>
				
			</div>
			<div class="col-md-3 rsidebar">
				<div class="rsidebar-top">
					
					<div class="sidebar-row">
						<h4> Vestidos y Accesorios </h4>
						<ul class="faq">
							<li ><a href="#" class="vestidos">Vestidos<span class="glyphicon glyphicon-menu-down"></span></a>
								
							</li>
							<li ><a href="#" class="accesorios">Accesorios<span class="glyphicon glyphicon-menu-down"></span></a>
								
							</li>
							
						</ul>
						<!-- script for tabs -->
						<script type="text/javascript">
							$(function() {
							
								var menu_ul = $('.faq > li > ul'),
									   menu_a  = $('.faq > li > a');
								
								menu_ul.hide();
							
								menu_a.click(function(e) {
									e.preventDefault();
									if(!$(this).hasClass('active')) {
										menu_a.removeClass('active');
										menu_ul.filter(':visible').slideUp('normal');
										$(this).addClass('active').next().stop(true,true).slideDown('normal');
									} else {
										$(this).removeClass('active');
										$(this).next().stop(true,true).slideUp('normal');
									}
								});
							
							});
						</script>
						<?php 
	if(isset($_POST['faq'])){
		switch($_POST['faq']){
			case "todos":
				$sql = "select * from productos;";
				break;
			case "vestidos":
				$sql = "select * from productos where tipo='vestido' order by id asc;";
				break;
			case "accesorios":
				$sql = "select * from productos where tipo='accesorio'order by id asc;";
				break;
			case "paquetes":
				$sql = "select * from productos where paquete='paquetea' or paquete='paqueteb' order by precio desc;";
				break;
			
		}
	}else{
		$sql = "select * from productos;";
	}
?>
						<!-- script for tabs -->
					</div>
					
					<div class="sidebar-row">
						<h4>Color</h4>
						<div class="row row1 scroll-pane">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Blanco</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Rosa</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dorado</label>
							<label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Plata</label>
						</div>
					</div>			 
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
	<!--//trend-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-info">
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".5s">
					<h1><a href="index.html" id="logo">MIA</a> </a></h1>
					<p>© 2017 creaciones MIA derechos reservados</p>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".7s">
					<h3>Popular</h3>
					<ul>
						<li><a href="index.html">Conócenos</a></li>
						<li><a href="Catalogo.php">Catálogo</a></li>
						<li><a href="Contacto.html">Contacto</a></li>
						
					</ul>
				</div>
				<div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".9s">
					<h3>Redes sociales</h3>
					<div class="nav navbar-nav navbar-right social-icons wow fadeInRight animated" data-wow-delay=".5s">
					<ul>
						<li><a href="https://www.facebook.com/creacionesmiatiendas/"> </a></li>
						<li><a href="https://www.instagram.com/creaciones_mia_ac/?hl=es" class="pin"> </a></li>
						<li><a href="Contacto.html" class="in"> </a></li>
						<li><a href="#" class="vimeo"> </a></li>
						<li><a href="#" class="be"> </a></li>
						
					</ul>
				</div>
					</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//footer-->		
	<!--search jQuery-->
	<script src="js/main.js"></script>
	<!--//search jQuery-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
		
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!--//smooth-scrolling-of-move-up-->
	<!--Bootstrap core JavaScript
    ================================================== -->
    <!--Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>