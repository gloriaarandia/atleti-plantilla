package com.plantilla.backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.plantilla.backend.entity.Jugador;

public interface JugadorRepository extends JpaRepository<Jugador, Integer>{
	
/*
 * Con JpaRepository<Jugador, Integer> ya incluye: 

	findAll(): lista todos.
	findById(id): busca por id.
	save(objeto): crea o actualiza.
	deleteById(id): borra.
	count(): cuántos hay.
	
	Con eso tienes el "listar todos" y el "detalle" de jugadores. Lo que hay que añadir son 
	las consultas que son tuyas y que JPA no puede adivinar.
	
	Normalmente es casi todo findby pero tambien puede ser:
	findBy... devuelve datos.
	countBy... los cuenta. 
	existsBy... responde sí o no
	deleteBy... borra los que cumplan la condición.
 */

	List<Jugador> findByNacionalidad(String nacionalidad);
	List<Jugador> findByPosicion(String posicion);
	List<Jugador> findByTitular(boolean titular);
}
