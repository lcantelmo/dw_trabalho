package br.com.uff.service;

import br.com.uff.model.*;
import br.com.uff.util.JPAUtil;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TemporalType;
import javax.persistence.criteria.CriteriaBuilder;
import javax.print.attribute.DateTimeSyntax;

public class Dao {

    private EntityManager manager = new JPAUtil().getEntityManager();

    public Usuario buscarUsuarioPeloEmail (String email) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario" +" where usuario.email= ?1";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1,email)
                .getSingleResult();
        return usuarioEncontrado;
    }

//    public Usuario buscarUsuarioPeloendereco (Integer id, Integer endereco_id) {
//        Usuario usuarioEncontrado;
//        String jpql = "select usuario from Usuario usuario" +" where usuario.id= ?1 and usuario.endereco= ?2";
//        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
//                .setParameter(1,id)
//                .setParameter(2,endereco_id)
//                .getSingleResult();
//        return usuarioEncontrado;
//    }

    public Usuario buscarUsuarioPeloId (Integer id) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario where usuario.id= ?1";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1,id)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public Usuario buscarUsuarioPeloEmailESenha (String email, String senha) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario where usuario.email= ?1 and usuario.senha= ?2";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1, email)
                .setParameter(2, senha)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public void cadastraUsuario (String email, String senha, String nome, Endereco endereco, String numero, String complemento,
                                 Date data_nasc, String foto_perfil, String esporte, boolean hospedeiro, Integer qnt_hospedes){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Usuario usuario1 = new Usuario();
            usuario1.setEmail(email);
            usuario1.setSenha(senha);
            usuario1.setNome(nome);
            usuario1.setEndereco(endereco);
            usuario1.setNumero(numero);
            usuario1.setComplemento(complemento);
            usuario1.setData_nascimento(data_nasc);
            usuario1.setFoto_perfil(foto_perfil);
            usuario1.setEsporte_fav(esporte);
            usuario1.setHospedeiro(hospedeiro);
            usuario1.setQnt_hospedes(qnt_hospedes);
            manager.merge(endereco);
            manager.merge(usuario1);
            transaction.commit();
        }catch (Exception e) {
            e.printStackTrace();
            if (manager.isOpen()) {
                manager.getTransaction().rollback();
            }
        } finally {
            if (manager.isOpen()) {
                manager.close();
            }
        }
    }

    public void cadastraHospedagem (Usuario hospedeInformado, Usuario hospedeiroInformado, int qtdPraticamSurfInformado,
                                    int qtdViajantesInformado, Date dataInicial, Date dataFinal, String Mensagem){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Hospedagem hospedagem1 = new Hospedagem();
            System.out.println("Criou o objeto hospedagem");
            hospedagem1.setHospede(hospedeInformado);
            System.out.println("setou o hóspede");
            hospedagem1.setHospedeiro(hospedeiroInformado);
            System.out.println("setou o hospedeiro");
            hospedagem1.setPraticamSurf(qtdPraticamSurfInformado);
            System.out.println("setou a quantidade que praticam surf");
            hospedagem1.setViajantes(qtdViajantesInformado);
            System.out.println("setou a quantidade de viajantes");
            hospedagem1.setMensagem(Mensagem);
            System.out.println("setou a mensagem");
            hospedagem1.setDataInicial(dataInicial);
            System.out.println("setou a data inicial");
            hospedagem1.setDataFinal(dataFinal);
            System.out.println("setou a data final");
            hospedagem1.setRequisicao(false);
            System.out.println("setou a requisição");
            hospedagem1.setAvaliacaoHospedeiroxHospede(false);
            hospedagem1.setAvaliacaoHospedexHospedeiro(false);
            manager.merge(hospedagem1);
            System.out.println("fez o merge");
            transaction.commit();
            System.out.println("fez o commit");
        }catch (Exception e) {
            System.out.println("Deu erro!");
            e.printStackTrace();
            if (manager.isOpen()) {
                manager.getTransaction().rollback();
            }
        } finally {
            if (manager.isOpen()) {
                manager.close();
            }
        }
    }

    public Endereco buscarEnderecoPeloCep (Integer cep) {
        Endereco enderecoEncontrado;
        String jpql = "select endereco from Endereco endereco where endereco.cep= ?1";
        enderecoEncontrado = manager.createQuery(jpql, Endereco.class)
                .setParameter(1,cep)
                .getSingleResult();
        return enderecoEncontrado;
    }

    public void cadastroEndereco (Integer cep, String rua, String bairro, String cidade, String estado, String pais){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Endereco endereco1 = new Endereco();
            endereco1.setCep(cep);
            endereco1.setRua(rua);
            endereco1.setBairro(bairro);
            endereco1.setCidade(cidade);
            endereco1.setEstado(estado);
            endereco1.setPais(pais);
            manager.merge(endereco1);
            transaction.commit();
        }catch (Exception e) {
            e.printStackTrace();
            if (manager.isOpen()) {
                manager.getTransaction().rollback();
            }
        } finally {
            if (manager.isOpen()) {
                manager.close();
            }
        }
    }

    public List<AvaliacaoAmigos> buscaAvaliacaoAmigosPeloId (Integer id) {
        List<AvaliacaoAmigos> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoAmigos avaliacao where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoAmigos.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoHospedeiroxhospede> buscaAvaliacaoHospedeiroxHospedePeloId (Integer id) {
        List<AvaliacaoHospedeiroxhospede> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoHospedeiroxhospede avaliacao where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoHospedeiroxhospede.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoHospedexhospedeiro> buscaAvaliacaoHospedexHospedeiroPeloId (Integer id) {
        List<AvaliacaoHospedexhospedeiro> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoHospedexhospedeiro avaliacao where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoHospedexhospedeiro.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoOrganizadorxparticipante> buscaAvaliacaoOrganizadorxParticipantePeloId (Integer id) {
        List<AvaliacaoOrganizadorxparticipante> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoOrganizadorxparticipante avaliacao where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoOrganizadorxparticipante.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoParticipantexorganizador> buscaAvaliacaoParticipantexOrganizadorPeloId (Integer id) {
        List<AvaliacaoParticipantexorganizador> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoParticipantexorganizador avaliacao where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoParticipantexorganizador.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<Usuario> buscaUsuarioPorLocalidade (String pais, String cidade) {
        List<Usuario> usuarioList;
        String jpql = "select usuario from Usuario usuario" +
                " where usuario.endereco.pais = ?1 and usuario.endereco.cidade = ?2 and usuario.hospedeiro = ?3";
        usuarioList = manager.createQuery(jpql, Usuario.class)
                .setParameter(1, pais)
                .setParameter(2, cidade)
                .setParameter(3, true)
                .getResultList();
        return usuarioList;
    }

    public void setAvaliacaoAmigos (String descAvaliacao, Usuario avaliador, Usuario avaliado, Integer nota) {
        manager.getTransaction().begin();
        AvaliacaoAmigos avaliacao = new AvaliacaoAmigos();
        avaliacao.setAvaliado(avaliado);
        avaliacao.setAvaliador(avaliador);
        avaliacao.setDescricao(descAvaliacao);
        avaliacao.setPublicar(false);
        avaliacao.setNota(nota);
        manager.merge(avaliacao);
        manager.getTransaction().commit();
    }

    public void updateAvaliacao (Integer id_avaliacao) {
        manager.getTransaction().begin();
        String jpql = "update AvaliacaoAmigos avaliacao set avaliacao.publicar = 'true' where avaliacao.id = ?1";
        Query query = manager.createQuery(jpql).setParameter(1, id_avaliacao);
        query.executeUpdate();
        manager.getTransaction().commit();
    }

    public List<Hospedagem> buscarListReqHosp (Integer id) {
        List<Hospedagem> listUsuario;
        String jpql = "select hospedagem from Hospedagem hospedagem where hospedagem.requisicao = ?1" +
                " and hospedagem.hospedeiro.id = ?2";
        listUsuario = manager.createQuery(jpql, Hospedagem.class)
                .setParameter(1, false)
                .setParameter(2, id)
                .getResultList();
        return  listUsuario;
    }

    public void setSaidaEsporte (String descricao, Date horaInicial, Date horaFinal,
                                 List<Usuario> listParticipantes, double aluguelCarro, double gasolina, double valorHospedagem,
                                 Integer totalPart, String localSaida) {
        manager.getTransaction().begin();
        EventoEsportivo evento = new EventoEsportivo();
        evento.setTotalParticipantes(totalPart);
        evento.setHoraFinal(horaFinal);
        evento.setHoraIncial(horaInicial);
        evento.setDescricao(descricao);
        evento.setlocalSaida(localSaida);
        evento.setgasolina(gasolina);
        evento.setaluguelCarro(aluguelCarro);
        evento.setParticipantes(listParticipantes);
        evento.setvalorHospedagem(valorHospedagem);
        manager.merge(evento);
        manager.getTransaction().commit();
    }

    public List<Usuario> buscaPorEsporte (String esporte) {
        return manager.createQuery("select usuario from Usuario usuario " +
                "where usuario.esporte_fav = ?1 and usuario.hospedeiro = ?2", Usuario.class)
                .setParameter(1, esporte)
                .setParameter(2, true)
                .getResultList();
    }

    public void updateRequisicao (Integer id_hospedeiro, Integer id_hospede) {
        manager.getTransaction().begin();
        String jpql = "update Hospedagem hospedagem set hospedagem.requisicao = true " +
                "where hospedagem.hospede.id = ?1 and hospedagem.hospedeiro.id = ?2";
        Query query = manager.createQuery(jpql)
                .setParameter(1,id_hospede)
                .setParameter(2, id_hospedeiro);
        query.executeUpdate();
        manager.getTransaction().commit();
    }

    public List<Hospedagem> buscaHospedagemFeita (Integer id) {
        List<Hospedagem> listUsuario;
        String jpql = "select hospedagem from Hospedagem hospedagem where hospedagem.requisicao = ?1" +
                " and hospedagem.hospedeiro.id = ?2";
        listUsuario = manager.createQuery(jpql, Hospedagem.class)
                .setParameter(1, true)
                .setParameter(2, id)
                .getResultList();
        return  listUsuario;
    }

    public Hospedagem buscarHospedagemId (Integer id) {
        Hospedagem hospedagemEncontrada;
        String jpql = "select hospedagem from Hospedagem hospedagem where hospedagem.id= ?1";
        hospedagemEncontrada = manager.createQuery(jpql,Hospedagem.class)
                .setParameter(1,id)
                .getSingleResult();
        return hospedagemEncontrada;
    }

    public void insereAvaliacaoHospedeiroxHospede (Usuario avaliador, Usuario avaliado, String descricao,
                                                   Integer nota) {
        manager.getTransaction().begin();
        AvaliacaoHospedeiroxhospede avaliacaoHospedeiroxhospede = new AvaliacaoHospedeiroxhospede();
        avaliacaoHospedeiroxhospede.setAvaliado(avaliado);
        avaliacaoHospedeiroxhospede.setAvaliador(avaliador);
        avaliacaoHospedeiroxhospede.setDescricao(descricao);
        avaliacaoHospedeiroxhospede.setNota(nota);
        avaliacaoHospedeiroxhospede.setPublicar(true);
        manager.merge(avaliacaoHospedeiroxhospede);
        manager.getTransaction().commit();
    }


}
