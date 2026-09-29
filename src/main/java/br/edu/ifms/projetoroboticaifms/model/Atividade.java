package br.edu.ifms.projetoroboticaifms.model;

import java.sql.Date;

public class Atividade {
	private Long id;
	private String titulo;
	private String tipo;
	private String descricao;
	private Date data_inicio;
	private Date data_fim;
	private String situacao;
	private Long coordenador_id;
	
	public Atividade(){}
	
	public Atividade(
			String titulo,
			String tipo, 
			String descricao, 
			Date data_inicio, 
			Date data_fim,
			String situacao,
			Long coordenador_id) 
	{
		this.titulo = titulo;
		this.tipo = tipo;
		this.descricao = descricao;
		this.data_inicio = data_inicio;
		this.data_fim =  data_fim;
		this.situacao = situacao;
		this.coordenador_id = coordenador_id;
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
		return this.data_inicio;
	}
	
	public Date setDataIncio(Date data_inicio) {
		return this.data_inicio = data_inicio;
	}
	
	public Date getDataFim() {
		return this.data_fim;
	}
	
	public Date setDataFim(Date data_fim) {
		return this.data_fim = data_fim;
	}
	
	public String getSituacao() {
		return this.situacao;
	}
	
	public String setSituacao(String situacao) {
		return this.situacao = situacao;
	}
	
	public Long getCoordenadorId() {
		return this.coordenador_id;
	}
	
	public Long setCoordenadorId(Long coordenador_id) {
		return this.coordenador_id = coordenador_id;
	}
}
