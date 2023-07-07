package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.RegIncidentesDTO;

import services.RegIncidentesService;


/**
 * Servlet implementation class ServletRegIncidentes
 */
@WebServlet("/ServletRegIncidentes")
public class ServletRegIncidentes extends HttpServlet {
	
	RegIncidentesService servicioRegIncidentes = new RegIncidentesService();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRegIncidentes() {
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String rgtipo = request.getParameter("tipo");

		if (rgtipo.equals("listar")) {

			listar(request, response);

		}
		else if (rgtipo.equals("buscar")) {

			buscar(request, response);

		}

		else if (rgtipo.equals("registrar")) {

			registrar(request, response);

		}

		else if (rgtipo.equals("actualizar")) {

			actualizar(request, response);

		}

		else if (rgtipo.equals("eliminar")) {

			eliminar(request, response);

		}
	}

	private void eliminar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cod = Integer.parseInt(request.getParameter("cod"));

		servicioRegIncidentes.eliminaRegIncidentes(cod);

		listar(request, response);
		
	}

	private void actualizar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int area, seccion, cargo, inci, tipo, cat, usua, resp, cod;
		
		cod = Integer.parseInt(request.getParameter("txt_id_reg"));

		String num_reg = request.getParameter("txt_num_reg");
		
		String fec_reg = request.getParameter("txt_fec_reg");
		
		String hor_reg = request.getParameter("txt_hor_reg");

		area = Integer.parseInt(request.getParameter("txt_area"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));
		
		tipo = Integer.parseInt(request.getParameter("txt_tipo"));
		
		cat = Integer.parseInt(request.getParameter("txt_cat"));
				
		cargo = Integer.parseInt(request.getParameter("txt_cargo"));
		
		inci = Integer.parseInt(request.getParameter("txt_inci"));
				
		usua = Integer.parseInt(request.getParameter("txt_usua"));
		
		resp = Integer.parseInt(request.getParameter("txt_resp"));
		
		RegIncidentesDTO obj = new RegIncidentesDTO();
		
		obj.setId_reg(cod);

		obj.setNum_reg(num_reg);
		
		obj.setFec_reg(fec_reg);

		obj.setHor_reg(hor_reg);

		obj.setId_area(area);
		
		obj.setId_sec(seccion);
		
		obj.setId_tipo(tipo);
		
		obj.setId_cat(cat);
		
		obj.setId_cargo(cargo);
		
		obj.setId_inc(inci);
		
		obj.setId_usua(usua);
		
		obj.setId_resp(resp);

		servicioRegIncidentes.actualizaRegIncidentes(obj);

		listar(request, response);
		
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int area, seccion, cargo, inci, tipo, cat, usua, resp;

		String num_reg = request.getParameter("txt_num_reg");
		
		String fec_reg = request.getParameter("txt_fec_reg");
		
		String hor_reg = request.getParameter("txt_hor_reg");
		
		area = Integer.parseInt(request.getParameter("txt_area"));

		seccion = Integer.parseInt(request.getParameter("txt_seccion"));
		
		tipo = Integer.parseInt(request.getParameter("txt_tipo"));
		
		cat = Integer.parseInt(request.getParameter("txt_cat"));
		
		cargo = Integer.parseInt(request.getParameter("txt_cargo"));
		
		inci = Integer.parseInt(request.getParameter("txt_inci"));
				
		usua = Integer.parseInt(request.getParameter("txt_usua"));
		
		resp = Integer.parseInt(request.getParameter("txt_resp"));
		
		RegIncidentesDTO obj = new RegIncidentesDTO();
		
		obj.setNum_reg(num_reg);
		
		obj.setFec_reg(fec_reg);
		
		obj.setHor_reg(hor_reg);

		obj.setId_area(area);

		obj.setId_sec(seccion);
		
		obj.setId_tipo(tipo);
		
		obj.setId_cat(cat);
		
		obj.setId_cargo(cargo);
		
		obj.setId_inc(inci);
		
		obj.setId_usua(usua);
		
		obj.setId_resp(resp);

		servicioRegIncidentes.registraRegIncidentes(obj);

		listar(request, response);
		
	}
	

	private void buscar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int cod = Integer.parseInt(request.getParameter("cod"));

		request.setAttribute("RegIncidentes", servicioRegIncidentes.buscaRegIncidentes(cod));

		request.getRequestDispatcher("actualizarRegIncidentes.jsp").forward(request, response);
		
	}

	private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("data", servicioRegIncidentes.listaRegIncidentes());

		request.getRequestDispatcher("listarRegIncidentes.jsp").forward(request, response);
		
	}


}
