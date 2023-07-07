package services;

import java.util.List;

import beans.ResponsableDTO;
import dao.DAOFactory;
import interfaces.ResponsableDAO;
import utils.Constantes;

public class ResponsableService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(Constantes.ORIGEN_DE_DATOS_MYSQL);

	ResponsableDAO objResp = fabrica.getResponsable();

	

	// Poner métodos del CRUD

	public List<ResponsableDTO> listaResponsable() {
		return objResp.listarResponsable();
	}
		
	public List<ResponsableDTO> listaCantidadPorCargo() {
		return objResp.listarCantidadPorCargo();
	}
	
	public ResponsableDTO buscaResponsable(int cod) {

		return objResp.buscarResponsable(cod);

	}

	public int registraResponsable(ResponsableDTO obj) {

		return objResp.registrarResponsable(obj);

	}

	public int actualizaResponsable(ResponsableDTO obj) {

		return objResp.actualizarResponsable(obj);

	}

	public int eliminaResponsable(int cod) {

		return objResp.eliminarResponsable(cod);

	}
}
