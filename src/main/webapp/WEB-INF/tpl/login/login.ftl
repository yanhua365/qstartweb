<#import "/spring.ftl" as spring/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>登陆</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="<@spring.url '/static/css/bootstrap.css'/>" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 40px;
            padding-bottom: 40px;
            background-color: #f5f5f5;
        }

        .form-signin {
            max-width: 300px;
            padding: 19px 29px 29px;
            margin: 0 auto 20px;
            background-color: #fff;
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
            box-shadow: 0 1px 2px rgba(0,0,0,.05);
        }
        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }
        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

    </style>
    <link href="<@spring.url '/static/css/bootstrap-responsive.css'/>" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="<@spring.url '/static/js/html5shiv.js'/>"></script>
    <![endif]-->

    <!-- Fav and touch icons
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="../assets/ico/favicon.png">
    -->
</head>

<body onload="document.f.j_username.focus();">


<div class="container">
    <#if RequestParameters['error']?if_exists == 'true'>
    </#if>

    <#if Session.SPRING_SECURITY_LAST_EXCEPTION?? && Session.SPRING_SECURITY_LAST_EXCEPTION.message?has_content>
        <div class="alert alert-error">
        ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>

    </#if>

    <form method="POST" class="form-signin"  name="f" action="<@spring.url '/j_spring_security_check'/>">
        <h2 class="form-signin-heading">登录</h2>
        <input type="text" class="input-block-level" placeholder="用户名" name="j_username">
        <input type="password" class="input-block-level" placeholder="密码"  name="j_password">
        <!--
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> Remember me
        </label>
        -->
        <button class="btn btn-large btn-primary" type="submit">登录</button>
    </form>

</div> <!-- /container -->


<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<@spring.url '/static/js/bootstrap.js'/>"></script>
</body>
</html>