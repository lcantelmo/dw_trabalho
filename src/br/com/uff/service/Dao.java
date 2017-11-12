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

    public Usuario buscarUsuarioPelaMatricula (String matricula) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario" +" where usuario.matricula= ?1";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1,matricula)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public Usuario buscarUsuarioPeloId (Integer id) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario where usuario.id= ?1";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1,id)
                .getSingleResult();
        return usuarioEncontrado;
    }

    public Usuario buscarUsuarioPelaMatriculaESenha (String matricula, String senha) {
        Usuario usuarioEncontrado;
        String jpql = "select usuario from Usuario usuario where usuario.matricula= ?1 and usuario.senha= ?2";
        usuarioEncontrado = manager.createQuery(jpql,Usuario.class)
                .setParameter(1, matricula)
                .setParameter(2, senha)
                .getSingleResult();
        return usuarioEncontrado;
    }

    /*private String nome;
    private String matricula;
    private String cpf;
    private String senha;*/

    public void cadastraUsuario (String nome, String matricula, String cpf, String senha){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Usuario usuario1 = new Usuario();
            usuario1.setNome(nome);
            usuario1.setMatricula(matricula);
            usuario1.setCpf(cpf);
            usuario1.setSenha(senha);

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

    public void cadastraAluno (String nome, String matricula, String cpf, String senha){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Aluno aluno1 = new Aluno();
            aluno1.setNome(nome);
            aluno1.setMatricula(matricula);
            aluno1.setCpf(cpf);
            aluno1.setSenha(senha);

            manager.merge(aluno1);
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

    public void cadastraProfessor (String nome, String matricula, String cpf, String senha){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Professor professor1 = new Professor();
            professor1.setNome(nome);
            professor1.setMatricula(matricula);
            professor1.setCpf(cpf);
            professor1.setSenha(senha);

            manager.merge(professor1);
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

    public void cadastraAdministrador (String nome, String matricula, String cpf, String senha){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Administrador administrador1 = new Administrador();
            administrador1.setNome(nome);
            administrador1.setMatricula(matricula);
            administrador1.setCpf(cpf);
            administrador1.setSenha(senha);

            manager.merge(administrador1);
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
    /*private String Titulo;
    private String Tema;
    @ManyToMany
    private List<Aluno> alunos = new ArrayList<Aluno>();
    @OneToOne
    private Professor Orientador;
    private float Nota_TCC1;
    private float Nota_TCC2;
    private Date RealizadoEm;
    private String Local;
    private String VersoesParciais;
    private int VersaoFinal;*/

    public void cadastraProjeto (String titulo, String tema, List<Aluno> alunos, Professor orientador){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Projeto projeto1 = new Projeto();
            projeto1.setTitulo(titulo);
            projeto1.setTema(tema);
            projeto1.setAlunos(alunos);
            projeto1.setOrientador(orientador);

            manager.merge(projeto1);
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

    public void cadastraProjeto (String titulo, String tema, Aluno aluno, Professor orientador){
        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Projeto projeto1 = new Projeto();
            projeto1.setTitulo(titulo);
            projeto1.setTema(tema);
            projeto1.addAluno(aluno);
            projeto1.setOrientador(orientador);

            manager.merge(projeto1);
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

   public List<Projeto> buscaProjetosPeloIdOrientador (Integer id) {
        List<Projeto> projetoEncontrado;
        String jpql = "select projeto from Projeto projeto where projeto.Orientador.id= ?1";
        projetoEncontrado = manager.createQuery(jpql,Projeto.class)
                .setParameter(1, id)
                .getResultList();
        return projetoEncontrado;
    }

    //Procurar alunos de projetos
    /*
    public List<Projeto> buscaProjetosPeloIdAluno (Integer id) {
        List<Projeto> projetoEncontrado;
        String jpql = "select projeto from Projeto projeto where projeto.alunos= ?1";
        projetoEncontrado = manager.createQuery(jpql,Projeto.class)
                .setParameter(1, id)
                .getResultList();
        return projetoEncontrado;
    }
    */
}
