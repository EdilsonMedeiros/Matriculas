package br.com.matriculas.model;

import javax.persistence.Entity;

@Entity
public class Funcionario extends Pessoa{
	private String cargo;
	private String ctps;
	private String titulacao;
	
	public Funcionario() {
		super();
	}

	public Funcionario(String cargo, String ctps, String titulacao) {
		super();
		this.cargo = cargo;
		this.ctps = ctps;
		this.titulacao = titulacao;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getCtps() {
		return ctps;
	}

	public void setCtps(String ctps) {
		this.ctps = ctps;
	}

	public String getTitulacao() {
		return titulacao;
	}

	public void setTitulacao(String titulacao) {
		this.titulacao = titulacao;
	}
	
}
