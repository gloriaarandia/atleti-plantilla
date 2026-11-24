export interface Jugador{
    idJugador: number;
    nombre: string;
    dorsal:	number;
    posicion: string;
    fechaNacimiento: string;
    equipoActual: string;
    equipoProcedencia: string | null;
    nacionalidad: string;
    urlImagen: string;
    titular: boolean;
}