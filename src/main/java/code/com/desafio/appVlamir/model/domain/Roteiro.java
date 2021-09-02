package code.com.desafio.appVlamir.model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Roteiro {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nomeRoteiro;
	private int qtdTipoRoteiro;
	private String regiaoLocal;
	private boolean possuiEstacionamento;
	private boolean fazEntrega;
	
	public Roteiro() {
		this.regiaoLocal = "Niterói";
		this.possuiEstacionamento = true;
		this.fazEntrega = true;
	}
	
	public Roteiro(int qtdTipoRoteiro, String nomeRoteiro, String regiaoLocal) {
		this();
		this.qtdTipoRoteiro = qtdTipoRoteiro;
		this.nomeRoteiro = nomeRoteiro;
		this.regiaoLocal = regiaoLocal;
	}
	
	@Override
	public String toString() {
		return "São " + qtdTipoRoteiro + " " + nomeRoteiro + " na cidade de(a)(o) " + 
	regiaoLocal;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	
	public String getNomeRoteiro() {
		return nomeRoteiro;
	}
	public void setNomeRoteiro(String nomeRoteiro) {
		this.nomeRoteiro = nomeRoteiro;
	}
	public int getQtdTipoRoteiro() {
		return qtdTipoRoteiro;
	}
	public void setQtdTipoRoteiro(int qtdTipoRoteiro) {
		this.qtdTipoRoteiro = qtdTipoRoteiro;
	}
	public String getRegiaoLocal() {
		return regiaoLocal;
	}
	public void setRegiaoLocal(String regiaoLocal) {
		this.regiaoLocal = regiaoLocal;
	}
	public boolean isPossuiEstacionamento() {
		return possuiEstacionamento;
	}
	public void setPossuiEstacionamento(boolean possuiEstacionamento) {
		this.possuiEstacionamento = possuiEstacionamento;
	}
	public boolean isFazEntrega() {
		return fazEntrega;
	}
	public void setFazEntrega(boolean fazEntrega) {
		this.fazEntrega = fazEntrega;
	}
	
	

}
