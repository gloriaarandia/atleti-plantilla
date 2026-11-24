import { Component, computed, signal, inject, OnInit } from '@angular/core';
import { PlantillaApi } from '../../services/plantilla-api';
import { Jugador } from '../../models/jugador';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-campo',
  imports: [RouterLink],
  styleUrl: './campo.css',
  templateUrl: './campo.html',
})

export class Campo implements OnInit {
  private api = inject(PlantillaApi);

  titulares = signal<Jugador[]>([]);

  ngOnInit() {
    this.api.titulares().subscribe(datos => this.titulares.set(datos));
  }

  porteros = computed(() => this.titulares().filter(j => j.posicion === 'Portero'));
  defensas = computed(() => this.titulares().filter(j => j.posicion === 'Defensa'));
  centrocampistas = computed(() => this.titulares().filter(j => j.posicion === 'Centrocampista'));
  delanteros = computed(() => this.titulares().filter(j => j.posicion === 'Delantero'));
}