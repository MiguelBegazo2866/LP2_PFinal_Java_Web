package services;

import java.util.List;

import beans.UsuarioDTO;
import dao.DAOFactory;
import interfaces.UsuarioDAO;
import utils.Constantes;

public class UsuarioService {
	
	DAOFactory fabrica = DAOFactory.getDAOFactory(Constantes.ORIGEN_DE_DATOS_MYSQL);

	UsuarioDAO objUsua = fabrica.getUsuario();

	

	// Poner métodos del CRUD

	public List<UsuarioDTO> listaUsuario() {

		return objUsua.listarUsuario();

	}
	
	public List<UsuarioDTO> UsuarioForArea() {
		
		return objUsua.UsuarioPorArea();
	}
	
	public UsuarioDTO buscaUsuario(int cod) {

		return objUsua.buscarUsuario(cod);

	}

	public int registraUsuario(UsuarioDTO obj) {

		return objUsua.registrarUsuario(obj);

	}

	public int actualizaUsuario(UsuarioDTO obj) {

		return objUsua.actualizarUsuario(obj);

	}

	public int eliminaUsuario(int cod) {

		return objUsua.eliminarUsuario(cod);

	}
}
