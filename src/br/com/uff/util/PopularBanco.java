package br.com.uff.util;

import br.com.uff.model.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class PopularBanco {

    public static void main(String[] args) throws ParseException {

        /*
           Abrindo conexão com o banco. Chamamos o EntityManager que vai cuidar das transações com o banco.
           Lembrando, criar o BANCO DE DADOS chamado "sistema_aeroporto_dw"
        */
        EntityManager manager = new JPAUtil().getEntityManager();

       /*
           Estado Managed: Dados estão sincronizados com o banco. Esse é o objetivo.
           Estado Transient: Os dados ainda não estão no banco
           Estado Detached: Já existem dados no banco, mas os dados da entidade estão desatualizados. Para resolver, precisamos fazer um Merge.
        */

        try {
            EntityTransaction transaction = manager.getTransaction();

            transaction.begin();

            Aluno aluno1 = new Aluno();
            aluno1.setNome("BERNARDO DE FARIAS");
            aluno1.setMatricula("213083123");
            aluno1.setCpf("12345678910");
            aluno1.setSenha("123456");
            manager.merge(aluno1);

            Aluno aluno2 = new Aluno();
            aluno2.setNome("LEONARDO CANTELMO");
            aluno2.setMatricula("213083124");
            aluno2.setCpf("12345678911");
            aluno2.setSenha("123456");
            manager.merge(aluno2);

            Aluno aluno3 = new Aluno();
            aluno3.setNome("LUIZ FELIPE");
            aluno3.setMatricula("213083125");
            aluno3.setCpf("12345678912");
            aluno3.setSenha("123456");
            manager.merge(aluno3);

            Aluno aluno4 = new Aluno();
            aluno4.setNome("THIAGO OLIVEIRA");
            aluno4.setMatricula("213083126");
            aluno4.setCpf("12345678913");
            aluno4.setSenha("123456");
            manager.merge(aluno4);

            Professor professor1 = new Professor();
            professor1.setNome("JOSÉ VITERBO FILHO");
            professor1.setMatricula("654321");
            professor1.setCpf("12345678111");
            professor1.setSenha("123456");
            manager.merge(professor1);

            Professor professor2 = new Professor();
            professor2.setNome("VICTOR ALMEIDA");
            professor2.setMatricula("654322");
            professor2.setCpf("12345678112");
            professor2.setSenha("123456");
            manager.merge(professor2);

            Administrador administrador1 = new Administrador();
            administrador1.setNome("LEONARDO CRUZ");
            administrador1.setMatricula("654323");
            administrador1.setCpf("12345678113");
            administrador1.setSenha("123456");
            manager.merge(administrador1);

            Projeto projeto1 = new Projeto();
            projeto1.setTitulo("Java 8 prático");
            projeto1.setTema("Java 8 prático e suas implicações");
            projeto1.addAluno(aluno1);
            projeto1.setOrientador(professor1);
            projeto1.setNota_TCC1(0);
            projeto1.setNota_TCC2(0);
            projeto1.setRealizadoEm(retornaDataFormatada("2017-10-01"));
            projeto1.setLocal("Sala 302 - IC");
            projeto1.setVersaoFinal(5);

            transaction.commit();

        } catch (Exception e) {
            e.printStackTrace();
            if (manager.isOpen()) {
                manager.getTransaction().rollback();
            }
        } finally {
            if (manager.isOpen()) {
                manager.close();
            }
        }
        System.exit(0);
    }

    //Método para converter uma data em String para Date
    public static Date retornaDataFormatada(String stringData) throws ParseException {

        SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
        java.sql.Date dataSql = new java.sql.Date(myFormat.parse(stringData).getTime());

        return (dataSql);
    }

    public static Date retornaHoraFormatada(String stringHora) throws ParseException {

        SimpleDateFormat myFormat = new SimpleDateFormat("HH:mm");
        java.sql.Date dataSql = new java.sql.Date(myFormat.parse(stringHora).getTime());

        return (dataSql);
    }
}
