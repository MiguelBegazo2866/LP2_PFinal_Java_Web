package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.RegIncidentesDTO;
import interfaces.RegIncidentesDAO;
import utils.MySQLDBConection;

public class MySQLRegIncidentesDAO implements RegIncidentesDAO {

	@Override
	public List<RegIncidentesDTO> listarRegIncidentes() {
		List<RegIncidentesDTO> data = new ArrayList<RegIncidentesDTO>();

		RegIncidentesDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select id_reg, num_reg, fec_reg, hor_reg, nom_area, nom_sec, nom_tipo, nom_cat, nom_cargo, nom_inc, nomApe_usua, nomApe_resp\r\n" + 
					"from tb_regIncidentes ri\r\n" + 
					"join tb_area a on a.id_area = ri.id_area\r\n" + 
					"join tb_seccion s on s.id_sec = ri.id_sec\r\n" +
					"join tb_tipo t on t.id_tipo = ri.id_tipo\r\n" + 
					"join tb_categoria c on c.id_cat = ri.id_cat\r\n" + 
					"join tb_cargo  ca on ca.id_cargo = ri.id_cargo\r\n" + 
					"join tb_incidente i on i.id_inc = ri.id_inc\r\n" + 
					"join tb_usuario u on u.id_usua = ri.id_usua\r\n" + 
					"join tb_responsable r on r.id_resp = ri.id_resp;";

			pstm = cn.prepareStatement(sql);

			rs = pstm.executeQuery();

			while (rs.next()) {

				obj = new RegIncidentesDTO();
				
				obj.setId_reg(rs.getInt(1));

				obj.setNum_reg(rs.getString(2));

				obj.setFec_reg(rs.getString(3));

				obj.setHor_reg(rs.getString(4));
				
				obj.setNom_area(rs.getString(5));

				obj.setNom_sec(rs.getString(6));

				obj.setNom_tipo(rs.getString(7));
				
				obj.setNom_cat(rs.getString(8));
				
				obj.setNom_cargo(rs.getString(9));
				
				obj.setNom_inc(rs.getString(10));
				
				obj.setNomApe_usua(rs.getString(11));
				
				obj.setNomApe_resp(rs.getString(12));

				data.add(obj);

			}		

		}		catch (Exception e) {
			e.printStackTrace();
		}
		return data;
	}

	@Override
	public RegIncidentesDTO buscarRegIncidentes(int cod) {
		
		RegIncidentesDTO obj = null;

		Connection cn = null;

		PreparedStatement pstm = null;

		ResultSet rs = null;

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "select * from tb_regIncidentes where id_reg=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			rs = pstm.executeQuery();

			if (rs.next()) {

				obj = new RegIncidentesDTO();

				obj.setId_reg(rs.getInt(1));
				
				obj.setNum_reg(rs.getString(2));

				obj.setFec_reg(rs.getString(3));

				obj.setHor_reg(rs.getString(4));
				
				obj.setNom_area(rs.getString(5));

				obj.setNom_sec(rs.getString(6));

				obj.setNom_tipo(rs.getString(7));
				
				obj.setNom_cat(rs.getString(8));
				
				obj.setNom_cargo(rs.getString(9));
				
				obj.setNom_inc(rs.getString(10));
				
				obj.setNomApe_usua(rs.getString(11));
				
				obj.setNomApe_resp(rs.getString(12));

				}		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return obj;
	}

	@Override
	public int registrarRegIncidentes(RegIncidentesDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "insert into tb_regIncidentes values(null,?,?,?,?,?,?,?,?,?,?,?)";

			pstm = cn.prepareStatement(sql);

			pstm.setString(1, obj.getNum_reg());

			pstm.setString(2, obj.getFec_reg());
			
			pstm.setString(3, obj.getHor_reg());

			pstm.setInt(4, obj.getId_area());

			pstm.setInt(5, obj.getId_sec());
			
			pstm.setInt(6, obj.getId_tipo());
			
			pstm.setInt(7, obj.getId_cat());
			
			pstm.setInt(8, obj.getId_cargo());
			
			pstm.setInt(9, obj.getId_inc());
			
			pstm.setInt(10, obj.getId_usua());
			
			pstm.setInt(11, obj.getId_resp());
			
			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int actualizarRegIncidentes(RegIncidentesDTO obj) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "update tb_regIncidentes set num_reg=?, fec_reg=?, hor_reg=?, id_area=?, id_sec=?, id_tipo=?, id_cat=?, id_cargo=?, id_inc=?, id_usua=?, id_resp=? where id_reg=?";

			pstm = cn.prepareStatement(sql);

			pstm.setString(1, obj.getNum_reg());

			pstm.setString(2, obj.getFec_reg());

			pstm.setString(3, obj.getHor_reg());

			pstm.setInt(4, obj.getId_area());
			
			pstm.setInt(5, obj.getId_sec());
			
			pstm.setInt(6, obj.getId_tipo());
			
			pstm.setInt(7, obj.getId_cat());
			
			pstm.setInt(8, obj.getId_cargo());
			
			pstm.setInt(9, obj.getId_inc());
			
			pstm.setInt(10, obj.getId_usua());
			
			pstm.setInt(11, obj.getId_resp());
			
			pstm.setInt(12, obj.getId_reg());

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}

	@Override
	public int eliminarRegIncidentes(int cod) {
		
		int estado = -1;

		Connection cn = null;

		PreparedStatement pstm = null;		

		try {

			cn = MySQLDBConection.getConexion();

			String sql = "delete from tb_regIncidentes where id_reg=?";

			pstm = cn.prepareStatement(sql);

			pstm.setInt(1, cod);

			estado = pstm.executeUpdate();		

		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return estado;
	}


}
