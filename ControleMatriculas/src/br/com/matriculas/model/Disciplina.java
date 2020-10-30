package br.com.matriculas.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Disciplina {
	@Id
	@GeneratedValue
	private int id;
	private String nome;
	private int cargaHoraria;
	private String ementa;
	@ManyToOne(cascade = CascadeType.ALL )
	private Professor professor;
	@ManyToOne(cascade = CascadeType.ALL )
	private Serie serie;
	
	public Disciplina() {
		super();
	}

	public Disciplina(String nome, int cargaHoraria, String ementa, Professor professor, Serie serie) {
		super();
		this.nome = nome;
		this.cargaHoraria = cargaHoraria;
		this.ementa = ementa;
		this.professor = professor;
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

	public int getCargaHoraria() {
		return cargaHoraria;
	}

	public void setCargaHoraria(int cargaHoraria) {
		this.cargaHoraria = cargaHoraria;
	}

	public String getEmenta() {
		return ementa;
	}

	public void setEmenta(String ementa) {
		this.ementa = ementa;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}

	public Serie getSerie() {
		return serie;
	}

	public void setSerie(Serie serie) {
		this.serie = serie;
	}

}
