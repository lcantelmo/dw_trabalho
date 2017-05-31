<!--Teste tetete-->

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--
- Clientes não poderão comprar passagens no mesmo dia
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <title>DW_COUCH – Sistema desenvolvido para a matéria Desenvolvimento Web</title>
    <link rel="dns-prefetch" href="//fonts.googleapis.com">
    <link rel="dns-prefetch" href="//s.w.org">
    <link href="https://fonts.gstatic.com" crossorigin="" rel="preconnect">
    <link rel="alternate" type="application/rss+xml" title="Feed para DW_COUCH »" href="http://dw-couch.16mb.com/feed/">
    <link rel="alternate" type="application/rss+xml" title="Feed de comentários para DW_COUCH »" href="http://dw-couch.16mb.com/comments/feed/">
    <script type="text/javascript">
        window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/2.2.1\/svg\/","svgExt":".svg","source":{"concatemoji":"http:\/\/dw-couch.16mb.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.7.3"}};
        !function(a,b,c){function d(a){var b,c,d,e,f=String.fromCharCode;if(!k||!k.fillText)return!1;switch(k.clearRect(0,0,j.width,j.height),k.textBaseline="top",k.font="600 32px Arial",a){case"flag":return k.fillText(f(55356,56826,55356,56819),0,0),!(j.toDataURL().length<3e3)&&(k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,65039,8205,55356,57096),0,0),b=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55356,57331,55356,57096),0,0),c=j.toDataURL(),b!==c);case"emoji4":return k.fillText(f(55357,56425,55356,57341,8205,55357,56507),0,0),d=j.toDataURL(),k.clearRect(0,0,j.width,j.height),k.fillText(f(55357,56425,55356,57341,55357,56507),0,0),e=j.toDataURL(),d!==e}return!1}function e(a){var c=b.createElement("script");c.src=a,c.defer=c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g,h,i,j=b.createElement("canvas"),k=j.getContext&&j.getContext("2d");for(i=Array("flag","emoji4"),c.supports={everything:!0,everythingExceptFlag:!0},h=0;h<i.length;h++)c.supports[i[h]]=d(i[h]),c.supports.everything=c.supports.everything&&c.supports[i[h]],"flag"!==i[h]&&(c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&c.supports[i[h]]);c.supports.everythingExceptFlag=c.supports.everythingExceptFlag&&!c.supports.flag,c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.everything||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
    </script><script src="http://dw-couch.16mb.com/wp-includes/js/wp-emoji-release.min.js?ver=4.7.3" type="text/javascript" defer=""></script>
    <style type="text/css">
        img.wp-smiley,
        img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 .07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel="stylesheet" id="one-page-express-fonts-css" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro%3A200%2Cnormal%2C300%2C600%2C700%7CPlayfair+Display%3Aregular%2C700%2C900&amp;subset=latin%2Clatin-ext" type="text/css" media="all">
    <link rel="stylesheet" id="one-page-express-style-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/style.css?ver=1.0.3" type="text/css" media="all">
    <style id="one-page-express-style-inline-css" type="text/css">
        img.custom-logo{max-height:70px;}
        .header-top{background-color:transparent;}
    </style>
    <link rel="stylesheet" id="one-page-express-common-css-css" href="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/css/common.css?ver=4.7.3" type="text/css" media="all">
    <link rel="stylesheet" id="companion-page-css-css" href="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/content.css?ver=4.7.3" type="text/css" media="all">
    <link rel="stylesheet" id="companion-cotent-swap-css-css" href="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/css/HoverFX.css?ver=4.7.3" type="text/css" media="all">
    <link rel="stylesheet" id="one-page-express-font-awesome-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/font-awesome/font-awesome.min.css?ver=1.0.3" type="text/css" media="all">
    <link rel="stylesheet" id="one-page-express-animate-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/css/animate.css?ver=1.0.3" type="text/css" media="all">
    <link rel="stylesheet" id="one-page-express-webgradients-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/css/webgradients.css?ver=1.0.3" type="text/css" media="all">
    <link rel="stylesheet" id="kirki-styles-one_page_express-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/customizer/kirki/assets/css/kirki-styles.css" type="text/css" media="all">
    <style id="kirki-styles-one_page_express-inline-css" type="text/css">
        .header-homepage.color-overlay:before{background-color:#000;opacity:0.4;}.header-homepage .header-separator svg{height:90px!important;}.header.color-overlay:before{background-color:#000;opacity:0.4;}.header-separator svg{height:90px!important;}.inner-header-description{padding-top:8%;padding-bottom:8%;}.header-description{padding-top:8%;padding-bottom:8%;}@media only screen and (min-width: 768px){.inner-header-description{text-align:center;}.header-description{text-align:center;}.header-content{width:100%!important;}}
    </style>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/js/libs/hammer.js?ver=4.7.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/js/libs/modernizr.js?ver=4.7.3"></script>
    <script type="text/javascript">
        /* <![CDATA[ */
        var one_page_express_settings = {"header_text_morph_animation":"flipInX","header_text_morph_speed":"2000","header_text_morph":"1"};
        /* ]]> */
    </script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/jquery/jquery.js?ver=1.12.4"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.4.1"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/js/HoverFX.js?ver=4.7.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/templates/js/smoothscroll.js?ver=4.7.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/scripts.js?ver=4.7.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/smoothscroll.js?ver=1.0.3"></script>
    <link rel="https://api.w.org/" href="http://dw-couch.16mb.com/wp-json/">
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://dw-couch.16mb.com/xmlrpc.php?rsd">
    <link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://dw-couch.16mb.com/wp-includes/wlwmanifest.xml">
    <meta name="generator" content="WordPress 4.7.3">
    <link rel="canonical" href="http://dw-couch.16mb.com/">
    <link rel="shortlink" href="http://dw-couch.16mb.com/">
    <link rel="alternate" type="application/json+oembed" href="http://dw-couch.16mb.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdw-couch.16mb.com%2F">
    <link rel="alternate" type="text/xml+oembed" href="http://dw-couch.16mb.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdw-couch.16mb.com%2F&amp;format=xml">
    <style data-name="overlap">
        @media only screen and (min-width: 768px) {
            .homepage-template .content {
                position:relative;
                z-index:10;
            }

            .homepage-template .page-content > div[data-overlap]:first-of-type > div:first-of-type {
                margin-top: -230px;
                background: transparent!important;
            }
        }
    </style>
    <style data-name="overlap">
        @media only screen and (min-width: 768px) {
            .blog .content,
            .single-post .content {
                position:relative;
                z-index:10;
            }

            .blog .content > .gridContainer > .row,
            .single-post .content > .gridContainer > .row {
                margin-top: -200px;
                background: transparent!important;
            }
        }
    </style>
    <style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
    <style type="text/css" id="custom-background-css">
        body.custom-background { background-image: url("http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/Travel_through_New_York_wallpaper-1920x1200.jpg"); background-position: center top; background-size: auto; background-repeat: no-repeat; background-attachment: fixed; }
    </style>

</head>
<body>
<body class="home page-template-default page page-id-4 custom-background homepage-template">



<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">

<title>DW_COUCH – Sistema desenvolvido para a matéria Desenvolvimento Web</title>
<link rel="dns-prefetch" href="//fonts.googleapis.com">
<link rel="dns-prefetch" href="//s.w.org">
<link href="https://fonts.gstatic.com" crossorigin="" rel="preconnect">
<link rel="alternate" type="application/rss+xml" title="Feed para DW_COUCH »" href="http://dw-couch.16mb.com/feed/">
<link rel="alternate" type="application/rss+xml" title="Feed de comentários para DW_COUCH »" href="http://dw-couch.16mb.com/comments/feed/">
<script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/wp-embed.min.js?ver=4.7.3"></script>
<link rel="https://api.w.org/" href="http://dw-couch.16mb.com/wp-json/">
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://dw-couch.16mb.com/xmlrpc.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://dw-couch.16mb.com/wp-includes/wlwmanifest.xml">
<meta name="generator" content="WordPress 4.7.3">
<link rel="canonical" href="http://dw-couch.16mb.com/">
<link rel="shortlink" href="http://dw-couch.16mb.com/">
<link rel="alternate" type="application/json+oembed" href="http://dw-couch.16mb.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdw-couch.16mb.com%2F">
<link rel="alternate" type="text/xml+oembed" href="http://dw-couch.16mb.com/wp-json/oembed/1.0/embed?url=http%3A%2F%2Fdw-couch.16mb.com%2F&amp;format=xml">
<style data-name="overlap">
    @media only screen and (min-width: 768px) {
        .homepage-template .content {
            position:relative;
            z-index:10;
        }

        .homepage-template .page-content > div[data-overlap]:first-of-type > div:first-of-type {
            margin-top: -230px;
            background: transparent!important;
        }
    }
</style>
<style data-name="overlap">
    @media only screen and (min-width: 768px) {
        .blog .content,
        .single-post .content {
            position:relative;
            z-index:10;
        }

        .blog .content > .gridContainer > .row,
        .single-post .content > .gridContainer > .row {
            margin-top: -200px;
            background: transparent!important;
        }
    }
</style>
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
<style type="text/css" id="custom-background-css">
    body.custom-background { background-image: url("http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/Travel_through_New_York_wallpaper-1920x1200.jpg"); background-position: center top; background-size: auto; background-repeat: no-repeat; background-attachment: fixed; }
</style>




<div style="visibility: hidden; display: none; width: 1263.33px; height: 93px; margin: 0px; float: none; position: fixed; top: 0px; right: 0px; bottom: 498.667px; left: 0px;"></div><div class="header-top homepage" data-sticky="0" data-sticky-mobile="0" data-sticky-to="top" style="z-index: 20;">
    <div class="navigation-wrapper ">
        <div class="logo_col">
            <a class="text-logo" href="http://dw-couch.16mb.com/">DW_COUCH</a>        </div>
        <div class="main_menu_col">
            <div id="drop_mainmenu_container" class="menu-main-menu-2-container"><ul id="drop_mainmenu" class="fm2_drop_mainmenu"><li id="menu-item-27" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-27 sel"><a href="http://dw-couch.16mb.com" class="sel">Home</a></li>
            </ul></div><a class="fm2_mobile_button" style="display:none;" id="fm2_drop_mainmenu_mobile_button"><span class="caption"></span></a>        </div>
    </div>
</div>

<div id="page" class="site">
    <div class="header-wrapper">
        <div class="header-homepage  color-overlay" style="background-image:url(&quot;http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/images/home_page_header.jpg&quot;); min-height:">
            <div class="header-description gridContainer">
                <div class="row header-description-row">
                    <div class="header-content header-content-right">
                        <h1 data-text-effect="" class="heading8" style="opacity: 1;">PROGRAMA DE SENSENVOLVIMENTO WEB</h1><p data-text-effect="" class="header-subtitle" style="opacity: 1;">Programa desenvolvido por Hugo, Leonardo, Vitor e Patrick</p><a class="button blue big hp-header-primary-button" href="login.jsp">LOGAR</a><a class="button green big hp-header-secondary-button" href="login.jsp">REGISTRAR</a>    </div>
                </div>
            </div>

            <div class="header-separator header-separator-bottom "><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 100" preserveAspectRatio="none">
                <path class="svg-white-bg" d="M737.9,94.7L0,0v100h1000V0L737.9,94.7z"></path>
            </svg></div>
        </div>

    </div>    <div class="content">
    <div class="page-content">
        <div id="overlapable-2" style="background-color:rgb(255, 255, 255)" data-label="Overlapable" data-id="stripped-coloured-icon-boxes" class="features-coloured-icon-boxes-section" data-overlap="true"><div class="gridContainer"><div class="features-coloured-icon-boxes-innerrow" data-type="row"><div class="features-coloured-icon-boxes-featurecol cp3cols"><div class="features-coloured-icon-boxes-iconcontainer" data-content-item-container="true"><i data-cp-fa="true" class="features-coloured-icon fa fa-bolt"></i></div><h4 class="">Antônio Nunes</h4><p class=""><span style="font-size:16px;font-family:arial, sans-serif">Meu nome é&nbsp;<b style="font-size:16px">Antônio Nunes</b>, sou um cara legal, trabalhei no Pânico na TV por algum tempo, apareci em vários programa pelo vídeo que fiz batendo na minha própria coxa, virei meme e cá estou. Moro no Brasil, e devo fazer outros vídeos engraçados para os brasileiros.&nbsp;</span>&nbsp;</p><a class="features-coloured-button" href="#" target="_blank">VISUALIZAR PERFIL</a></div><div class="features-coloured-icon-boxes-featurecol cp3cols"><div class="features-coloured-icon-boxes-iconcontainer" data-content-item-container="true"><i data-cp-fa="true" class="features-coloured-icon fa fa-cloud"></i></div><h4 class="">Che Guevara</h4><p class=""><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Ernesto Rafael&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Guevara</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">&nbsp;de La Serna, mais conhecido como&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Che Guevara</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">,&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">foi</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">&nbsp;um famoso revolucionário socialista do século XX. Argentino, nasceu na cidade de Rosário em 14 de junho de 1928. Faleceu em 9 de outubro de 1967, na aldeia de La Higuera (Bolívia).</span>&nbsp;</p><a class="features-coloured-button" href="#" target="_blank">VISUALIZAR PERFIL</a></div><div class="features-coloured-icon-boxes-featurecol cp3cols"><div class="features-coloured-icon-boxes-iconcontainer" data-content-item-container="true"><i data-cp-fa="true" class="features-coloured-icon fa fa-signal"></i></div><h4 class="">Bill Gates</h4><p class=""><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">William Henry&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Gates</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">&nbsp;III KBE. GCIH (Seattle, 28 de outubro de 1955) mais conhecido como&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Bill Gates</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">, é um magnata, filantropo e autor norte-americano, que ficou conhecido por fundar junto com Paul Allen a Microsoft, a maior e mais conhecida empresa de software do mundo em termos de valor de mercado.</span></p><a class="features-coloured-button" href="#" target="_blank">VISUALIZAR PERFIL</a></div><div class="features-coloured-icon-boxes-featurecol cp3cols"><div class="features-coloured-icon-boxes-iconcontainer" data-content-item-container="true"><i data-cp-fa="true" class="features-coloured-icon fa fa-pie-chart"></i></div><h4 class="">Steve Jobs</h4><p class=""><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Quem&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">foi</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">&nbsp;e o que fez&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Steve Jobs</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">.&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Steven</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">&nbsp;Paul&nbsp;</span><b style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">Jobs</b><span style="color:rgb(34, 34, 34);font-family:arial, sans-serif;font-size:16px">, ex-CEO e um dos fundadores da companhia Apple, morreu nos Estados Unidos aos 56 anos depois de lutar contra o câncer no pâncreas desde 2003. … Viveu em Los Altos, na Califórnia, EUA</span></p><a class="features-coloured-button" href="#" target="_blank">VISUALIZAR PERFIL</a></div></div></div></div><div id="about-1" style="background-color:rgb(246, 246, 246)" data-label="About" data-id="about-big-images-section" class="about-big-images-section"><div class="gridContainer"><div class="about-big-images-textrow"><div class="about-big-images-textcol" data-type="column"><h5 class="">LOREM IPSUM DOLOR</h5><h3 class="">Brand new WordPress theme&nbsp;<span href="#" class="span25">with unlimited power</span>&nbsp;and customization possibilities</h3><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p><a class="button blue big" href="#">GET STARTED NOW</a></div></div></div><div class="about-big-images-bottomrow"><div class="about-big-images-leftimgcol"><img class="about-big-images-leftimg" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/nordwood-themes-180852.jpg"></div><div class="about-big-images-centerimgcol"><img class="about-big-images-centerimg" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/ir5likvfqc4-william-iven-1920x1275.jpg"></div><div class="about-big-images-rightimgcol"><img class="about-big-images-rightimg" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/project1.jpg"></div></div></div><div id="portfolio-2" style="background-color:rgb(255, 255, 255)" data-label="Portfolio" data-id="portfolio-full-section"><div class="portfolio-full-section" data-type="row"><div class="portfolio-full-projectco cp4cols cp4cols-tablet"><div class="contentswap-effect ContentSwap103 contentswap-overlay" hover-fx="ContentSwap103" id="ContentSwap103" style="float: none; margin: 0px; width: 100%;"><div class="ContentSwap103_content initial-image" style="float: none; margin: 0px;"><img class="portfolio-full-projectimg" data-size="1200x800" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/project3.jpg"></div><div class="overlay" style="display: block; transition: opacity 800ms;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;"></div><div class="swap-inner" style="display: block; transition: all 800ms ease; background-color: rgba(3, 169, 244, 0.75); margin-top: 0px;"><div class="ContentSwap103-center"><h4 class="protfolio-full-itemtitle">A COOL PROJECT</h4><a class="button yellow" href="#">Check it out</a></div></div></div></div><div class="portfolio-full-projectco cp4cols cp4cols-tablet"><div class="contentswap-effect ContentSwap103 contentswap-overlay" hover-fx="ContentSwap103" id="ContentSwap103" is-hovered="1" style="float: none; margin: 0px; width: 100%;"><div class="ContentSwap103_content initial-image" style="float: none; margin: 0px;"><img class="portfolio-full-projectimg" data-size="1200x800" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/project1.jpg"></div><div class="overlay" style="display: block; transition: opacity 800ms;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;"></div><div class="swap-inner" style="display: block; transition: all 800ms ease; background-color: rgba(3, 169, 244, 0.75); margin-top: 0px;"><div class="ContentSwap103-center"><h4 class="protfolio-full-itemtitle">A COOL PROJECT</h4><a class="button yellow" href="#">CHECK IT OUT</a></div></div></div></div><div class="portfolio-full-projectco cp4cols cp4cols-tablet"><div class="contentswap-effect ContentSwap103 contentswap-overlay" hover-fx="ContentSwap103" id="ContentSwap103" is-hovered="1" style="float: none; margin: 0px; width: 100%;"><div class="ContentSwap103_content initial-image" style="float: none; margin: 0px;"><img class="portfolio-full-projectimg" data-size="1200x800" src="http://dw-couch.16mb.com/wp-content/plugins/one-page-express-companion/theme-data/one-page-express/sections/images/project2.jpg"></div><div class="overlay" style="display: block; transition: opacity 800ms;-webkit-transition-timing-function:ease;-moz-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease;"></div><div class="swap-inner" style="display: block; transition: all 800ms ease; background-color: rgba(3, 169, 244, 0.75); margin-top: 0px;"><div class="ContentSwap103-center"><h4 class="protfolio-full-itemtitle">A COOL PROJECT</h4><a class="button yellow" href="#">CHECK IT OUT</a></div></div></div></div></div></div><div id="testimonials-1" style="background-color:rgb(246, 246, 246)" data-label="Testimonials" data-id="testimonials-boxed-section" class="testimonials-boxed-section"><div class="gridContainer"><div class="testimonials-boxed-textcol" data-type="column"><h2 class="">Avaliações</h2><p class="">Avaliações de usuários: Prática de esporte e Hospedagem.</p></div><div class="testimonials-boxed-itemsrow" data-type="row"><div class="testimonials-boxed-itemcol cp4cols cp6cols-tablet"><div class="testimonials-boxed-itemcard" data-type="column"><h4 class="testimonials-boxed-itemtext">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.”</h4><img class="testimonials-boxed-itemimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time1.jpg"><h5 class="testimonials-boxed-itemname">Anna Johnson</h5><h6 class="testimonials-boxed-itempos">CEO @ COOLAPP</h6></div></div><div class="testimonials-boxed-itemcol cp4cols cp6cols-tablet"><div class="testimonials-boxed-itemcard" data-type="column"><h4 class="testimonials-boxed-itemtext">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.”</h4><img class="testimonials-boxed-itemimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time2.jpg"><h5 class="testimonials-boxed-itemname">Eric Black</h5><h6 class="testimonials-boxed-itempos">CEO @ COOLAPP</h6></div></div><div class="testimonials-boxed-itemcol cp4cols cp6cols-tablet"><div class="testimonials-boxed-itemcard" data-type="column"><h4 class="testimonials-boxed-itemtext">“Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.”</h4><img class="testimonials-boxed-itemimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time3.jpg"><h5 class="testimonials-boxed-itemname">John Collins</h5><h6 class="testimonials-boxed-itempos">CEO @ COOLAPP</h6></div></div></div></div></div><div id="cta-1" data-label="Call to action" data-id="cta-blue-section" class="cta-blue-section"><div class="gridContainer"><div class="cta-blue-innerrow"><div class="cta-blue-textcol"><h2 class="cta-blue-text"><b class="element2">Join us.</b>It will only take a minute</h2></div><div class="cta-blue-btncol"><a class="button transparent" href="#">GET STARTED</a></div></div></div></div><div id="team-1" style="background-color:rgb(255, 255, 255)" data-label="Team" data-id="team-colors-section" class="team-colors-section"><div class="gridContainer"><div class="team-colors-textcol"><h2>Our Awesome Team</h2><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p></div><div class="team-colors-membersrow" data-type="row"><div class="team-colors-membercol cp3cols cp6cols-tablet"><div class="team-colors-membercard"><div class="team-colors-background"></div><div class="team-colors-memberinfo" data-type="column"><img class="team-colors-memberimg" height="175" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time1.jpg"><h4 class="team-colors-membername">Chip Mayer</h4><p class="team-colors-memberposition">Co-founder &amp; CEO</p><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><hr class="team-colors-separator"></div><div class="team-colors-membericons" data-type="group"><a href="#"><i data-cp-fa="true" class="team-colors-icon fa fa-linkedin"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-twitter team-colors-icon"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-dribbble team-colors-icon"></i></a></div></div></div><div class="team-colors-membercol cp3cols cp6cols-tablet"><div class="team-colors-membercard"><div class="team-colors-background"></div><div class="team-colors-memberinfo" data-type="column"><img class="team-colors-memberimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time2.jpg"><h4 class="team-colors-membername">Jane Brown</h4><p class="team-colors-memberposition">Co-founder &amp; COO</p><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><hr class="team-colors-separator"></div><div class="team-colors-membericons" data-type="group"><a href="#"><i data-cp-fa="true" class="team-colors-icon fa fa-linkedin"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-twitter team-colors-icon"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-dribbble team-colors-icon"></i></a></div></div></div><div class="team-colors-membercol cp3cols cp6cols-tablet"><div class="team-colors-membercard"><div class="team-colors-background"></div><div class="team-colors-memberinfo" data-type="column"><img class="team-colors-memberimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time3.jpg"><h4 class="team-colors-membername">Erika Black&nbsp;</h4><p class="team-colors-memberposition">Marketing Director</p><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><hr class="team-colors-separator"></div><div class="team-colors-membericons" data-type="group"><a href="#"><i data-cp-fa="true" class="team-colors-icon fa fa-linkedin"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-twitter team-colors-icon"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-dribbble team-colors-icon"></i></a></div></div></div><div class="team-colors-membercol cp3cols cp6cols-tablet"><div class="team-colors-membercard"><div class="team-colors-background"></div><div class="team-colors-memberinfo" data-type="column"><img class="team-colors-memberimg" src="http://dw-couch.16mb.com/wp-content/uploads/2017/05/time4.jpg"><h4 class="team-colors-membername">George Mayer</h4><p class="team-colors-memberposition">Creative Director</p><p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p><hr class="team-colors-separator"></div><div class="team-colors-membericons" data-type="group"><a href="#"><i data-cp-fa="true" class="team-colors-icon fa fa-linkedin"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-twitter team-colors-icon"></i></a><a href="#"><i data-cp-fa="true" class="fa fa-dribbble team-colors-icon"></i></a></div></div></div></div></div></div><div id="numbers" data-label="Numbers" data-id="numbers-section" data-bg="transparent" class="numbers-section" data-parallax-depth="20"><div class="gridContainer"><div class="numbers-itemcol"><h2 class="numbers-numbertext">230</h2><h3 class="numbers-titletext">PROJECTS</h3></div><div class="numbers-itemcol"><h2 class="numbers-numbertext">75340</h2><h3 class="numbers-titletext">WORKED HOURS</h3></div><div class="numbers-itemcol-last"><h2 class="numbers-numbertext">25</h2><h3 class="numbers-titletext">EMPROYEES</h3></div></div></div><div id="contact-2" data-label="Contact" data-id="contact-section" data-bg="transparent" data-setting="one_page_express_contact_form_shortcode" class="contact-section-formsection white-text"><div class="gridContainer"><div class="row_224"><div class="contact-textrow"><div class="contact-textcol"><h2 class="">Say Hello</h2><p class="white_text">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div></div></div><div class="contact-formcol" data-content-shortcode="one_page_express_contact_form"><p style="text-align:center;color:#ababab">Contact form will be displayed here. To activate it you have to set the “contact form shortcode” parameter in Customizer.</p></div></div></div>      </div>
</div>
    <div class="footer">
        <div class="row_201">
            <div class="column_209 gridContainer">
                <div class="row_202">
                    <div class="column_210">
                        <div>
                        </div>
                    </div>
                    <div class="column_210">
                        <div>
                        </div>
                    </div>
                    <div class="column_210">
                        <div>
                        </div>
                    </div>
                    <div class="column_213">
                        <h2 class="footer-logo">DW_COUCH</h2>        <p>©&nbsp;&nbsp;2017&nbsp;DW_COUCH.&nbsp;Built using WordPress and OnePage Express Theme.</p>

                        <div class="row_205">
                            <a href="#" target="_blank"><i class="font-icon-19 fa fa-facebook-f"></i></a><a href="#" target="_blank"><i class="font-icon-19 fa fa-twitter"></i></a><a href="#" target="_blank"><i class="font-icon-19 fa fa-google-plus"></i></a><a href="#" target="_blank"><i class="font-icon-19 fa fa-behance"></i></a><a href="#" target="_blank"><i class="font-icon-19 fa fa-dribbble"></i></a>            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <link rel="stylesheet" id="one-page-express-content-lists-css-css" href="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/css/footer-content-lists.css?ver=4.7.3" type="text/css" media="all">
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/jquery/ui/effect.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/jquery/ui/effect-slide.min.js?ver=1.11.4"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/drop_menu_selection.js?ver=1.0.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/libs/morphext.js?ver=1.0.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/theme.js?ver=1.0.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/libs/fixto.js?ver=1.0.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-content/themes/one-page-express/assets/js/sticky.js?ver=1.0.3"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/imagesloaded.min.js?ver=3.2.0"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/masonry.min.js?ver=3.3.2"></script>
    <script type="text/javascript" src="http://dw-couch.16mb.com/wp-includes/js/comment-reply.min.js?ver=4.7.3"></script>


</div>
</body>
</html>

<!--
EXPLICAÇÃO JSTL, FOREACH
https://www.caelum.com.br/apostila-java-web/usando-taglibs/#7-6-foreach

-->
