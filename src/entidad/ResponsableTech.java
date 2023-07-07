package entidad;

public class ResponsableTech {
	private int id_resp;
	private String nomApe_resp;
	private String cod_resp;
	private int id_cargo;
	private String nom_cargo;
	private int id_sec;
	private String nom_sec;
	
	public ResponsableTech(int id_resp, String nomApe_resp, String cod_resp, String nom_cargo, String nom_sec) {
		super();
		this.id_resp = id_resp;
		this.nomApe_resp = nomApe_resp;
		this.cod_resp = cod_resp;
		this.nom_cargo = nom_cargo;
		this.nom_sec = nom_sec;
	}

	public int getId_resp() {
		return id_resp;
	}

	public void setId_resp(int id_resp) {
		this.id_resp = id_resp;
	}

	public String getNomApe_resp() {
		return nomApe_resp;
	}

	public void setNomApe_resp(String nomApe_resp) {
		this.nomApe_resp = nomApe_resp;
	}

	public String getCod_resp() {
		return cod_resp;
	}

	public void setCod_resp(String cod_resp) {
		this.cod_resp = cod_resp;
	}

	public int getId_cargo() {
		return id_cargo;
	}

	public void setId_cargo(int id_cargo) {
		this.id_cargo = id_cargo;
	}

	public String getNom_cargo() {
		return nom_cargo;
	}

	public void setNom_cargo(String nom_cargo) {
		this.nom_cargo = nom_cargo;
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
