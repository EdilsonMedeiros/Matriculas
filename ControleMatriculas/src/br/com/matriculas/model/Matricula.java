package br.com.matriculas.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Matricula {
	@Id
	@GeneratedValue
	private int id;
	@Enumerated(EnumType.STRING)
	private StatusMatricula statusmatricula;
	private Date dataMatricula;
	@ManyToOne(cascade = CascadeType.ALL )
	private Aluno Aluno;
	@ManyToOne(cascade = CascadeType.ALL )
	private Funcionario funcionario;
	@ManyToOne(cascade = CascadeType.ALL )
	private Turma turma;
	
	public Matricula() {
		super();
	}

	public Matricula(StatusMatricula statusmatricula, Date dataMatricula, br.com.matriculas.model.Aluno aluno,
			Funcionario funcionario, Turma turma) {
		super();
		this.statusmatricula = statusmatricula;
		this.dataMatricula = dataMatricula;
		Aluno = aluno;
		this.funcionario = funcionario;
		this.turma = turma;
	}
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public StatusMatricula getStatusmatricula() {
		return statusmatricula;
	}

	public void setStatusmatricula(StatusMatricula statusmatricula) {
		this.statusmatricula = statusmatricula;
	}

	public Date getDataMatricula() {
		return dataMatricula;
	}

	public void setDataMatricula(Date dataMatricula) {
		this.dataMatricula = dataMatricula;
	}

	public Aluno getAluno() {
		return Aluno;
	}

	public void setAluno(Aluno aluno) {
		Aluno = aluno;
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}
	
	
}
