package br.com.matriculas.model;

import javax.persistence.Entity;

@Entity
public class Professor extends Funcionario{
	private String areaFormacao;

	public Professor() {
		super();
	}

	public Professor(String areaFormacao) {
		super();
		this.areaFormacao = areaFormacao;
	}

	public String getAreaFormacao() {
		return areaFormacao;
	}

	public void setAreaFormacao(String areaFormacao) {
		this.areaFormacao = areaFormacao;
	}
	
	
}
