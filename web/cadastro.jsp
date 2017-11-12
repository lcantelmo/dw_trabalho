<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta charset="utf-8">
<title>Sistema TCC's - CADASTRE-SE</title>

<link href="https://fonts.googleapis.com/css?family=Open+Sans:800" rel="stylesheet">

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

    ::-webkit-input-placeholder { /* WebKit browsers */
        color: #BFBFBF;
    }

    .img-transparencia-001:hover{
        opacity: 0.80;
        -webkit-transition: 0.25s ease-out;
        -moz-transition: 0.25s ease-out;
        -o-transition: 0.25s ease-out;
        transition: 0.25s ease-out;
    }

</style>
<script>
    var password = document.getElementById("senha")
        , confirm_password = document.getElementById("confirm_senha");

    function validatePassword(){
        if(password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Senhas diferentes!");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
</script>
</head>
<body bgcolor="#E9EBEE">

<!-- ---------- Menu - Início ---------- -->
<div style="width: 100%; background-color: #38547B; top: 0%; left: 0%; position: absolute; color: #fff; padding-top: 15px; padding-bottom: 15px;"
     class="aplicar-fonte">

		<span style="font-size: 19px; padding-left: 30px;">
			<a href="#">
				Sistema de TCC's
			</a>
		</span>


</div>
<!-- ---------- Menu - Fim ---------- -->

<div style="color: #fff; margin-top: 100px; padding-left: 0px;"
     class="aplicar-fonte" align="center">

    <div class="aplicar-fonte" style="background-color: #38547B; width: 600px; padding-top: 10px; padding-bottom: 10px; padding-left: 30px; margin-top: -5px;" align="left">
        + Aluno
    </div>

    <form action="cadastro" method="post" class="aplicar-fonte" style="background-color: #fff; width: 400px; color: #000;
		padding-left: 100px; padding-top: 40px;" align="left">
        <div style="padding-bottom: 20px;">
            Nome:
            <input style="margin-left: 20px;" type="text" name="nome" id="nome" size="28" aria-required="true" aria-invalid="false" />
        </div>

        <div style="padding-bottom: 20px;">
            Matrícula:
            <input style="margin-left: 24px;" type="text" name="matricula" id="matricula" size="23" aria-required="true" aria-invalid="false" />
        </div>

        <div style="padding-bottom: 20px;">
            CPF:
            <input style="margin-left: 19px;" type="text" name="cpf" id="cpf" size="31" aria-required="true" aria-invalid="false" />
        </div>

        <div style="padding-bottom: 20px;">
            Senha:
            <input style="margin-left: 25px;" type="password" name="senha" id="senha" size="27" aria-required="true" aria-invalid="false" />
        </div>

        <div style="padding-bottom: 40px;">
            Confirmar Senha:
            <input style="margin-left: 20px;" type="password" name="confirm_senha" id="confirm_senha" size="15" aria-required="true" aria-invalid="false" />
        </div>

        <div align="right" style="padding-right: 90px; padding-bottom: 25px; padding-top: 20px;">
            <input type="submit" style="color: #000;" value="CRIAR">
        </div>

    </form>
</div>
</body>
</html>
