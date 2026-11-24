package com.plantilla.backend.entity;

import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "estadistica")
public class Estadistica {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_estadistica")
	private Integer idEstadistica;
	@ManyToOne
	@JoinColumn(name = "id_jugador")
	@JsonIgnore
	private Jugador jugador;
	@Column(name = "temporada", nullable = false)
	private String temporada;
	@Column(name = "competicion", nullable = false)
	private String competicion;
	@Column(name = "goles", nullable = false)
	private int goles;
	@Column(name = "asistencias", nullable = false)
	private int asistencias;
	@Column(name = "apariciones", nullable = false)
	private int apariciones;
	@Column(name = "amarillas", nullable = false)
	private int amarillas;
	@Column(name = "rojas", nullable = false)
	private int rojas;
	
	
	public Estadistica() {
		
	}


	public Estadistica(Integer idEstadistica, Jugador jugador, String temporada, String competicion, int goles,
			int asistencias, int apariciones, int amarillas, int rojas) {
		super();
		this.idEstadistica = idEstadistica;
		this.jugador = jugador;
		this.temporada = temporada;
		this.competicion = competicion;
		this.goles = goles;
		this.asistencias = asistencias;
		this.apariciones = apariciones;
		this.amarillas = amarillas;
		this.rojas = rojas;
	}


	@Override
	public String toString() {
		return "Estadistica [idEstadistica=" + idEstadistica + ", jugador=" + jugador + ", temporada=" + temporada
				+ ", competicion=" + competicion + ", goles=" + goles + ", asistencias=" + asistencias
				+ ", apariciones=" + apariciones + ", amarillas=" + amarillas + ", rojas=" + rojas + "]";
	}


	public Integer getIdEstadistica() {
		return idEstadistica;
	}


	public void setIdEstadistica(Integer idEstadistica) {
		this.idEstadistica = idEstadistica;
	}


	public Jugador getJugador() {
		return jugador;
	}


	public void setJugador(Jugador jugador) {
		this.jugador = jugador;
	}


	public String getTemporada() {
		return temporada;
	}


	public void setTemporada(String temporada) {
		this.temporada = temporada;
	}


	public String getCompeticion() {
		return competicion;
	}


	public void setCompeticion(String competicion) {
		this.competicion = competicion;
	}


	public int getGoles() {
		return goles;
	}


	public void setGoles(int goles) {
		this.goles = goles;
	}


	public int getAsistencias() {
		return asistencias;
	}


	public void setAsistencias(int asistencias) {
		this.asistencias = asistencias;
	}


	public int getApariciones() {
		return apariciones;
	}


	public void setApariciones(int apariciones) {
		this.apariciones = apariciones;
	}


	public int getAmarillas() {
		return amarillas;
	}


	public void setAmarillas(int amarillas) {
		this.amarillas = amarillas;
	}


	public int getRojas() {
		return rojas;
	}


	public void setRojas(int rojas) {
		this.rojas = rojas;
	}


	@Override
	public int hashCode() {
		return Objects.hash(idEstadistica);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Estadistica other = (Estadistica) obj;
		return Objects.equals(idEstadistica, other.idEstadistica);
	}
	
	
}
