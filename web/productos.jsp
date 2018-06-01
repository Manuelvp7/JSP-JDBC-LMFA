<%-- 
    Document   : productos
    Created on : May 30, 2018, 10:56:17 AM
    Author     : AGutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="com.ipn.mx.DAO.*" %>
<%@page import="com.ipn.mx.Modelo.*" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Liga de Americano</title>
        <!-- for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
        <!--//Custom Theme files -->
        <!--js-->
        <script src="js1/jquery-1.11.1.min.js"></script>
        <script src="js1/modernizr.custom.js"></script>
        <!--//js-->
        <!--cart-->
        <script src="js1/simpleCart.min.js"></script>
        <!--cart-->
        <!--web-fonts-->
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Pompiere' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Fascinate' rel='stylesheet' type='text/css'>
        <!--web-fonts-->
        <!--animation-effect-->
        <link href="css/animate.min.css" rel="stylesheet"> 
        <script src="js1/wow.min.js"></script>
        <script>
            new WOW().init();
        </script>
        <!--//FACEBOOKTIMELINE-->
        <!--//animation-effect-->
        <!--start-smooth-scrolling-->
        <script type="text/javascript" src="js1/move-top.js"></script>
        <script type="text/javascript" src="js1/easing.js"></script>	
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <link rel="stylesheet" href="css/grid.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/camera.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <script src="js/jquery.js"></script>
        <script src="js/jquery-migrate-1.2.1.js"></script>
        <script src="js/jquery.equalheights.js"></script>
        <!--<![endif]-->
        <script src="js/camera.js"></script>
        <script src="js/owl.carousel.js"></script>
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
        <![endif]-->
        <link rel="stylesheet" href="css/slippry.css">
        <link rel="stylesheet" href="css/elastislide.css" />
        <script src="js/slippry.js"></script>
        <script>
            $(document).ready(function () {
                jQuery('#slippry').slippry()
            });
            function goToByScroll(id) {
                $('html,body').animate({scrollTop: $("#" + id).offset().top}, 'slow');
            }

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

                    <div class="nav navbar-nav header-two-left">
                    </div>
                </div>
            </div>
        </div>







        <header id="header">
            <div id="stuck_container">
                <div class="container">
                    <div class="row">
                        <div class="grid_12">
                            <div class="brand put-left">
                                <h1>
                                    <a href="index.jsp">
                                        <img src="images/log.PNG" alt="Logo"/>
                                    </a>
                                </h1>
                            </div>
                            <nav class="nav put-right">
                                <ul class="sf-menu">
                                    <li>
                                        <a href="index.jsp">Inicio</a>
                                    </li>
                                    <li><a href="#">Liga</a>
                                        <ul>
                                            <li><a href="#">Administración</a>
                                                <ul>
                                                    <li><a href="administradorlogin.jsp">Administrador</a>
                                                    <li><a href="couchlogin.jsp">Couch</a>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="calendario.jsp">Calendario</a></li>
                                    <li><a href="estadisticas.jsp">Estadisticas</a></li>
                                    <li><a href="productos.jsp">Productos</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

















            <div class="clearfix"> </div>
        </div>
    </div>

</div>
</header>
<!--//header-->
<!--banner-->

<div>

</div>


<!--End-slider-script-->

<div class="clearfix"> </div>


<!--//banner-->
<!--new-->
<div class="new">
    <div class="container">
        <div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
            <h3 class="title"><span>Mira los productos que tenemos para ti</span></h3>

        </div>
    </div>
</div>


<!--//new-->
<!--gallery-->

<div class="clearfix"> </div>
<div class="products">	 
    <div class="container">
        <div class="col-md-9 product-model-sec">
            <%
                int i = 0;
                try {
                    ArrayList<Articulo> lista = ArticuloDAOImpl.load();
                    for (Articulo elem : lista) {
            %>
            <div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
                <div class="new-top1">
                    <%= elem.getNombre()%>
                    <a href="images/<%= elem.getImagen()%>"  ><img src="images/<%= elem.getImagen()%>" class="img-responsive" alt=""/></a>  
                    <div class="new-text">
                        <ul>
                            <li><a href="single.html">Vista rapida </a></li>
                        </ul>
                    </div>
                </div>
                <div class="new-bottom">
                    <h5><a class="name" href="single.html"><%= elem.getNombre()%></a></h5>
                    <div class="ofr">
                        <p><span class="item_price"><%= elem.getPrecio()%></span></p>	
                    </div>
                </div>
            </div>                             
            <%
                
                    }
                } catch (Exception e) {

            %>

            
            <div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
                <div class="new-top1">
                    
                    ERRROOORWS
                    <a href="images/jersey.jpg"  ><img src="images/jersey.jpg" class="img-responsive" alt=""/></a>  
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
            
            
            
            
            <%
                }


            %>

            <div class="product-grids product-grids-mdl simpleCart_shelfItem wow fadeInUp animated" data-wow-delay=".7s">
                <div class="new-top1">
                    jajajajajaj
                    <a href="images/jersey.jpg"  ><img src="images/jersey.jpg" class="img-responsive" alt=""/></a>  
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
                    YES
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
            

        </div>

    </div>
</div>
<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
    <h3 class="title"><span> </span></h3>
</div>

<!--//gallery-->
<!--trend-->

<!--//trend-->
<!--footer-->
<div class="footer">
    <div class="container">
        <div class="footer-info">
            <div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".5s">
                <h1><a href="index.jsp" id="logo">LIGA</a> </a></h1>
                <p>© 2018 Liga de Futbol Americano</p>
            </div>
            <div class="col-md-4 footer-grids wow fadeInUp animated" data-wow-delay=".7s">
                <h3>Popular</h3>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="calendario.jsp">Calendario</a></li>
                    <li><a href="estadisticas.jsp">Estadisticas</a></li>

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
            $(document).ready(function () {

                var defaults = {
                    containerID: 'toTop', // fading element id
                    containerHoverID: 'toTopHover', // fading element hover id
                    scrollSpeed: 1200,
                    easingType: 'linear'
                };

                $().UItoTop({easingType: 'easeOutQuart'});

            });
</script>
<!--//smooth-scrolling-of-move-up-->
<!--Bootstrap core JavaScript
================================================== -->
<!--Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>

<script src="js/script.js"></script>
</body>
</html>