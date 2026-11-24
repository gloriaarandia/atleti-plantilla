# Plantilla del Atlético de Madrid

Aplicación web para consultar la plantilla del Atlético de Madrid. Muestra los titulares sobre el campo, la plantilla completa con búsqueda y filtros, y la ficha de cada jugador con sus estadísticas. La hice como proyecto personal para practicar el desarrollo de una aplicación completa, desde la base de datos hasta la interfaz.

## Demo

- **Aplicación web:** https://atleti-plantilla.vercel.app

## Funcionalidades

- Campo con los 11 titulares colocados en formación 4-3-3.
- Ficha de cada jugador con sus datos y sus estadísticas por competición, con los totales.
- Plantilla completa de 24 jugadores con búsqueda por nombre, filtro por posición y ordenación.

## Tecnologías

- **Frontend:** Angular y TypeScript
- **Backend:** Java con Spring Boot (API REST y Spring Data JPA)
- **Base de datos:** TiDB Cloud (compatible con MySQL / MariaDB)
- **Despliegue:** Vercel (frontend), Render con Docker (backend) y TiDB Cloud (base de datos)

## Estructura del proyecto

- `db/`: scripts SQL (`esquema.sql` con las tablas y `datos.sql` con los datos de ejemplo)
- `backend-plantilla/`: API REST con Spring Boot y `Dockerfile`
- `frontend-plantilla/frontend/`: aplicación Angular
- `docs/`: capturas de pantalla de la aplicación

## Despliegue

La aplicación está desplegada en tres servicios en la nube:

- **Frontend:** alojado en **Vercel** (`frontend-plantilla/frontend`), conectado al repositorio de GitHub y configurado con `vercel.json` para el enrutamiento SPA.
- **Backend:** alojado en **Render** (`backend-plantilla`) mediante **Docker** (`Dockerfile`), con CORS configurado para permitir peticiones desde el dominio de Vercel.
- **Base de datos:** alojada en **TiDB Cloud** (compatible con MySQL).

Para ejecutar el backend en producción se configuran las siguientes variables de entorno en Render (sin incluir valores sensibles en el repositorio):

- `DB_URL`: URL de conexión JDBC con SSL hacia TiDB Cloud.
- `DB_USER`: usuario de la base de datos.
- `DB_PASSWORD`: contraseña de la base de datos.

## Cómo ejecutarlo en local

1. Crea la base de datos ejecutando primero `db/esquema.sql` y después `db/datos.sql`.
2. Configura las credenciales de tu base de datos local en `backend-plantilla/src/main/resources/application.properties` (o mediante las variables de entorno `DB_URL`, `DB_USER` y `DB_PASSWORD`).
3. Arranca el backend desde `backend-plantilla/` (se ejecuta en el puerto `8080`).
4. En la carpeta `frontend-plantilla/frontend/`, ejecuta `npm install` y después `ng serve`.
5. Abre `http://localhost:4200` en el navegador.

## Endpoints de la API

| Método | Ruta | Descripción |
|---|---|---|
| GET | `/jugador` | Lista de todos los jugadores |
| GET | `/jugador/titulares` | Los 11 titulares |
| GET | `/jugador/{id}` | Detalle de un jugador |
| GET | `/jugador/{id}/estadisticas` | Estadísticas de un jugador |

## Modelo de datos

- **jugador:** nombre, dorsal, posición, fecha de nacimiento, equipo actual, equipo de procedencia, nacionalidad, imagen y si es titular.
- **estadistica:** jugador, temporada, competición, goles, asistencias, apariciones, amarillas y rojas. Hay una fila por jugador, temporada y competición, y los totales se calculan sumando las filas.

## Notas

- La plantilla y las estadísticas son de ejemplo y las cifras son ficticias. No son datos reales.
- Proyecto sin ánimo de lucro desarrollado con fines personales y de aprendizaje.

## Posibles mejoras

- Endpoints para crear, editar y borrar jugadores, con validaciones.
- Favoritos, trofeos y cuerpo técnico.
- Cambio de formación y filtro por temporada.
