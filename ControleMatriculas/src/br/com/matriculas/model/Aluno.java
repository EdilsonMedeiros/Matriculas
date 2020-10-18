package br.com.matriculas.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Aluno extends Pessoa{
	@ManyToOne
	private Responsavel responsavel;

	public Aluno() {
		super();
	}

	public Aluno(Responsavel responsavel) {
		super();
		this.responsavel = responsavel;
	}

	public Responsavel getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Responsavel responsavel) {
		this.responsavel = responsavel;
	}
		
}
