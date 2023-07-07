package entidad;

public class UsuarioTech {
	private int id_usua;
	private String nomApe_usua;
	private String dni_usua;
	private int id_area;
	private String nom_area;
	private int id_sec;
	private String nom_sec;
	
	public UsuarioTech(int id_usua, String nomApe_usua, String dni_usua, String nom_area, String nom_sec) {
		super();
		this.id_usua = id_usua;
		this.nomApe_usua = nomApe_usua;
		this.dni_usua = dni_usua;
		this.nom_area = nom_area;
		this.nom_sec = nom_sec;
	}

	public int getId_usua() {
		return id_usua;
	}

	public void setId_usua(int id_usua) {
		this.id_usua = id_usua;
	}

	public String getNomApe_usua() {
		return nomApe_usua;
	}

	public void setNomApe_usua(String nomApe_usua) {
		this.nomApe_usua = nomApe_usua;
	}

	public String getDni_usua() {
		return dni_usua;
	}

	public void setDni_usua(String dni_usua) {
		this.dni_usua = dni_usua;
	}

	public int getId_area() {
		return id_area;
	}

	public void setId_area(int id_area) {
		this.id_area = id_area;
	}

	public String getNom_area() {
		return nom_area;
	}

	public void setNom_area(String nom_area) {
		this.nom_area = nom_area;
	}

	public int getId_sec() {
		return id_sec;
	}

	public void setId_sec(int id_sec) {
		this.id_sec = id_sec;
	}

	public String getNom_sec() {
		return nom_sec;
	}

	public void setNom_sec(String nom_sec) {
		this.nom_sec = nom_sec;
	}

}
