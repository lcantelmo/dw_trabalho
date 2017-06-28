package br.com.uff.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
public class EventoEsportivo {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    @ManyToOne
    private Usuario organizador;

    @ManyToMany
    private List<Usuario> participantes = new ArrayList<Usuario>();

    private String descricao;

    @Temporal(TemporalType.DATE)
    private Date dataInicial;

    @Temporal(TemporalType.TIME)
    private Date horaIncial;

    @Temporal(TemporalType.TIME)
    private Date horaFinal;
    private Integer totalParticipantes;

    private String localSaida;
    private Integer duracao;
    private Double aluguelCarro;
    private Double gasolina;
    private Double valorHospedagem;


    public EventoEsportivo() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Usuario getOrganizador() {
        return organizador;
    }

    public void setOrganizador(Usuario organizador) {
        this.organizador = organizador;
    }

    public List<Usuario> getParticipantes() {
        return this.participantes;
    }

    public void setParticipante(Usuario participantes) {
        this.participantes.add(participantes);
    }

    public void setParticipantes(List<Usuario> listaUsuarios){
        int i;
        for(i=0; i<listaUsuarios.size();i++){
            this.participantes.add(listaUsuarios.get(i));
        }
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Date getDataInicial() {
        return dataInicial;
    }

    public void setDataInicial(Date dataInicial) {
        this.dataInicial = dataInicial;
    }

    public Date getHoraIncial() {
        return horaIncial;
    }

    public void setHoraIncial(Date horaIncial) {
        this.horaIncial = horaIncial;
    }

    public Date getHoraFinal() {
        return horaFinal;
    }

    public void setHoraFinal(Date horaFinal) {
        this.horaFinal = horaFinal;
    }

    public Integer getTotalParticipantes() {
        return totalParticipantes;
    }

    public void setTotalParticipantes(Integer totalParticipantes) {
        this.totalParticipantes = totalParticipantes;
    }

    public String getlocalSaida() {
        return localSaida;
    }

    public void setlocalSaida(String localSaida) {
        this.localSaida = localSaida;
    }

    public Integer getduracao() {
        return duracao;
    }

    public void setduracao(Integer duracao) {
        this.duracao = duracao;
    }

    public Double getaluguelCarro() {
        return aluguelCarro;
    }

    public void setaluguelCarro(Double aluguelCarro) {
        this.aluguelCarro = aluguelCarro;
    }

    public Double getgasolina() {
        return gasolina;
    }

    public void setgasolina(Double gasolina) {
        this.gasolina = gasolina;
    }

    public Double getvalorHospedagem() {
        return valorHospedagem;
    }

    public void setvalorHospedagem(Double valorHospedagem) {
        this.valorHospedagem = valorHospedagem;
    }

    // localSaida, duracao, aluguelCarro, gasolina, valorHospedagem

}

