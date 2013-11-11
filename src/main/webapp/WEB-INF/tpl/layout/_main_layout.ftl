<#import "/spring.ftl" as spring/>
<#macro main_layout title="Welcome qstart-web" styles=[] scripts=[] >
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<@spring.url '/static/css/bootstrap.css'/>" rel="stylesheet">
    <style>
        body {
            padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
        }
    </style>
    <link href="<@spring.url '/static/css/bootstrap-responsive.css'/>" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="<@spring.url '/static/js/html5shiv.js'/>"></script>
    <![endif]-->

    <#list styles as st>
        <link href="<@spring.url '${st}'/>" rel="stylesheet">
    </#list>

    <!-- Fav and touch icons
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../assets/ico/favicon.png">
    -->
</head>

<body>

<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">Project name</a>
            <div class="nav-collapse collapse">
                <ul class="nav">
                    <li class="active"><a href="<@spring.url '/'/>">Home</a></li>
                    <li><a href="<@spring.url '/welcome/hello'/>">About</a></li>
                </ul>


                <form class="navbar-form pull-right">
                    <a class="btn" href="<@spring.url '/j_spring_security_logout'/>">注销</a>
                </form>


            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>

<div class="container">

    <#nested>

</div> <!-- /container -->

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<@spring.url '/static/js/bootstrap.js'/>"></script>

<#list scripts as sc>
<script src="<@spring.url '${sc}'/>"></script>
</#list>

</body>
</html>

</#macro>