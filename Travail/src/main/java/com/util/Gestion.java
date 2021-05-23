package com.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Gestion {
public int Inscription(String Nom, String prenom, String log,String pass){
		DBInteraction.connect();
		String sql="insert into etudiant (Nom,prenom,log,pass) values ('"+Nom+"','"+prenom+"','"+log+"','"+pass+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		
		return nb;
		}
	public int Inscription(Etudiant u){
		DBInteraction.connect();
		String sql="insert into etudiant (idEtudiant,Nom,prenom,log,pass) values ('"+u.getIdEtudiant()+"','"+u.getNom()+"','"+u.getPrenom()+"','"+u.getLog()+"','"+u.getPass()+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		
		return nb;
		}
	public int deleteEtudiant(int id) {
		DBInteraction.connect();
		String sql="delete from etudiant where idEtudiant="+id;
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		return nb;
		
	}
	public Etudiant findEtudiantById(int id) {
		Etudiant u=null;
		DBInteraction.connect();
		ResultSet res= DBInteraction.select("select * from etudiant where idEtudiant="+id);
		DBInteraction.disconnect();
		try {
			if(res.next())
			{
				u=new Etudiant();
				u.setIdEtudiant(res.getInt(1));
				u.setNom(res.getString(2));
				u.setPrenom(res.getString(3));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
		
	}
	public int AddLivre(String Nom,String Auteur, int price , int Id) {
		DBInteraction.connect();
		int nb=DBInteraction.Maj("insert into livre (Nom_livre,Auteur,Price,Id_categorie) values ('"+Nom+"','"+Auteur+"','"+price+"','"+Id+"')");
		DBInteraction.disconnect();
		return nb;
		
	}
	public int AddLivre(Livre l) {
		DBInteraction.connect();
		int nb=DBInteraction.Maj("insert into livre (Nom_livre,Auteur,Price,Id_categorie) values ('"+l.getNom_livre()+"','"+l.getAuteur()+"','"+l.getPrice()+"','"+l.getId_categorie()+"')");
		DBInteraction.disconnect();
		return nb;
		
	}
	public List<Livre> findLivreBycategorie(int id) {
		Livre u=null;
		List<Livre> liste = new ArrayList<Livre>();
		DBInteraction.connect();
		ResultSet res= DBInteraction.select("select * from livre where Id_categorie="+id);
		
		try {
			while(res.next())
			{
				u=new Livre();
				u.setNom_livre(res.getNString(1));
				u.setAuteur(res.getNString(2));
				u.setPrice(res.getInt(3));
				u.setId_categorie(res.getInt(4));
				liste.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return liste;	
	}
	public int AddCategorie(String name) {
		DBInteraction.connect();
		String sql="insert into categorie (nom_categorie) values ('"+name+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		
		return nb;
		
		
	}
	public int AddCategorie(Categorie C) {
		DBInteraction.connect();
		String sql="insert into etudiant (Id_categorie,nom_categorie) values ('"+C.getId_categorie()+"','"+C.getNom_categorie()+"')";
		int nb=DBInteraction.Maj(sql);
		DBInteraction.disconnect();
		
		return nb;
		
		
	}
	public List<Livre> All(){
		List<Livre> us=new ArrayList<Livre>();
		DBInteraction.connect();
		String sql="select * from livre";
		ResultSet rs=DBInteraction.select(sql);
	
		
		try {
			while(rs.next())
			{
				Livre u= new Livre();
				u.setNom_livre(rs.getNString(1));
				u.setAuteur(rs.getNString(2));
				u.setPrice(rs.getInt(3));
				u.setId_categorie(rs.getInt(4));
				us.add(u);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return us;
	}
	public List<Categorie> AllCat(){
		List<Categorie> us=new ArrayList<Categorie>();
		DBInteraction.connect();
		String sql="select * from categorie";
		ResultSet rs=DBInteraction.select(sql);
		try {
			while(rs.next())
			{
				Categorie u= new Categorie();
				u.setId_categorie(rs.getInt(1));
				u.setNom_categorie(rs.getNString(2));
				us.add(u);
			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return us;
	}
	public Etudiant authentification(String log, String pass) {
		Etudiant u=null;
		DBInteraction.connect();
		ResultSet res= DBInteraction.select("select * from etudiant where log='"+log+"' and pass='"+pass+"'");
		try {
			if(res.next())
			{
				u=new Etudiant();
				u.setNom(res.getString(2));
				u.setPrenom(res.getString(3));
				u.setLog(res.getNString(3));
				u.setPass(res.getNString(4));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBInteraction.disconnect();
		return u;
		
	}
        	
}
