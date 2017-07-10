<%@ page import="br.com.uff.model.*" %>
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <title>Lista de Disponiveis por Local</title>
</head>

<%Usuario usuario2 = (Usuario) session.getAttribute("usuarioLogado");%>
<header>
    <div id="emailHeader"><%out.print(usuario2.getEmail());%></div>
    <div id="logoSiteHeader"><a href="perfilLogado.jsp">Couch & Running</a></div>
    <div id="sairHeader"><a href="index.jsp">sair</a></div>
</header>
<body>
<div id="mystyle">
    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>Esporte Favorito</th>
            <th>Foto</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Usuario> listUsuarios = (List<Usuario>) session.getAttribute("listUsuarioLocalidade");
            for (Usuario usuario : listUsuarios) {
        %>
        <tr>
            <td><%=usuario.getNome()%></td>
            <td><%=usuario.getEsporte_fav()%></td>
            <td><img src="fotos/<%=usuario.getFoto_perfil()%>"></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
