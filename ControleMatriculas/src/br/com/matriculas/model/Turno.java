package br.com.matriculas.model;

public enum Turno {
	
	MATUTINO("matutino"),
	VESPERTINO("vespertino"),
	NOTURNO("noturno");
	
	private final String valor;
	
	Turno(String valor){
		this.valor = valor;
	}
	
	public String getStatus(){
		return valor;
	}
}
