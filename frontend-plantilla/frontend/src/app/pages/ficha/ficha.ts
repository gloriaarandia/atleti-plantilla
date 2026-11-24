import { Component, computed, inject, signal, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { PlantillaApi } from '../../services/plantilla-api';
import { Jugador } from '../../models/jugador';
import { Estadistica } from '../../models/estadistica';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-ficha',
  styleUrl: './ficha.css',
  templateUrl: './ficha.html',
  imports: [RouterLink],
})
export class Ficha implements OnInit {
  private route = inject(ActivatedRoute);
  private api = inject(PlantillaApi);

  jugador = signal<Jugador | null>(null);
  estadisticas = signal<Estadistica[]>([]);

  totalApariciones = computed(() =>
    this.estadisticas().reduce((suma, e) => suma + e.apariciones, 0)
  );
  totalGoles = computed(() =>
    this.estadisticas().reduce((suma, e) => suma + e.goles, 0)
  );
  totalAsistencias = computed(() =>
    this.estadisticas().reduce((suma, e) => suma + e.asistencias, 0)
  );
  totalAmarillas = computed(() =>
    this.estadisticas().reduce((suma, e) => suma + e.amarillas, 0)
  );
  totalRojas = computed(() =>
    this.estadisticas().reduce((suma, e) => suma + e.rojas, 0)
  );

  ngOnInit() {
    const id = Number(this.route.snapshot.paramMap.get('id'));
    this.api.detalle(id).subscribe(d => this.jugador.set(d));
    this.api.estadisticas(id).subscribe(e => this.estadisticas.set(e));
  }

  mostrarTabla = signal(false);

  alternarTabla() {
    this.mostrarTabla.update(valor => !valor);
  }
}