package dao;


import interfaces.IncidenteDAO;
import interfaces.RegIncidentesDAO;
import interfaces.ResponsableDAO;
import interfaces.UsuarioDAO;


public class MySQLDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuario() {
		
		return new MySQLUsuarioDAO();
	}

	@Override
	public ResponsableDAO getResponsable() {

		return new MySQLResponsableDAO();
	}

	@Override
	public IncidenteDAO getIncidente() {

		return new MySQLIncidenteDAO();
	}

	@Override
	public RegIncidentesDAO getRegIncidentes() {
		
		return new MySQLRegIncidentesDAO();
	}
	
}
