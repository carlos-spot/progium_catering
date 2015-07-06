package com.progium.catering.ejb;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the categoriasubasta database table.
 * 
 */
@Entity
@NamedQuery(name="Categoriasubasta.findAll", query="SELECT c FROM Categoriasubasta c")
public class Categoriasubasta implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int idCategoriaSubasta;

	//bi-directional many-to-one association to Subasta
	@ManyToOne
	@JoinColumn(name="subastaId")
	private Subasta subasta;

	//bi-directional many-to-one association to Categoria
	@ManyToOne
	@JoinColumn(name="categoriaId")
	private Categoria categoria;

	public Categoriasubasta() {
	}

	public int getIdCategoriaSubasta() {
		return this.idCategoriaSubasta;
	}

	public void setIdCategoriaSubasta(int idCategoriaSubasta) {
		this.idCategoriaSubasta = idCategoriaSubasta;
	}

	public Subasta getSubasta() {
		return this.subasta;
	}

	public void setSubasta(Subasta subasta) {
		this.subasta = subasta;
	}

	public Categoria getCategoria() {
		return this.categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

}