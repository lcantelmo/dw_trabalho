<%@ page import="java.util.List" %>
<%@ page import="br.com.uff.model.*" %>
<%@ page import="br.com.uff.service.Dao" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="CSS/style.css">
    <title>Couch&Running - Home</title>
</head>

<%Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
    Endereco endereco = usuario.getEndereco();%>

<header>
    <div id="emailHeader"><%out.print(usuario.getEmail());%></div>
    <div id="logoSiteHeader"><a href="perfilLogado.jsp">Couch & Running</a></div>
    <div id="sairHeader"><a href="logout.jsp">sair</a></div>
</header>

<body>
<div id="mystyle">
    <img id="fotoPerfil" src="fotos/<%out.println(usuario.getFoto_perfil());%>">
    <h1><%out.println(usuario.getNome());%></h1>
    <h2>Dados Pessoais:</h2>
    <p>E-mail: <%out.println(usuario.getEmail()); %></p>
    <p>Data de Nascimento: <%out.println(usuario.getData_nascimento()); %></p>
    <p>Esporte Favorito: <%out.println(usuario.getEsporte_fav()); %></p>

    <h4>Avaliações de Amigos:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Nota</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<AvaliacaoAmigos> avaliacaoAmigos
                    = (List<AvaliacaoAmigos>) session.getAttribute("avaliacaoAmigos");
            Usuario avaliador;

            for (AvaliacaoAmigos a : avaliacaoAmigos) {
                avaliador = a.getAvaliador();
        %>
        <tr>
            <td><img src="fotos/<%out.println(avaliador.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(avaliador.getId());%>"><%out.println(avaliador.getNome());%></a></td>
            <br>
            <td><%out.println(a.getDescricao());%></td>
            <br>
            <td><%out.println(a.getNota());%></td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Avaliações como Hóspede:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Nota</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<AvaliacaoHospedeiroxhospede> avaliacaoHospedeiroxhospedes
                    = (List<AvaliacaoHospedeiroxhospede>) session.getAttribute("avaliacaoHospedeiroxhospede");
            Usuario avaliadorHospedeiro;

            for (AvaliacaoHospedeiroxhospede a : avaliacaoHospedeiroxhospedes) {
                avaliadorHospedeiro = a.getAvaliador();
        %>
        <tr>
            <td><img src="fotos/<%out.println(avaliadorHospedeiro.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(avaliadorHospedeiro.getId());%>"><%
                out.println(avaliadorHospedeiro.getNome());%></a></td>
            <br>
            <td>Descrição: <%out.println(a.getDescricao());%></td>
            <br>
            <td>Nota: <%out.println(a.getNota());%></td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Avaliações como Hospedeiro:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Nota</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<AvaliacaoHospedexhospedeiro> avaliacaoHospedexhospedeiro
                    = (List<AvaliacaoHospedexhospedeiro>) session.getAttribute("avaliacaoHospedexhospedeiro");
            Usuario avaliadorHospede;

            for (AvaliacaoHospedexhospedeiro a : avaliacaoHospedexhospedeiro) {
                avaliadorHospede = a.getAvaliador();
        %>
        <tr>
            <td><img src="fotos/<%out.println(avaliadorHospede.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(avaliadorHospede.getId());%>"><%
                out.println(avaliadorHospede.getNome());%></a></td>
            <br>
            <td>Descrição: <%out.println(a.getDescricao());%></td>
            <br>
            <td>Nota: <%out.println(a.getNota());%></td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Avaliações como Particiante do Evento:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Nota</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<AvaliacaoOrganizadorxparticipante> avaliacaoOrganizadorxparticipante
                    = (List<AvaliacaoOrganizadorxparticipante>) session.getAttribute("avaliacaoOrganizadorxparticipante");
            Usuario avaliadorOrganizador;

            for (AvaliacaoOrganizadorxparticipante a : avaliacaoOrganizadorxparticipante) {
                avaliadorOrganizador = a.getAvaliador();
        %>
        <tr>
            <td><img src="fotos/<%out.println(avaliadorOrganizador.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(avaliadorOrganizador.getId());%>"><%
                out.println(avaliadorOrganizador.getNome());%></a></td>
            <br>
            <td>Descrição: <%out.println(a.getDescricao());%></td>
            <br>
            <td>Nota: <%out.println(a.getNota());%></td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Avaliações como Organizador do Evento:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Descrição</th>
            <th>Nota</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<AvaliacaoParticipantexorganizador> avaliacaoParticipantexorganizadorte
                    = (List<AvaliacaoParticipantexorganizador>) session.getAttribute("avaliacaoParticipantexorganizador");
            Usuario avaliadorParticipante;

            for (AvaliacaoParticipantexorganizador a : avaliacaoParticipantexorganizadorte) {
                avaliadorParticipante = a.getAvaliador();

        %>
        <tr>
            <td><img src="fotos/<%out.println(avaliadorParticipante.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(avaliadorParticipante.getId());%>"><%
                out.println(avaliadorParticipante.getNome());%></a></td>
            <td>Descrição: <%out.println(a.getDescricao());%></td>
            <td>Nota: <%out.println(a.getNota());%></td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Lista de Hospedagens Realizadas como hospede:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Requsição</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Hospedagem> listHopedagemFeita
                    = (List<Hospedagem>) session.getAttribute("listHopedagemFeita");
            Usuario hospede1;

            for (Hospedagem a : listHopedagemFeita) {
                hospede1 = a.getHospede();

        %>
        <tr>
            <td><img src="fotos/<%out.println(hospede1.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(hospede1.getId());%>"><%out.println(hospede1.getNome());%></a></td>
            <td>
                <form action="avaliarHospedeHospedeiro" method="post">
                    <input type="hidden" name="hospedagemId" id="hospedagemId" value="<%=a.getId()%>">
                    <input type="text" name="descricao" id="descricao"/>
                    <input type="number" name="nota" id="nota"/>
                    <button type="submit">Enviar</button>
                </form>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Lista de Requisições de Hospedagem:</h4>
    <table>
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nome</th>
            <th>Requsição</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Hospedagem> listHopedagem
                    = (List<Hospedagem>) session.getAttribute("listReqHosp");
            Usuario hospede;

            for (Hospedagem a : listHopedagem) {
                hospede = a.getHospede();

        %>
        <tr>
            <td><img src="fotos/<%out.println(hospede.getFoto_perfil());%>"></td>
            <td><a href="perfil?id=<%out.println(hospede.getId());%>"><%out.println(hospede.getNome());%></a></td>
            <td>
                <form action="atualizaReq" method="post">
                    <input type="hidden" name="hospedeReqId" id="hospedeReqId" value="<%=hospede.getId()%>">
                    <input type="hidden" name="hospedeiroId" id="hospedeiroId" value="<%=usuario.getId()%>">
                    <button type="submit">Aceitar</button>
                </form>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>

    <h4>Convocação:</h4>

    <h4>Busca por localidade:</h4>
    <form action="buscaHospedagem" method="post">
        <label for="pais">País</label>
        <input type="text" name="pais" id="pais" required>

        <label for="cidade">Cidade</label>
        <input type="text" name="cidade" id="cidade" required>

        <button type='submit'>Buscar</button>
    </form>

    <h4>Busca por Esporte:</h4>
    <form action="buscaPorEsporte" method="post">
        <label for="esporte">Esporte</label>
        <input type="text" name="esporte" id="esporte" required>

        <button type='submit'>Buscar</button>
    </form>
</div>
</body>
</html>
