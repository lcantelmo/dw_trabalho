<%@ page import="br.com.uff.model.*" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <title>Lista de Disponiveis por Esporte</title>
</head>
<body>
<div id="mystyle">
    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>País</th>
            <th>Cidade</th>
            <th>Foto</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Usuario> listUsuarios = (List<Usuario>) session.getAttribute("listUsuariosEsporte");
            for (Usuario usuario : listUsuarios) {
        %>
        <tr>
            <td><%=usuario.getNome()%></td>
            <td><%=usuario.getEndereco().getPais()%></td>
            <td><%=usuario.getEndereco().getCidade()%></td>
            <td><img src="fotos/<%=usuario.getFoto_perfil()%>"></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>