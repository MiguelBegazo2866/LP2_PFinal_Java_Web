package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UsuarioDTO;
import services.UsuarioService;

/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	UsuarioService servicioUsuario = new UsuarioService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuario() {

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String utipo = request.getParameter("tipo");

		if (utipo.equals("listar")) {

			listar(request, response);

		}
		else if (utipo.equals("buscar")) {

			buscar(request, response);

		}

		else if (utipo.equals("registrar")) {

			registrar(request, response);

		}

		else if (utipo.equals("actualizar")) {

			actualizar(request, response);

		}

		else if (utipo.equals("eliminar")) {

			eliminar(request, response);

		}
		else if (utipo.equals("arealistar")) {

			arealistar(request, response);

		}
	}

	

	private void arealistar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", servicioUsuario.UsuarioForArea());

		request.getRequestDispatcher("listadoPorArea.jsp").forward(request, response);
		
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int cod = Integer.parseInt(request.getParameter("cod"));

		servicioUsuario.eliminaUsuario(cod);

		listar(request, response);
		
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int area, seccion, cod;

		cod = Integer.parseInt(request.getParameter("txt_cod"));
		
		String nom_ape = request.getParameter("txt_nom_ape");

		String dni = request.getParameter("txt_dni");
		
		area = Integer.parseInt(request.getParameter("txt_area"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));

		UsuarioDTO obj = new UsuarioDTO();

		obj.setId_usua(cod);
		
		obj.setNomApe_usua(nom_ape);

		obj.setDni_usua(dni);
		
		obj.setId_area(area);
		
		obj.setId_sec(seccion);

		servicioUsuario.actualizaUsuario(obj);

		listar(request, response);
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int area, seccion;
		
		String nom_ape = request.getParameter("txt_nom_ape");

		String dni = request.getParameter("txt_dni");
		
		area = Integer.parseInt(request.getParameter("txt_area"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));

		UsuarioDTO obj = new UsuarioDTO();
		
		obj.setNomApe_usua(nom_ape);
		
		obj.setDni_usua(dni);

		obj.setId_area(area);

		obj.setId_sec(seccion);

		servicioUsuario.registraUsuario(obj);

		listar(request, response);
	}

	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int cod = Integer.parseInt(request.getParameter("cod"));

		request.setAttribute("Usuario", servicioUsuario.buscaUsuario(cod));

		request.getRequestDispatcher("actualizarUsuario.jsp").forward(request, response);
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("data", servicioUsuario.listaUsuario());

		request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);
		
	}

}
