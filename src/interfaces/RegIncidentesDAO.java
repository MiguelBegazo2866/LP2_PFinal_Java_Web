package interfaces;

import java.util.List;

import beans.RegIncidentesDTO;



public interface RegIncidentesDAO {
	
	public List<RegIncidentesDTO> listarRegIncidentes();

	public RegIncidentesDTO buscarRegIncidentes(int cod);

	public int registrarRegIncidentes(RegIncidentesDTO obj);

	public int actualizarRegIncidentes(RegIncidentesDTO obj);

	public int eliminarRegIncidentes(int cod);
	
	
	
}
