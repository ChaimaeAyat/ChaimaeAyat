package Controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.Gestion;

/**
 * Servlet implementation class Ajouterlivre
 */
@WebServlet("/Ajouterlivre")
public class Ajouterlivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Gestion gs;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajouterlivre() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		gs=new Gestion();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom=request.getParameter("nom");
		String auteur=request.getParameter("auteur");
		int price=Integer.parseInt(request.getParameter("price"));
		int id=Integer.parseInt(request.getParameter("id"));
		 gs.AddLivre(nom, auteur, price, id);
		 response.sendRedirect("accueil.jsp");
	}

}
