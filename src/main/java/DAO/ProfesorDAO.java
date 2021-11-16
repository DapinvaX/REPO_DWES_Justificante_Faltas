package DAO;


import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import VO.ProfesorVO;


public class ProfesorDAO {

	public static Connection obtenerConexion() {
		Connection conexion = null;

		try {
			// CARGAR EL FICHERO DE PROPIEDADES
			Properties properties = new Properties();
			InputStream input = ProfesorVO.class.getResourceAsStream("/configuracion/configuracion.properties");
			properties.load(input);

			//OBTENEMOS LAS PROPIEDADES DE CONEXIÓN A LA BASE DE DATOS
			String driver = properties.getProperty("driver");
			String urlConexion = properties.getProperty("urlConexion");
			String usuario = properties.getProperty("usuario");
			String password = properties.getProperty("password");
			
			//CARGARMOS EL DRIVER
			Class.forName(driver);
			//OBTENEMOS CONEXIÓN
			conexion = DriverManager.getConnection(urlConexion, usuario, password);
			
		} catch (Exception e) {
			System.out.println("error al obtener la conexión");
			System.out.println("SQLException: " + e.getMessage());

		}

		return conexion;
	}
	public static List<ProfesorVO> obtenerJustificaciones(){
		List<ProfesorVO> list=new ArrayList<ProfesorVO>();
		
		try{
			
			Connection con=obtenerConexion();
			PreparedStatement ps=con.prepareStatement("select * from profesores");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				ProfesorVO u=new ProfesorVO();
				
				u.setIdProfesor(rs.getString("IdProfesor"));
				u.setNombre(rs.getString("nombre"));
				u.setDni(rs.getString("dni"));
				u.setNrp(rs.getString("nrp"));
				u.setFechasAusen(rs.getString("fechasAusen"));
				u.sethLectivas(rs.getString("hLectivas"));
				u.sethComplement(rs.getString("hComplement"));
				u.setMotivo(rs.getString("motivo"));
				
				
				list.add(u);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}

	

}