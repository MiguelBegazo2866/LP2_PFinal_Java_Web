package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ResponsableDTO;
import services.ResponsableService;


/**
 * Servlet implementation class ServletResponsable
 */
@WebServlet("/ServletResponsable")
public class ServletResponsable extends HttpServlet {
	ResponsableService servicioResponsable = new ResponsableService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletResponsable() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rtipo = request.getParameter("tipo");

		if (rtipo.equals("listar")) {

			listar(request, response);

		}
		else if (rtipo.equals("buscar")) {

			buscar(request, response);

		}

		else if (rtipo.equals("registrar")) {

			registrar(request, response);

		}

		else if (rtipo.equals("actualizar")) {

			actualizar(request, response);

		}

		else if (rtipo.equals("eliminar")) {

			eliminar(request, response);

		}
		else if (rtipo.equals("cargolistar")) {

			cargolistar(request, response);

		}
	}

	private void cargolistar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", servicioResponsable.listaCantidadPorCargo());
		request.getRequestDispatcher("ResponsablePorCargo.jsp").forward(request, response);
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cod = Integer.parseInt(request.getParameter("cod"));
		servicioResponsable.eliminaResponsable(cod);
		listar(request, response);
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cargo, seccion, id;

		id = Integer.parseInt(request.getParameter("txt_id"));
		
		String nom_ape = request.getParameter("txt_nom_ape");
		
		String cod = request.getParameter("txt_cod");
		
		cargo = Integer.parseInt(request.getParameter("txt_cargo"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));

		ResponsableDTO obj = new ResponsableDTO();

		obj.setId_resp(id);

		obj.setNomApe_resp(nom_ape);
		
		obj.setCod_resp(cod);

		obj.setId_cargo(cargo);
		
		obj.setId_sec(seccion);

		servicioResponsable.actualizaResponsable(obj);

		listar(request, response);
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cargo, seccion;

		String nom_ape = request.getParameter("txt_nom_ape");
		
		String cod = request.getParameter("txt_cod");
		
		cargo = Integer.parseInt(request.getParameter("txt_cargo"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));

		ResponsableDTO obj = new ResponsableDTO();
		
		obj.setNomApe_resp(nom_ape);

		obj.setCod_resp(cod);

		obj.setId_cargo(cargo);
		
		obj.setId_sec(seccion);

		servicioResponsable.registraResponsable(obj);

		listar(request, response);
		
	}

	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cod = Integer.parseInt(request.getParameter("cod"));
		request.setAttribute("Responsable", servicioResponsable.buscaResponsable(cod));
		request.getRequestDispatcher("actualizarResponsable.jsp").forward(request, response);
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", servicioResponsable.listaResponsable());
		request.getRequestDispatcher("listarResponsable.jsp").forward(request, response);
	}

}
