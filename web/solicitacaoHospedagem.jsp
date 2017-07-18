<%@ page import="br.com.uff.model.Usuario" %><%--
  Created by IntelliJ IDEA.
  User: leo_c
  Date: 10/07/2017
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Solicitacao Hospedagem</title>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
</head>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
    String idHospedeiro = request.getParameter("hospedeiroID");
%>

<header>
    <div id="emailHeader"><%out.print(usuario.getEmail());%></div>
    <div id="logoSiteHeader"><a href="perfilLogado.jsp">Couch & Running</a></div>
    <div id="sairHeader"><a href="index.jsp">sair</a></div>
</header>
<body>
<div id="mystyle">
    <h1>Insira os dados da sua solicitação:</h1>
    <h2><%=idHospedeiro%>
    </h2>
    <form action="solicitaHospedagem" method="post">
        <input type="hidden" name="hospedeiroID2" id="hospedeiroID2" value="<%=idHospedeiro%>"/>
        <label for="qtd_viajantes">Quantidade de Hóspedes:</label>
        <input type="number" name="qtd_viajantes" required id="qtd_viajantes">
        <label for="qtd_praticam_surf">Quantos praticam Surf?</label>
        <input type="number" name="qtd_praticam_surf" required id="qtd_praticam_surf">
        <label for="mensagem">Mensagem:</label>
        <input type="text" name="mensagem" required id="mensagem">
        <label for="data_inicial">Data de Check-in:</label>
        <input type="date" name="data_inicial" required id="data_inicial">
        <label for="data_inicial">Data de Check-out:</label>
        <input type="date" name="data_final" required id="data_final">
        <button type="submit">Enviar</button>
    </form>
</div>

</body>
</html>
