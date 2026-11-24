import { Component, computed, inject, signal, OnInit } from '@angular/core';
import { RouterLink } from '@angular/router';
import { Jugador } from '../../models/jugador';
import { PlantillaApi } from '../../services/plantilla-api';

@Component({
  selector: 'app-plantilla',
  imports: [RouterLink],
  styleUrl: './plantilla.css',
  templateUrl: './plantilla.html',
})
export class Plantilla implements OnInit {
  private api = inject(PlantillaApi);
  jugadores = signal<Jugador[]>([]);
  busqueda = signal('');
  posicion = signal('');
  orden = signal('dorsal');

  filtrados = computed(() => {
    const lista = this.jugadores().filter(j =>
      j.nombre.toLowerCase().includes(this.busqueda().toLowerCase()) &&
      (this.posicion() === '' || j.posicion === this.posicion())
    );

    switch (this.orden()) {
      case 'nombre':
        return lista.sort((a, b) => a.nombre.localeCompare(b.nombre));
      case 'edad':
        // Más joven primero (fecha de nacimiento más reciente primero)
        return lista.sort((a, b) => b.fechaNacimiento.localeCompare(a.fechaNacimiento));
      default:
        return lista.sort((a, b) => a.dorsal - b.dorsal);
    }
  });

  buscar(evento: Event) {
    this.busqueda.set((evento.target as HTMLInputElement).value);
  }

  elegirPosicion(evento: Event) {
    this.posicion.set((evento.target as HTMLSelectElement).value);
  }

  elegirOrden(evento: Event) {
    this.orden.set((evento.target as HTMLSelectElement).value);
  }

  ngOnInit() {
    this.api.listar().subscribe(datos => {
      this.jugadores.set(datos);
    });
  }
}