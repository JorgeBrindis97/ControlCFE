<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage/template.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ControlCFE.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" runat="server">
    <link href="static/flexslider/flexslider.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <script type="text/javascript" charset="utf-8">
        $(window).load(function() {
            $('.flexslider').flexslider({
    	        touch: true,
    	        pauseOnAction: false,
    	        pauseOnHover: false,
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contenido" runat="server">
    <div class="flexslider">
        <ul class="slides">
            <li>
				<img src="static/imagenes/cfe-medidor.jpg" alt="">
				<section class="flex-caption">
					<p>LOREM IPSUM 1</p>
				</section>
			</li>
			<li>
				<img src="static/imagenes/cfe-solar01.jpg" alt="">
				<section class="flex-caption">
					<p>LOREM IPSUM 2</p>
				</section>
			</li>
			<li>
				<img src="static/imagenes/diablitos.jpg" alt="">
				<section class="flex-caption">
					<p>LOREM IPSUM 3</p>
				</section>
			</li>
        </ul>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="extrajs" runat="server">
    <script src="static/flexslider/jquery.flexslider.js"></script>
    <script src="static/flexslider/jquery.flexslider-min.js"></script>
    
</asp:Content>
