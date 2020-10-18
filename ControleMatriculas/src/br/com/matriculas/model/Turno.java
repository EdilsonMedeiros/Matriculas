package br.com.matriculas.model;

public enum Turno {
	
	MATUTINO("Matutino"),
	VESPERTINO("Vespertino"),
	NOTURNO("Noturno");
	
	private final String valor;
	
	Turno(String valor){
		this.valor = valor;
	}
	
	public String getStatus(){
		return valor;
	}
}
