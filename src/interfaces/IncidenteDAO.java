package interfaces;

import java.util.List;

import beans.IncidenteDTO;

public interface IncidenteDAO {
	
	public List<IncidenteDTO> listarIncidente();

	public IncidenteDTO buscarIncidente(int cod);

	public int registrarIncidente(IncidenteDTO obj);

	public int actualizarIncidente(IncidenteDTO obj);

	public int eliminarIncidente(int cod);
	
	public List<IncidenteDTO> listarIncidentePorTipo();

}
