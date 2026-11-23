package com.plantilla.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.plantilla.backend.entity.Estadistica;

public interface EstadisticaRepository extends JpaRepository<Estadistica, Integer>{

	/*
	 * En tu entidad, Estadistica no tiene un número con el id del jugador, tiene un objeto jugador, 
	 * y el id está dentro de ese objeto. Spring necesita saber que tiene que entrar a ese objeto, 
	 * y eso se indica con un guion bajo
	 */
	List<Estadistica> findByJugador_IdJugador(Integer idJugador);
	List<Estadistica> findByJugador_IdJugadorAndCompeticion(Integer idJugador, String competicion);
}
