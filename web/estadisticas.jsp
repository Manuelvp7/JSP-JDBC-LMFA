<%-- 
    Document   : estadisticas
    Created on : May 30, 2018, 10:55:49 AM
    Author     : AGutierrez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <h3 class="title"><span>Busca las estadisticas de tu equipo ;)</span></h3>

        </div>
    </div>
</div>


<!--//new-->
<!--gallery-->

<div class="clearfix"> </div>
<div class="address1"><!--address-->
    <div class="container">
        <div class="address1-row">


            <div class="col-md-6 address-right">
                <div class="address-info wow fadeInRight animated" data-wow-delay=".5s">
                    <h4 class="wow fadeIndown animated" data-wow-delay=".5s">Escribe en nombre de tu equipo favorito</h4>
                    <style>

                        label{
                            width: 150px;
                            display: inline-block;
                        }
                    </style>
                    <form method="post" action="pieChart.jsp" autocomplete="off">
                        <input type="text" placeholder="Nombre" name="nombre" id="nombre" required="">
                        <br>	
                        <center>
                            <input type="submit">	
                        </center>                
                    </form>                 
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