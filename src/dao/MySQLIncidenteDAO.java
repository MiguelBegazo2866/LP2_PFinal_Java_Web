package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.IncidenteDTO;
import interfaces.IncidenteDAO;
import utils.MySQLDBConection;

public class MySQLIncidenteDAO implements IncidenteDAO {

	@Override
	public List<IncidenteDTO> listarIncidente() {
		
		List<IncidenteDTO> data = new ArrayList<IncidenteDTO>();

		IncidenteDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select i.id_inc, i.nom_inc, p.nom_tipo, c.nom_cat from tb_incidente i inner join tb_tipo p on i.id_tipo = p.id_tipo inner join tb_categoria c on i.id_cat = c.id_cat";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new IncidenteDTO();

				obj.setId_inc(rs.getInt(1));

				obj.setNom_inc(rs.getString(2));

				obj.setNom_tipo(rs.getString(3));

				obj.setNom_cat(rs.getString(4));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}

	@Override
	public IncidenteDTO buscarIncidente(int cod) {
		
		IncidenteDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select * from tb_incidente where id_inc=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			rs = pstm.executeQuery();

			if (rs.next()) {

				obj = new IncidenteDTO();

				obj.setId_inc(rs.getInt(1));

				obj.setNom_inc(rs.getString(2));

				obj.setNom_tipo(rs.getString(3));

				obj.setNom_cat(rs.getString(4));

				}		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}

	@Override
	public int registrarIncidente(IncidenteDTO obj) {
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "insert into tb_incidente values(null,?,?,?)";

			pstm = cn.prepareStatement(sql);

			pstm.setString(1, obj.getNom_inc());

			pstm.setInt(2, obj.getId_tipo());

			pstm.setInt(3, obj.getId_cat());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int actualizarIncidente(IncidenteDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "update tb_incidente set nom_inc=?, id_tipo=?, id_cat=? where id_inc=?";

			pstm = cn.prepareStatement(sql);

			pstm.setString(1, obj.getNom_inc());

			pstm.setInt(2, obj.getId_tipo());
			
			pstm.setInt(3, obj.getId_cat());

			pstm.setInt(4, obj.getId_inc());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int eliminarIncidente(int cod) {
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "delete from tb_incidente where id_inc=?";

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
	public List<IncidenteDTO> listarIncidentePorTipo() {
		List<IncidenteDTO> data = new ArrayList<IncidenteDTO>();

		IncidenteDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "SELECT i.id_inc, i.nom_inc, t.nom_tipo, c.nom_cat FROM tb_incidente i\r\n" + 
						"inner join tb_tipo t ON i.id_tipo = t.id_tipo\r\n" + 
						"inner join tb_categoria c ON i.id_cat = c.id_cat\r\n" + 
						"order by t.nom_tipo";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new IncidenteDTO();

				obj.setId_inc(rs.getInt(1));

				obj.setNom_inc(rs.getString(2));

				obj.setNom_tipo(rs.getString(3));

				obj.setNom_cat(rs.getString(4));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}

}
