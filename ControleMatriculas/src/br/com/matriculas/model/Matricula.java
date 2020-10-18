package br.com.matriculas.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

@Entity
public class Matricula {
	@Enumerated
	private StatusMatricula statusmatricula;
	private Date dataMatricula;
	@ManyToOne
	private Aluno Aluno;
	@ManyToOne
	private Funcionario funcionario;
	@ManyToOne
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
