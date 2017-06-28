package br.com.uff.model;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Hospedagem {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    @OneToOne
    private Usuario hospedeiro;

    @OneToOne
    private Usuario hospede;

    private Integer qtdViajantes;

    private Integer qtdPraticamSurf;

    @Temporal(TemporalType.DATE)
    private Date dataInicial;

    @Temporal(TemporalType.DATE)
    private Date dataFinal;

    public Integer getQtdViajantes() {
        return qtdViajantes;
    }

    public void setQtdViajantes(Integer qtdViajantes) {
        this.qtdViajantes = qtdViajantes;
    }

    public Integer getQtdPraticamSurf() {
        return qtdPraticamSurf;
    }

    public void setQtdPraticamSurf(Integer qtdPraticamSurf) {
        this.qtdPraticamSurf = qtdPraticamSurf;
    }

    public boolean isRequisicao() {
        return requisicao;
    }

    public void setRequisicao(boolean requisicao) {
        this.requisicao = requisicao;
    }

    private boolean requisicao = false;

    public Hospedagem() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Usuario getHospedeiro() {
        return hospedeiro;
    }

    public void setHospedeiro(Usuario hospedeiro) {
        this.hospedeiro = hospedeiro;
    }

    public Usuario getHospede() {
        return hospede;
    }

    public void setHospede(Usuario hospede) {
        this.hospede = hospede;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
    }

    public Integer getViajantes() {
        return qtdViajantes;
    }

    public void setViajantes(Integer qtdViajantes) {
        this.qtdViajantes = qtdViajantes;
    }

    public Integer getPraticamSurf() {
        return qtdPraticamSurf;
    }

    public void setPraticamSurf(Integer qtdPraticamSurf) {
        this.qtdPraticamSurf = qtdPraticamSurf;
    }


}



