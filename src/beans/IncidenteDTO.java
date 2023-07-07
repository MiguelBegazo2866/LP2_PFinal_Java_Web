package beans;

public class IncidenteDTO {
	
	private int id_inc;
	private String nom_inc;
	private int id_tipo;
	private String nom_tipo;
	private int id_cat;
	private String nom_cat;

	public int getId_inc() {
		return id_inc;
	}
	public void setId_inc(int id_inc) {
		this.id_inc = id_inc;
	}
	public String getNom_inc() {
		return nom_inc;
	}
	public void setNom_inc(String nom_inc) {
		this.nom_inc = nom_inc;
	}
	public int getId_tipo() {
		return id_tipo;
	}
	public void setId_tipo(int id_tipo) {
		this.id_tipo = id_tipo;
	}
	public String getNom_tipo() {
		return nom_tipo;
	}
	public void setNom_tipo(String nom_tipo) {
		this.nom_tipo = nom_tipo;
	}
	public int getId_cat() {
		return id_cat;
	}
	public void setId_cat(int id_cat) {
		this.id_cat = id_cat;
	}
	public String getNom_cat() {
		return nom_cat;
	}
	public void setNom_cat(String nom_cat) {
		this.nom_cat = nom_cat;
	}

}
