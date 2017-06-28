package br.com.uff.service;

import br.com.uff.model.*;
import br.com.uff.util.JPAUtil;

import javax.persistence.EntityManager;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;

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
        String jpql = "select usuario from Usuario usuario" +" where usuario.id= ?1";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1,id)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public Usuario buscarUsuarioPeloEmailESenha (String email, String senha) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario" +" where usuario.email= ?1 and usuario.senha= ?2";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1, email)
                .setParameter(2, senha)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public List<AvaliacaoAmigos> buscaAvaliacaoAmigosPeloId (Integer id) {
        List<AvaliacaoAmigos> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoAmigos avaliacao" +" where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoAmigos.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoHospedeiroxhospede> buscaAvaliacaoHospedeiroxHospedePeloId (Integer id) {
        List<AvaliacaoHospedeiroxhospede> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoHospedeiroxhospede avaliacao" +" where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoHospedeiroxhospede.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoHospedexhospedeiro> buscaAvaliacaoHospedexHospedeiroPeloId (Integer id) {
        List<AvaliacaoHospedexhospedeiro> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoHospedexhospedeiro avaliacao" +" where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoHospedexhospedeiro.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoOrganizadorxparticipante> buscaAvaliacaoOrganizadorxParticipantePeloId (Integer id) {
        List<AvaliacaoOrganizadorxparticipante> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoOrganizadorxparticipante avaliacao" +" where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoOrganizadorxparticipante.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<AvaliacaoParticipantexorganizador> buscaAvaliacaoParticipantexOrganizadorPeloId (Integer id) {
        List<AvaliacaoParticipantexorganizador> avaliacaoEncontrada;
        String jpql = "select avaliacao from AvaliacaoParticipantexorganizador avaliacao" +" where avaliacao.avaliado.id= ?1";
        avaliacaoEncontrada = manager.createQuery(jpql,AvaliacaoParticipantexorganizador.class)
                .setParameter(1, id)
                .getResultList();
        return avaliacaoEncontrada;
    }

    public List<Usuario> buscaUsuarioPorLocalidade (String cidade, String pais) {
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

    public  void updateAvaliacao (Integer id_avaliacao) {
        manager.getTransaction().begin();
        String jpql = "update AvaliacaoAmigos avaliacao set avaliacao.publicar = 'true' where avaliacao.id = ?1";
        Query query = manager.createQuery(jpql);
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

}
