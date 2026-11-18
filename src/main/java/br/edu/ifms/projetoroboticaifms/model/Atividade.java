package br.edu.ifms.projetoroboticaifms.model;

import java.sql.Date;

public class Atividade {
	private Long id;
	private String titulo;
	private String tipo;
	private String descricao;
	private Date dataInicio;
	private Date dataFim;
	private String situacao;
	private Long coordenadorId;
	
	public Atividade(){}
	
	public Atividade(
			String titulo,
			String tipo, 
			String descricao, 
			Date dataInicio, 
			Date dataFim,
			String situacao,
			Long coordenadorId) 
	{
		this.titulo = titulo;
		this.tipo = tipo;
		this.descricao = descricao;
		this.dataInicio = dataInicio;
		this.dataFim =  dataFim;
		this.situacao = situacao;
		this.coordenadorId = coordenadorId;
	}
	
	public Long getId() {
		return this.id;
	}
	
	public Long setId(Long id) {
		return this.id = id;
	}
	
	public String getTitulo() {
		return this.titulo;
	}
	
	public String setTitulo(String titulo) {
		return this.titulo = titulo;
	}
	
	public String getTipo() {
		return this.tipo;
	}
	
	public String setTipo(String tipo) {
		return this.tipo = tipo;
	}
	
	public String getDescricao() {
		return this.descricao;
	}
	
	public String setDescricao(String descricao) {
		return this.descricao = descricao;
	}
	
	public Date getDataInicio() {
		return this.dataInicio;
	}
	
	public Date setDataInicio(Date dataInicio) {
		return this.dataInicio = dataInicio;
	}
	
	public Date getDataFim() {
		return this.dataFim;
	}
	
	public Date setDataFim(Date dataFim) {
		return this.dataFim = dataFim;
	}
	
	public String getSituacao() {
		return this.situacao;
	}
	
	public String setSituacao(String situacao) {
		return this.situacao = situacao;
	}
	
	public Long getCoordenadorId() {
		return this.coordenadorId;
	}
	
	public Long setCoordenadorId(Long coordenadorId) {
		return this.coordenadorId = coordenadorId;
	}
}
