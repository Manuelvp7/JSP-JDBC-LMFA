<%-- 
    Document   : TableroDeCoach
    Created on : Jun 7, 2018, 9:40:32 PM
    Author     : manuel
--%>

<%@page import="com.ipn.mx.Modelo.Partido"%>
<%@page import="com.ipn.mx.Modelo.Recorddeequipo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.ipn.mx.Modelo.Usuario"%>
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
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
     $(document).ready(function(){
        jQuery('#slippry').slippry()       
     }); 
    function goToByScroll(id){$('html,body').animate({scrollTop: $("#"+id).offset().top},'slow');}

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
                                <a href="TableroDeCoach.jsp">Tablero</a>
                            </li>
                            <li><a href="administrarequipo.jsp">Administrar Equipo</a></li>
                            <li><a href="index.jsp">Cerrar Sesión</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>				
	<!--//banner-->
	<!--new-->
	<div class="new">
		<div class="container">
			<div class="title-info wow fadeInUp animated" data-wow-delay=".5s">
<%
            Usuario unUsuario;
            List tablaDePosiciones = new ArrayList<Recorddeequipo>();
            List tablaDeResultados = new ArrayList<Partido>();
            List proximosPartidos = new ArrayList<Partido>();

            String nombre = null;
            try {
                unUsuario = (Usuario) session.getAttribute("usuario");
                
                            
               tablaDePosiciones = (ArrayList<Recorddeequipo>)session.getAttribute("tablaDePosiciones");
               tablaDeResultados = (ArrayList<Partido>)session.getAttribute("proximosPartidos");
               proximosPartidos = (ArrayList<Partido>)session.getAttribute("tablaDeResultados");
                nombre = unUsuario.getNombreusuario();

            } catch (Exception e) {
            }
        %>
				<h3 class="title"><span>Bienvenido <%=nombre%></span></h3>
				
			</div>
		</div>
	</div>
<div class="clearfix"> </div>
<div class="address1"><!--address-->
    <div class="container">
        <div class="address1-row">


            <div class="col-md-6 address-left">
                <div class="address-info wow fadeInRight animated" data-wow-delay=".5s">
                    <style>

                        label{
                            width: 150px;
                            display: inline-block;
                        }
                    </style>
    
        <form method="post" action="TableroCoachServlet" autocomplete="off">

            <table>
                <thead>TABLA DE POSICIONES</thead>
                <tr>
                    <td>
                        EQUIPO
                    </td>
                
                    <td>
                        G
                    </td>
                
                
                    <td>
                        P
                    </td>
                
                
                    <td>
                        E
                    </td>

                </tr>
                
                <%for (Object record : tablaDePosiciones) {
                        Recorddeequipo unRecorddeequipo = (Recorddeequipo)record;
                        
                        %>
                
                                <tr>
                    <td>
                        <%=unRecorddeequipo.getNombreequipo()%>
                    </td>
                
                    <td>
                        <%=unRecorddeequipo.getPartidosganados()%>
                    </td>
                
                
                    <td>
                        <%=unRecorddeequipo.getPartidosperdidos()%>
                    </td>
                
                
                    <td>
                        <%=unRecorddeequipo.getPartidosempatados()%>
                    </td>
                
                
                    
                </tr>
                
                <%
                    }
                %>
                
               
            </table>
                
                            <table>
                <thead>PROXIMAS FECHAS</thead>
                <tr>
                    <td>
                        FECHA
                    </td>
                                        <td>
                        HORA
                    </td>
                
                    <td>
                        LOCAL
                    </td>
                
                
                    <td>
                        VISITANTE
                    </td>
                

                </tr>
                
                <%for (Object record : proximosPartidos) {
                        Partido proximoPartido = (Partido)record;
                        
                        
                        
                        %>
                
                                <tr>
                    <td>
                        <%= proximoPartido.getFecha().toString()%>
                    </td>
                
                    <td>
                        <%=proximoPartido.getHora().toString()%>
                    </td>
                
                
                    <td>
                        <%=proximoPartido.getEquipolocal()%>
                    </td>
                
                
                    <td>
                        <%=proximoPartido.getEquipovisitante()%>
                    </td>
                
                
                    
                </tr>
                
                <%
                    }
                %>
                
                
            </table>

        </form>
                           </div>
            </div>

        </div>	
    </div>	
</div>
 <div class="clearfix"> </div>

		
	<div class="clearfix"> </div>

	<div class="clearfix"> </div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

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
						<li>
                                <a href="TableroDeCoach.jsp">Tablero</a>
                            </li>
                            <li><a href="administrarequipo.jsp">Administrar Equipo</a></li>
                            <li><a href="index.jsp">Cerrar Sesión</a></li>
						
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

<script src="js/script.js"></script>
</body>
</html>
