package br.com.matriculas.model;

public enum StatusMatricula {
	
	MATRICULADO("Matriculado"), 
	EXPULSO("Expulso"), 
	TRANSFERIDO("Transferido"), 
	PENDENTE("Pendente");
	
	private final String status;
	
	StatusMatricula(String status){
		this.status = status;
	}
	
	public String getStatus(){
		return status;
	}
}
