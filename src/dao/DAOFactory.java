package dao;

import interfaces.IncidenteDAO;
import interfaces.RegIncidentesDAO;
import interfaces.ResponsableDAO;
import interfaces.UsuarioDAO;


public abstract class DAOFactory {
	
	// Posibles orígenes de datos

		public static final int MYSQL = 1;

		public static final int ORACLE = 2;

		public static final int SQLSERVER = 3;

		public static final int DB2 = 4;

		public static final int INFORMIX = 5;

		

		/*

		 Existirá un método GET por cada DAO que haya en el sistema

		 */

		public abstract UsuarioDAO getUsuario();
		
		public abstract ResponsableDAO getResponsable();
		
		public abstract IncidenteDAO getIncidente();
		
		public abstract RegIncidentesDAO getRegIncidentes();
		
		

		public static DAOFactory getDAOFactory(int whichFactory) {

			switch(whichFactory) {

				case MYSQL:

					return new MySQLDAOFactory();

				case ORACLE:

					// return new OracleDAOFactory();

				case SQLSERVER:

					// return new SQLServerDAOFactory();

			}

			return null;

		}
}
