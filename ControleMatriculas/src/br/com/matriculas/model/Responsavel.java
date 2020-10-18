package br.com.matriculas.model;

import javax.persistence.Entity;

@Entity
public class Responsavel extends Pessoa{
	 private String parentesco;

	public Responsavel() {
		super();
	}

	public Responsavel(String parentesco) {
		super();
		this.parentesco = parentesco;
	}

	public String getParentesco() {
		return parentesco;
	}

	public void setParentesco(String parentesco) {
		this.parentesco = parentesco;
	}
	 
	 

}
