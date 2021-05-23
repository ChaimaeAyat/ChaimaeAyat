package com.util;

public class Livre {
	String Nom_livre,Auteur;
	int Price,Id_categorie;
	public String getNom_livre() {
		return Nom_livre;
	}
	public void setNom_livre(String nom_livre) {
		Nom_livre = nom_livre;
	}
	public String getAuteur() {
		return Auteur;
	}
	public void setAuteur(String auteur) {
		Auteur = auteur;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int string) {
		Price = string;
	}
	public int getId_categorie() {
		return Id_categorie;
	}
	public void setId_categorie(int id_categorie) {
		Id_categorie = id_categorie;
	}
	@Override
	public String toString() {
		return "Livre [Nom_livre=" + Nom_livre + ", Auteur=" + Auteur + ", Price=" + Price + ", Id_categorie="
				+ Id_categorie + "]";
	}
	

}
