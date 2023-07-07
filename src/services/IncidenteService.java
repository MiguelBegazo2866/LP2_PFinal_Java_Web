package services;

import java.util.List;

import beans.IncidenteDTO;
import dao.DAOFactory;
import interfaces.IncidenteDAO;
import utils.Constantes;

public class IncidenteService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(Constantes.ORIGEN_DE_DATOS_MYSQL);

	IncidenteDAO objInc = fabrica.getIncidente();

	

	// Poner métodos del CRUD

	public List<IncidenteDTO> listaIncidente() {

		return objInc.listarIncidente();

	}
	
	public List<IncidenteDTO> listaIncidentePorTipo() {
		
		return objInc.listarIncidentePorTipo();
	}
	
	public IncidenteDTO buscaIncidente(int cod) {

		return objInc.buscarIncidente(cod);

	}

	public int registraIncidente(IncidenteDTO obj) {

		return objInc.registrarIncidente(obj);

	}

	public int actualizaIncidente(IncidenteDTO obj) {

		return objInc.actualizarIncidente(obj);

	}

	public int eliminaIncidente(int cod) {

		return objInc.eliminarIncidente(cod);

	}
}
