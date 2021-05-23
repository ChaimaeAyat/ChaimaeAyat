package Controller;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.Etudiant;
import com.util.Gestion;

/**
 * Servlet implementation class Authentification
 */
@WebServlet("/Authentification")
public class Authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private Gestion ges;
       static int cpt;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentification() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		ges=new Gestion();
		cpt=0;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Index.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String log=req.getParameter("log");
		String pass=req.getParameter("pass");
		Etudiant u=ges.authentification(log, pass);
		if(u!=null)
		{
			HttpSession session=req.getSession();
			session.setAttribute("etudiant", u);
			resp.sendRedirect("Accueil");
			
		}
		else 
		{
			cpt++;
			resp.sendRedirect("Index.jsp?res=err&cpt="+cpt);
		}
	}
	
	

}
