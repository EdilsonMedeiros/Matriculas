package br.com.matriculas.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Turma {
	@Id
	@GeneratedValue
	private int id;
	private String nome;
	private int qtdVagas;
	private int sala;
	@Enumerated(EnumType.STRING)
	private Turno turno;
	@ManyToOne(cascade = CascadeType.ALL )
	private PeriodoLetivo periodoLetivo;
	@ManyToOne(cascade = CascadeType.ALL )
	private Serie serie;
	
	public Turma() {
		super();
	}

	public Turma(int qtdVagas, String nome, int sala, Turno turno, PeriodoLetivo periodoLetivo, Serie serie) {
		super();
		this.qtdVagas = qtdVagas;
		this.sala = sala;
		this.turno = turno;
		this.periodoLetivo = periodoLetivo;
		this.serie = serie;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getQtdVagas() {
		return qtdVagas;
	}

	public void setQtdVagas(int qtdVagas) {
		this.qtdVagas = qtdVagas;
	}

	public int getSala() {
		return sala;
	}

	public void setSala(int sala) {
		this.sala = sala;
	}

	public Turno getTurno() {
		return turno;
	}

	public void setTurno(Turno turno) {
		this.turno = turno;
	}

	public PeriodoLetivo getPeriodoLetivo() {
		return periodoLetivo;
	}

	public void setPeriodoLetivo(PeriodoLetivo periodoLetivo) {
		this.periodoLetivo = periodoLetivo;
	}

	public Serie getSerie() {
		return serie;
	}

	public void setSerie(Serie serie) {
		this.serie = serie;
	}
	
	
}
