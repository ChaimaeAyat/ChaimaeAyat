package com.util;

public class Categorie {
	int Id_categorie;
	String nom_categorie;
	public int getId_categorie() {
		return Id_categorie;
	}
	public void setId_categorie(int id_categorie) {
		Id_categorie = id_categorie;
	}
	public String getNom_categorie() {
		return nom_categorie;
	}
	public void setNom_categorie(String nom_categorie) {
		this.nom_categorie = nom_categorie;
	}
	@Override
	public String toString() {
		return "Categorie [Id_categorie=" + Id_categorie + ", nom_categorie=" + nom_categorie + "]";
	}
	

}
