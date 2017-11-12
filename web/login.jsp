<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <title>Sistema de TCC's - LOGIN</title>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,800" rel="stylesheet">

    <style>
        .alinhar-hev{
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center;
            -webkit-justify-content: center;
            justify-content: center;
        }

        .alinhar-h{
            display: -webkit-flex;
            display: flex;
            -webkit-justify-content: center;
            justify-content: center;
        }

        .alinhar-v{
            display: -webkit-flex;
            display: flex;
            -webkit-align-items: center;
            align-items: center;
        }

        .aplicar-fonte{
            font-family: 'Open Sans', sans-serif;
            font-weight: 800;
        }

        a:link, a:visited {
            text-decoration: none;
            color: #fff;
        }
        a:hover {
            text-decoration: underline;
            color: #fff;
        }
        a:active {
            text-decoration: none;
        }

        #botaoSaibaMais{
            background: #38547B;
            padding-right: 11px;
            padding-left: 13px;
            padding-top: 5px;
            padding-bottom: 4px !important;
            -moz-border-radius:17px;
            -webkit-border-radius:17px;
            border-radius:17px;
            text-decoration:none !important;
        }

        #botaoSaibaMais:hover{
            background:#446695;
        }

    </style>

</head>
<body bgcolor="#7599B3">

<div class="alinhar-hev" style="width: 100%; height: 100%;">
    <div class="bloco-de-login" style="width: 300px;" >
        <div style="width: 100%; height: 70px; background-color: #38547B; color: #fff; font-size: 19px;"
             class="aplicar-fonte alinhar-hev">
            Sistema de TCC's
        </div>
        <div style="width: 100%; background-color: #FEFEFE; padding-top: 60px; padding-bottom: 70px;" class="aplicar-fonte" align="center">

            <div width="80%">
                Matrícula:
                <input style="margin-left: 5px;" type="text" name="login" id="login" size="15" aria-required="true" aria-invalid="false" />
            </div>

            <br>

            <div width="80%">
                Senha:
                <input style="margin-left: 34px;" type="password" name="senha" id="senha" size="15" aria-required="true" aria-invalid="false" />
            </div>

        </div>
        <div style="width: 100%; height: 50px; color: #fff; background-color: #FEFEFE;
			margin-top: -25px; padding-bottom: 15px;"
             class="aplicar-fonte alinhar-hev">
            <a id="botaoSaibaMais" style="width: 120px;" align="center" href="#">Login</a>
        </div>
        <div style="width: 100%; height: 55px; background-color: #FEFEFE; color: #000;
			font-weight: 400 !important; font-size: 12px; padding-top: 10px;"
             class="aplicar-fonte" align="right">

            <div style="padding-bottom: 5px;">
                <a href="cadastro.jsp" style="color: #A5A9C9 !important;  padding-right: 10px;">Novo usuário</a>
            </div>
            <a href="#" style="color: #A5A9C9 !important;  padding-right: 10px;">Esqueci minha senha</a>
        </div>
    </div>
</div>

</body>
</html>