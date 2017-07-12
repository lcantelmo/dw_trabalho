<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>logout Page</title>
</head>
<body>
<%
    session.removeAttribute("usuarioLogado");
    session.removeAttribute("avaliacaoHospedeiroxhospede");
    session.removeAttribute("avaliacaoHospedexhospedeiro");
    session.removeAttribute("avaliacaoOrganizadorxparticipante");
    session.removeAttribute("avaliacaoParticipantexorganizador");
    session.removeAttribute("listReqHosp");
    session.invalidate();
%>
<center>
    <h1>Você foi deslogado com sucesso!</h1>
    Para logar novamente <a href="index.jsp">click here</a>.
</center>
</body>
</html>