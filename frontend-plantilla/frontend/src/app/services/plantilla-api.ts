import { Service, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Jugador } from '../models/jugador';
import { Estadistica } from '../models/estadistica';

@Service()
export class PlantillaApi {
  private http = inject(HttpClient);
  private url = 'http://localhost:8080/jugador';

  titulares(): Observable<Jugador[]> {
    return this.http.get<Jugador[]>(`${this.url}/titulares`);
  }

detalle(id: number): Observable<Jugador> {
  return this.http.get<Jugador>(`${this.url}/${id}`);
}

estadisticas(id: number): Observable<Estadistica[]> {
  return this.http.get<Estadistica[]>(`${this.url}/${id}/estadisticas`);
}

listar(): Observable<Jugador[]> {
  return this.http.get<Jugador[]>(this.url);
}
}

//Es una clase cuya única misión es hablar con tu backend. 
//Los componentes no hacen las llamadas directamente, se las piden al servicio.