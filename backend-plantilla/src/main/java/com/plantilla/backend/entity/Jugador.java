package com.plantilla.backend.entity;

import java.time.LocalDate;
import java.util.Objects;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "jugador")
public class Jugador {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_jugador")
	private Integer idJugador;
	@Column(name = "nombre", nullable = false)
	private String nombre;
	@Column(name = "dorsal", nullable = false, unique = true)
	private int dorsal;
	@Column(name = "posicion", nullable = false)
	private String posicion;
	@Column(name = "fecha_nacimiento", nullable = false)
	private LocalDate fechaNacimiento;
	@Column(name = "equipo_actual", nullable = false)
	private String equipoActual;
	@Column(name = "equipo_procedencia", nullable = true)
	private String equipoProcedencia;
	@Column(name = "nacionalidad", nullable = false)
	private String nacionalidad;
	@Column(name = "url_imagen", nullable = false)
	private String urlImagen;
	@Column(name = "titular", nullable = false)
	private boolean titular;
	
	
	public Jugador() {
		
	}


	public Jugador(Integer idJugador, String nombre, int dorsal, String posicion, LocalDate fechaNacimiento,
			String equipoActual, String equipoProcedencia, String nacionalidad, String urlImagen, boolean titular) {
		super();
		this.idJugador = idJugador;
		this.nombre = nombre;
		this.dorsal = dorsal;
		this.posicion = posicion;
		this.fechaNacimiento = fechaNacimiento;
		this.equipoActual = equipoActual;
		this.equipoProcedencia = equipoProcedencia;
		this.nacionalidad = nacionalidad;
		this.urlImagen = urlImagen;
		this.titular = titular;
	}


	@Override
	public String toString() {
		return "Jugador [idJugador=" + idJugador + ", nombre=" + nombre + ", dorsal=" + dorsal + ", posicion="
				+ posicion + ", fechaNacimiento=" + fechaNacimiento + ", equipoActual=" + equipoActual
				+ ", equipoProcedencia=" + equipoProcedencia + ", nacionalidad=" + nacionalidad + ", urlImagen="
				+ urlImagen + ", titular=" + titular + "]";
	}


	public Integer getIdJugador() {
		return idJugador;
	}


	public void setIdJugador(Integer idJugador) {
		this.idJugador = idJugador;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public int getDorsal() {
		return dorsal;
	}


	public void setDorsal(int dorsal) {
		this.dorsal = dorsal;
	}


	public String getPosicion() {
		return posicion;
	}


	public void setPosicion(String posicion) {
		this.posicion = posicion;
	}


	public LocalDate getFechaNacimiento() {
		return fechaNacimiento;
	}


	public void setFechaNacimiento(LocalDate fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}


	public String getEquipoActual() {
		return equipoActual;
	}


	public void setEquipoActual(String equipoActual) {
		this.equipoActual = equipoActual;
	}


	public String getEquipoProcedencia() {
		return equipoProcedencia;
	}


	public void setEquipoProcedencia(String equipoProcedencia) {
		this.equipoProcedencia = equipoProcedencia;
	}


	public String getNacionalidad() {
		return nacionalidad;
	}


	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}


	public String getUrlImagen() {
		return urlImagen;
	}


	public void setUrlImagen(String urlImagen) {
		this.urlImagen = urlImagen;
	}


	public boolean isTitular() {
		return titular;
	}


	public void setTitular(boolean titular) {
		this.titular = titular;
	}


	@Override
	public int hashCode() {
		return Objects.hash(idJugador);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Jugador other = (Jugador) obj;
		return Objects.equals(idJugador, other.idJugador);
	}
	
	
	

}
