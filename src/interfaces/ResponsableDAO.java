package interfaces;

import java.util.List;

import beans.ResponsableDTO;


public interface ResponsableDAO {
	
	public List<ResponsableDTO> listarResponsable();

	public ResponsableDTO buscarResponsable(int cod);

	public int registrarResponsable(ResponsableDTO obj);

	public int actualizarResponsable(ResponsableDTO obj);

	public int eliminarResponsable(int cod);
	
	public List<ResponsableDTO> listarCantidadPorCargo();
	

	

}
