package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.UsuarioDTO;
import interfaces.UsuarioDAO;
import utils.MySQLDBConection;


public class MySQLUsuarioDAO implements UsuarioDAO {

	@Override
	public List<UsuarioDTO> listarUsuario() {
		List<UsuarioDTO> data = new ArrayList<UsuarioDTO>();

		UsuarioDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select u.id_usua, u.nomApe_usua, u.dni_usua, a.nom_area, s.nom_sec from tb_usuario u inner join tb_area a on u.id_area = a.id_area inner join tb_seccion s on u.id_sec = s.id_sec";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new UsuarioDTO();

				obj.setId_usua(rs.getInt(1));
				
				obj.setNomApe_usua(rs.getString(2));
				
				obj.setDni_usua(rs.getString(3));

				obj.setNom_area(rs.getString(4));

				obj.setNom_sec(rs.getString(5));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
	

	@Override
	public UsuarioDTO buscarUsuario(int cod) {
		
		UsuarioDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select * from tb_usuario where id_usua=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			rs = pstm.executeQuery();

			if (rs.next()) {

				obj = new UsuarioDTO();

				obj.setId_usua(rs.getInt(1));
				
				obj.setNomApe_usua(rs.getString(2));

				obj.setDni_usua(rs.getString(3));

				obj.setNom_area(rs.getString(4));

				obj.setNom_sec(rs.getString(5));

				}		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}

	@Override
	public int registrarUsuario(UsuarioDTO obj) {
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "insert into tb_usuario values(null,?,?,?,?)";

			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, obj.getNomApe_usua());

			pstm.setString(2, obj.getDni_usua());

			pstm.setInt(3, obj.getId_area());

			pstm.setInt(4, obj.getId_sec());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int actualizarUsuario(UsuarioDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "update tb_usuario set  nomApe_usua=?, dni_usua=?, id_area=?, id_sec=? where id_usua=?";

			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, obj.getNomApe_usua());

			pstm.setString(2, obj.getDni_usua());

			pstm.setInt(3, obj.getId_area());
			
			pstm.setInt(4, obj.getId_sec());

			pstm.setInt(5, obj.getId_usua());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int eliminarUsuario(int cod) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "delete from tb_usuario where id_usua=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}



	@Override
	public List<UsuarioDTO> UsuarioPorArea() {
		List<UsuarioDTO> data = new ArrayList<UsuarioDTO>();

		UsuarioDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select u.id_usua, u.nomApe_usua, u.dni_usua, a.nom_area, s.nom_sec from tb_usuario u \r\n" + 
							"inner join tb_area a ON u.id_area= a.id_area\r\n" + 
							"inner join tb_seccion s ON u.id_sec= s.id_sec\r\n" + 
							"order by a.nom_area";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new UsuarioDTO();

				obj.setId_usua(rs.getInt(1));
				
				obj.setNomApe_usua(rs.getString(2));
				
				obj.setDni_usua(rs.getString(3));

				obj.setNom_area(rs.getString(4));

				obj.setNom_sec(rs.getString(5));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
}
