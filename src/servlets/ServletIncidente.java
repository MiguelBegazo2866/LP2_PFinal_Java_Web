package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.IncidenteDTO;
import services.IncidenteService;

/**
 * Servlet implementation class ServletIncidente
 */
@WebServlet("/ServletIncidente")
public class ServletIncidente extends HttpServlet {
	IncidenteService servicioIncidente = new IncidenteService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletIncidente() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String itipo = request.getParameter("tipo");

		if (itipo.equals("listar")) {

			listar(request, response);

		}
		else if (itipo.equals("buscar")) {

			buscar(request, response);

		}

		else if (itipo.equals("registrar")) {

			registrar(request, response);

		}

		else if (itipo.equals("actualizar")) {

			actualizar(request, response);

		}

		else if (itipo.equals("eliminar")) {

			eliminar(request, response);

		}
		else if (itipo.equals("tipolistar")) {

			tipolistar(request, response);

		}
	}

	private void tipolistar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException   {
		request.setAttribute("data", servicioIncidente.listaIncidentePorTipo() );
		request.getRequestDispatcher("incidentePorTipo.jsp").forward(request, response);
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		int cod = Integer.parseInt(request.getParameter("cod"));
		servicioIncidente.eliminaIncidente(cod);
		listar(request, response);
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		int tipo, categoria, id;

		id = Integer.parseInt(request.getParameter("txt_id"));

		String nom = request.getParameter("txt_nom");
		
		tipo = Integer.parseInt(request.getParameter("txt_tipo"));

		categoria = Integer.parseInt(request.getParameter("txt_cat"));

		IncidenteDTO obj = new IncidenteDTO();

		obj.setId_inc(id);

		obj.setNom_inc(nom);

		obj.setId_tipo(tipo);
		
		obj.setId_cat(categoria);

		servicioIncidente.actualizaIncidente(obj);

		listar(request, response);
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		int tipo, categoria;

		String nom = request.getParameter("txt_nom");
		
		tipo = Integer.parseInt(request.getParameter("txt_tipo"));

		categoria = Integer.parseInt(request.getParameter("txt_cat"));

		IncidenteDTO obj = new IncidenteDTO();
		
		obj.setNom_inc(nom);

		obj.setId_tipo(tipo);

		obj.setId_cat(categoria);

		servicioIncidente.registraIncidente(obj);

		listar(request, response);
		
	}

	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		int cod = Integer.parseInt(request.getParameter("cod"));
		request.setAttribute("Incidente", servicioIncidente.buscaIncidente(cod));
		request.getRequestDispatcher("actualizarIncidente.jsp").forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		request.setAttribute("data", servicioIncidente.listaIncidente());
		request.getRequestDispatcher("listarIncidente.jsp").forward(request, response);
	}

}
