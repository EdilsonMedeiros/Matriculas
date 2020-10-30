package br.com.matriculas.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class PeriodoLetivo {
	@Id
	@GeneratedValue
	private int id;
	private Date dataInicio;
	private Date dataFim;
	
	public PeriodoLetivo() {
		super();
	}

	public PeriodoLetivo(Date dataInicio, Date dataFim) {
		super();
		this.dataInicio = dataInicio;
		this.dataFim = dataFim;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Date getDataInicio() {
		return dataInicio;
	}

	public void setDataInicio(Date dataInicio) {
		this.dataInicio = dataInicio;
	}

	public Date getDataFim() {
		return dataFim;
	}

	public void setDataFim(Date dataFim) {
		this.dataFim = dataFim;
	}
	
}
