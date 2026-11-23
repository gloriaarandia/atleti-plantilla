package com.plantilla.backend.controller;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.plantilla.backend.entity.Estadistica;
import com.plantilla.backend.entity.Jugador;
import com.plantilla.backend.repository.EstadisticaRepository;
import com.plantilla.backend.repository.JugadorRepository;

@RestController
@RequestMapping("/jugador")
@CrossOrigin(origins = "*")
public class JugadorController {

	private final JugadorRepository jugadorRepository;
	
	private final EstadisticaRepository estadisticaRepository;

	public JugadorController(JugadorRepository jugadorRepository, EstadisticaRepository estadisticaRepository) {
		this.jugadorRepository = jugadorRepository;
		this.estadisticaRepository = estadisticaRepository;
	}


	/*
	 * ¿Qué quiero devolver? Una lista (List<Jugador>) o uno solo (Jugador). 
	 	Eso es lo que va después de public.
		¿Necesito algún dato de la URL? Si no (listar todos), el método no lleva parámetros. 
		Si sí (el id), se pone {id} en la ruta y @PathVariable en el parámetro, con el mismo nombre.
		¿Qué método del repositorio me da ese resultado? Casi siempre es el cuerpo entero, con un return.
	 */
	
	
	//GET http://localhost:8080/jugadores
	@GetMapping
	public List<Jugador> listar() {
		return jugadorRepository.findAll();
	} //Devuelve todos los jugadores
	
	
	@GetMapping("/titulares")
	public List<Jugador> titulares() {
		return jugadorRepository.findByTitular(true);
	}
	
	@GetMapping("/{id}")
	public Jugador detalle(@PathVariable Integer id) {
		return jugadorRepository.findById(id).orElse(null);
	}
	
	@GetMapping("/{id}/estadisticas")
	public List<Estadistica> estadisticas(@PathVariable Integer id){
		return estadisticaRepository.findByJugador_IdJugador(id);
	}
	
}
