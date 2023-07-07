package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.ResponsableDTO;
import interfaces.ResponsableDAO;
import utils.MySQLDBConection;

public class MySQLResponsableDAO implements ResponsableDAO {

	@Override
	public List<ResponsableDTO> listarResponsable() {
		
		List<ResponsableDTO> data = new ArrayList<ResponsableDTO>();

		ResponsableDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select r.id_resp, r.nomApe_resp, r.cod_resp, c.nom_cargo, s.nom_sec from tb_responsable r inner join tb_cargo c on r.id_cargo = c.id_cargo inner join tb_seccion s on r.id_sec = s.id_sec";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new ResponsableDTO();

				obj.setId_resp(rs.getInt(1));
				
				obj.setNomApe_resp(rs.getString(2));

				obj.setCod_resp(rs.getString(3));

				obj.setNom_cargo(rs.getString(4));

				obj.setNom_sec(rs.getString(5));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}

	@Override
	public ResponsableDTO buscarResponsable(int cod) {
		
		ResponsableDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select * from tb_responsable where id_resp=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			rs = pstm.executeQuery();

			if (rs.next()) {

				obj = new ResponsableDTO();

				obj.setId_resp(rs.getInt(1));
				
				obj.setNomApe_resp(rs.getString(2));

				obj.setCod_resp(rs.getString(3));

				obj.setNom_cargo(rs.getString(4));

				obj.setNom_sec(rs.getString(5));

				}		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}

	@Override
	public int registrarResponsable(ResponsableDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "insert into tb_responsable values(null,?,?,?,?)";

			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, obj.getNomApe_resp());

			pstm.setString(2, obj.getCod_resp());

			pstm.setInt(3, obj.getId_cargo());

			pstm.setInt(4, obj.getId_sec());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int actualizarResponsable(ResponsableDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "update tb_responsable set nomApe_resp=?, cod_resp=?, id_cargo=?, id_sec=? where id_resp=?";

			pstm = cn.prepareStatement(sql);
			
			pstm.setString(1, obj.getNomApe_resp());

			pstm.setString(2, obj.getCod_resp());

			pstm.setInt(3, obj.getId_cargo());
			
			pstm.setInt(4, obj.getId_sec());

			pstm.setInt(5, obj.getId_resp());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int eliminarResponsable(int cod) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "delete from tb_responsable where id_resp=?";

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
	public List<ResponsableDTO> listarCantidadPorCargo() {
		List<ResponsableDTO> data = new ArrayList<ResponsableDTO>();

		ResponsableDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "SELECT c.nom_cargo, r.nomApe_resp, s.nom_sec\r\n" + 
					"FROM tb_responsable r\r\n" + 
					"inner join tb_cargo c on r.id_cargo = c.id_cargo\r\n" + 
					"inner join tb_seccion s on r.id_sec = s.id_sec\r\n" + 
					"ORDER BY c.nom_cargo DESC;";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new ResponsableDTO();

				obj.setNom_cargo(rs.getString(1));
				
				obj.setNomApe_resp(rs.getString(2));

				obj.setNom_sec(rs.getString(3));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}
	
	/* NO Override */
	
	

}
