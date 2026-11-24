import { Component, computed, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { inject, OnInit } from '@angular/core';
import { PlantillaApi } from './services/plantilla-api';
import { Jugador } from './models/jugador';

@Component({
  imports: [RouterOutlet],
  selector: 'app-root',
  styleUrl: './app.css',
  templateUrl: './app.html',
})

export class App implements OnInit {
  private api = inject(PlantillaApi);

  titulares = signal<Jugador[]>([])
  protected readonly title = signal('atleti-plantilla');

  ngOnInit() {
    this.api.titulares().subscribe(datos => this.titulares.set(datos));
  }

  porteros = computed(() => this.titulares().filter(j => j.posicion === 'Portero'));
  defensas = computed(() => this.titulares().filter(j => j.posicion === 'Defensa'));
  centrocampistas = computed(() => this.titulares().filter(j => j.posicion === 'Centrocampista'));
delanteros = computed(() => this.titulares().filter(j => j.posicion === 'Delantero'));
}
