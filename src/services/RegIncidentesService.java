package services;

import java.util.List;

import beans.RegIncidentesDTO;
import dao.DAOFactory;
import interfaces.RegIncidentesDAO;
import utils.Constantes;

public class RegIncidentesService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(Constantes.ORIGEN_DE_DATOS_MYSQL);

	RegIncidentesDAO objRegInc = fabrica.getRegIncidentes();

	// Poner métodos del CRUD

	public List<RegIncidentesDTO> listaRegIncidentes() {

		return objRegInc.listarRegIncidentes();

	}
		
	public RegIncidentesDTO buscaRegIncidentes(int cod) {

		return objRegInc.buscarRegIncidentes(cod);

	}

	public int registraRegIncidentes(RegIncidentesDTO obj) {

		return objRegInc.registrarRegIncidentes(obj);

	}

	public int actualizaRegIncidentes(RegIncidentesDTO obj) {

		return objRegInc.actualizarRegIncidentes(obj);

	}

	public int eliminaRegIncidentes(int cod) {

		return objRegInc.eliminarRegIncidentes(cod);

	}

}
