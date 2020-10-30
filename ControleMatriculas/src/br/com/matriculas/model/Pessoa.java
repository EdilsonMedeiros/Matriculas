package br.com.matriculas.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class Pessoa {
	@Id
	@GeneratedValue
	private int id;
	private String nome;
	private String cpf;
	private String rg;
	private String sexo;
	private Date dataNasc;
	private String email;
	private String telefone1;
	private String telefone2;
	@ManyToOne(cascade = CascadeType.ALL )
	private Endereco endereco;
	
	public Pessoa() {
		super();
	}

	public Pessoa(String nome, String cpf, String rg, String sexo, Date dataNasc, String email, String telefone1,
			String telefone2, Endereco endereco) {
		super();
		this.nome = nome;
		this.cpf = cpf;
		this.rg = rg;
		this.sexo = sexo;
		this.dataNasc = dataNasc;
		this.email = email;
		this.telefone1 = telefone1;
		this.telefone2 = telefone2;
		this.endereco = endereco;
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

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public Date getDataNasc() {
		return dataNasc;
	}

	public void setDataNasc(Date dataNasc) {
		this.dataNasc = dataNasc;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone1() {
		return telefone1;
	}

	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}

	public String getTelefone2() {
		return telefone2;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	

}
