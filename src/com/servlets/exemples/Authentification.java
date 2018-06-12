package com.servlets.exemples;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Client;


@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentification() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Récupération identifiant et mot de passe entrés
		String identifiant = request.getParameter("login");
		String motDePasse = request.getParameter("password");
		
		List<String> list = new ArrayList<String>();
		list.add("TOTO le message !!");

		// Accès base de données
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/J2EE", "root", "");
			Statement st = conn.createStatement();
			String requete = "SELECT * FROM client WHERE LOGIN = '" + identifiant + "' AND PASSWORD ='" + motDePasse + "'";
			ResultSet rec = st.executeQuery(requete);
			rec.last();
			// on récupère le numéro de la ligne
			int nbLignes = rec.getRow();
			// on repace le curseur avant la première ligne
			rec.beforeFirst();
			// On a trouvé un client
			if (nbLignes > 0) {
				Client client = new Client();
				while (rec.next()) {
					client.setId(rec.getLong("ID_CLIENT"));
					client.setLogin(rec.getString("LOGIN"));
					client.setNom(rec.getString("NOM"));
					client.setPrenom(rec.getString("PRENOM"));
					client.setMail(rec.getString("MAIL"));
					
					// Chargement de la requete avec un objet client
					request.setAttribute("client", client);
					request.setAttribute("message", list);
					
					// Appel du request dispatcher pour envoi vers la page
					// afficheClient
					RequestDispatcher rd = request.getRequestDispatcher("connecteClient");
					// Redirection
					rd.forward(request, response);
				}
			} else {
				// Aucun client ne correspond à ce login + mot de passe
				response.sendRedirect("erreurClient");
			}
		} catch (Exception e) {
			System.out.println("ERREUR BDD " + e.toString());
		}

	}

}
