package VO;

public class ProfesorVO {
	String idProfesor;
	String nombre;
	String dni;
	String nrp;
	String fechasAusen;
	String hLectivas;
	String hComplement;
	String motivo;
	public ProfesorVO() {}
	public ProfesorVO(String idProfesor, String nombre, String dni, String nrp, String fechasAusen, String hLectivas,
			String hComplement, String motivo) {
		super();
		this.idProfesor = idProfesor;
		this.nombre = nombre;
		this.dni = dni;
		this.nrp = nrp;
		this.fechasAusen = fechasAusen;
		this.hLectivas = hLectivas;
		this.hComplement = hComplement;
		this.motivo = motivo;
	}
	public String getIdProfesor() {
		return idProfesor;
	}
	public void setIdProfesor(String idProfesor) {
		this.idProfesor = idProfesor;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getNrp() {
		return nrp;
	}
	public void setNrp(String nrp) {
		this.nrp = nrp;
	}
	public String getFechasAusen() {
		return fechasAusen;
	}
	public void setFechasAusen(String fechasAusen) {
		this.fechasAusen = fechasAusen;
	}
	public String gethLectivas() {
		return hLectivas;
	}
	public void sethLectivas(String hLectivas) {
		this.hLectivas = hLectivas;
	}
	public String gethComplement() {
		return hComplement;
	}
	public void sethComplement(String hComplement) {
		this.hComplement = hComplement;
	}
	public String getMotivo() {
		return motivo;
	}
	public void setMotivo(String motivo) {
		this.motivo = motivo;
	}
	

}
