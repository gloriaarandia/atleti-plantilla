INSERT INTO jugador (nombre, dorsal, posicion, fecha_nacimiento, equipo_actual, equipo_procedencia, nacionalidad, url_imagen, titular) VALUES
-- Porteros
('J. Musso', 1, 'Portero', '1994-05-06', 'Atlético de Madrid', 'Atalanta', 'Argentina', 'j-musso.jpg', false),
('Oblak', 13, 'Portero', '1993-01-07', 'Atlético de Madrid', 'Benfica', 'Eslovenia', 'oblak.png', true),
('Esquivel', 25, 'Portero', '2005-09-30', 'Atlético de Madrid', 'Atlético Madrileno', 'España', 'esquivel.jpg', false),

-- Defensas
('Hancko', 17, 'Defensa', '1997-12-13', 'Atlético de Madrid', 'Feyenoord', 'Eslovaquia', 'hancko.jpg', true),
('Marc Pubill', 18, 'Defensa', '2003-06-20', 'Atlético de Madrid', 'UD Almería', 'España', 'marc-pubill.jpg', false),
('Cuti Romero', 21, 'Defensa', '1998-04-27', 'Atlético de Madrid', 'Tottenham Hotspur', 'Argentina', 'c-romero.jpg', true),
('Grimaldo', 22, 'Defensa', '1995-09-20', 'Atlético de Madrid', 'Bayer Leverkusen', 'España', 'grimaldo.jpg', true),
('Le Normand', 24, 'Defensa', '1996-11-11', 'Atlético de Madrid', 'Real Sociedad', 'España', 'le-normand.jpg', true),
('D. Martínez', 30, 'Defensa', '2004-05-05', 'Atlético de Madrid', 'Atlético Madrileño', 'España', 'd-martinez.jpg', false),

-- Centrocampistas
('Obed Vargas', 3, 'Centrocampista', '2005-08-05', 'Atlético de Madrid', 'Seattle Sounders', 'Estados Unidos', 'obed-vargas.jpg', false),
('Mendoza', 4, 'Centrocampista', '2005-03-15', 'Atlético de Madrid', 'Elche CF', 'España', 'mendoza.jpg', false),
('Johnny', 5, 'Centrocampista', '2001-09-20', 'Atlético de Madrid', 'Real Betis', 'Estados Unidos', 'johnny.jpg', false),
('Koke', 6, 'Centrocampista', '1992-01-08', 'Atlético de Madrid', 'Atlético Madrileño', 'España', 'koke.jpg', true),
('Kang In', 7, 'Centrocampista', '2001-02-19', 'Atlético de Madrid', 'Paris Saint-Germain', 'Corea del Sur', 'kang-in.jpg', false),
('Barrios', 8, 'Centrocampista', '2003-06-15', 'Atlético de Madrid', 'Atlético Madrileño', 'España', 'barrios.jpg', false),
('Álex B.', 10, 'Centrocampista', '2001-07-20', 'Atlético de Madrid', 'Villarreal CF', 'España', 'alex-b.jpg', false),
('Marcos Llorente', 14, 'Centrocampista', '1995-01-30', 'Atlético de Madrid', 'Real Madrid', 'España', 'llorente.jpg', true),
('Arnau Ortiz', 16, 'Centrocampista', '2001-10-29', 'Atlético de Madrid', 'Girona FC', 'España', 'arnau-ortiz.jpg', false),
('Giuliano', 20, 'Centrocampista', '2002-12-18', 'Atlético de Madrid', 'Atlético Madrileño', 'Argentina', 'giuliano.jpg', false),
('Hjulmand', 23, 'Centrocampista', '1999-06-25', 'Atlético de Madrid', 'Sporting CP', 'Dinamarca', 'hjulmand.jpg', true),

-- Delanteros
('Sørloth', 9, 'Delantero', '1995-12-05', 'Atlético de Madrid', 'Villarreal CF', 'Noruega', 'sorloth.jpg', false),
('Lookman', 11, 'Delantero', '1997-10-20', 'Atlético de Madrid', 'Atalanta', 'Nigeria', 'lookman.jpg', true),
('J. David', 15, 'Delantero', '2000-01-14', 'Atlético de Madrid', 'LOSC Lille', 'Canadá', 'j-david.jpg', true),
('J. Alvarez', 19, 'Delantero', '2000-01-31', 'Atlético de Madrid', 'Manchester City', 'Argentina', 'j-alvarez.jpg', true);

INSERT INTO estadistica (id_jugador, temporada, competicion, goles, asistencias, apariciones, amarillas, rojas) VALUES
-- Musso
((SELECT id_jugador FROM jugador WHERE dorsal = 1), '2026/27', 'Liga', 0, 0, 1, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 1), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
-- Oblak
((SELECT id_jugador FROM jugador WHERE dorsal = 13), '2026/27', 'Liga', 0, 0, 12, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 13), '2026/27', 'Champions', 0, 0, 5, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 13), '2026/27', 'Liga de las Naciones', 0, 0, 4, 0, 0),
-- Esquivel
((SELECT id_jugador FROM jugador WHERE dorsal = 25), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
-- Hancko
((SELECT id_jugador FROM jugador WHERE dorsal = 17), '2026/27', 'Liga', 1, 1, 11, 3, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 17), '2026/27', 'Champions', 0, 0, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 17), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 17), '2026/27', 'Liga de las Naciones', 0, 1, 4, 1, 0),
-- Marc Pubill
((SELECT id_jugador FROM jugador WHERE dorsal = 18), '2026/27', 'Liga', 0, 0, 6, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 18), '2026/27', 'Copa del Rey', 0, 0, 2, 0, 0),
-- Cuti Romero
((SELECT id_jugador FROM jugador WHERE dorsal = 21), '2026/27', 'Liga', 1, 0, 10, 4, 1),
((SELECT id_jugador FROM jugador WHERE dorsal = 21), '2026/27', 'Champions', 0, 0, 4, 2, 0),
-- Grimaldo
((SELECT id_jugador FROM jugador WHERE dorsal = 22), '2026/27', 'Liga', 2, 4, 12, 2, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 22), '2026/27', 'Champions', 0, 2, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 22), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 22), '2026/27', 'Liga de las Naciones', 0, 1, 3, 0, 0),
-- Le Normand
((SELECT id_jugador FROM jugador WHERE dorsal = 24), '2026/27', 'Liga', 0, 1, 12, 3, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 24), '2026/27', 'Champions', 1, 0, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 24), '2026/27', 'Liga de las Naciones', 0, 0, 4, 1, 0),
-- D. Martínez
((SELECT id_jugador FROM jugador WHERE dorsal = 30), '2026/27', 'Liga', 0, 0, 3, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 30), '2026/27', 'Copa del Rey', 0, 0, 2, 1, 0),
-- Obed Vargas
((SELECT id_jugador FROM jugador WHERE dorsal = 3), '2026/27', 'Liga', 0, 0, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 3), '2026/27', 'Champions', 0, 0, 2, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 3), '2026/27', 'Copa del Rey', 0, 0, 2, 0, 0),
-- Mendoza
((SELECT id_jugador FROM jugador WHERE dorsal = 4), '2026/27', 'Liga', 0, 1, 7, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 4), '2026/27', 'Champions', 0, 0, 2, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 4), '2026/27', 'Copa del Rey', 1, 0, 2, 0, 0),
-- Johnny
((SELECT id_jugador FROM jugador WHERE dorsal = 5), '2026/27', 'Liga', 0, 0, 8, 2, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 5), '2026/27', 'Champions', 0, 0, 3, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 5), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
-- Koke
((SELECT id_jugador FROM jugador WHERE dorsal = 6), '2026/27', 'Liga', 1, 3, 11, 3, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 6), '2026/27', 'Champions', 0, 1, 5, 0, 0),
-- Kang In
((SELECT id_jugador FROM jugador WHERE dorsal = 7), '2026/27', 'Liga', 1, 2, 9, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 7), '2026/27', 'Champions', 0, 1, 3, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 7), '2026/27', 'Copa del Rey', 1, 1, 2, 0, 0),
-- Barrios
((SELECT id_jugador FROM jugador WHERE dorsal = 8), '2026/27', 'Liga', 1, 1, 10, 3, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 8), '2026/27', 'Champions', 0, 0, 4, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 8), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 8), '2026/27', 'Liga de las Naciones', 0, 0, 2, 0, 0),
-- Álex B.
((SELECT id_jugador FROM jugador WHERE dorsal = 10), '2026/27', 'Liga', 4, 3, 12, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 10), '2026/27', 'Champions', 2, 1, 5, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 10), '2026/27', 'Copa del Rey', 1, 0, 2, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 10), '2026/27', 'Liga de las Naciones', 1, 0, 3, 0, 0),
-- Marcos Llorente
((SELECT id_jugador FROM jugador WHERE dorsal = 14), '2026/27', 'Liga', 3, 4, 12, 2, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 14), '2026/27', 'Champions', 1, 1, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 14), '2026/27', 'Liga de las Naciones', 0, 1, 3, 1, 0),
-- Arnau Ortiz
((SELECT id_jugador FROM jugador WHERE dorsal = 16), '2026/27', 'Liga', 0, 0, 4, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 16), '2026/27', 'Copa del Rey', 0, 1, 2, 0, 0),
-- Giuliano
((SELECT id_jugador FROM jugador WHERE dorsal = 20), '2026/27', 'Liga', 0, 1, 6, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 20), '2026/27', 'Champions', 0, 0, 2, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 20), '2026/27', 'Copa del Rey', 0, 0, 1, 0, 0),
-- Hjulmand
((SELECT id_jugador FROM jugador WHERE dorsal = 23), '2026/27', 'Liga', 1, 2, 11, 4, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 23), '2026/27', 'Champions', 0, 0, 4, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 23), '2026/27', 'Liga de las Naciones', 0, 1, 4, 1, 0),
-- Sørloth
((SELECT id_jugador FROM jugador WHERE dorsal = 9), '2026/27', 'Liga', 3, 0, 9, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 9), '2026/27', 'Champions', 1, 0, 3, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 9), '2026/27', 'Copa del Rey', 2, 0, 2, 0, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 9), '2026/27', 'Liga de las Naciones', 3, 0, 4, 0, 0),
-- Lookman
((SELECT id_jugador FROM jugador WHERE dorsal = 11), '2026/27', 'Liga', 6, 3, 12, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 11), '2026/27', 'Champions', 3, 1, 5, 0, 0),
-- J. David
((SELECT id_jugador FROM jugador WHERE dorsal = 15), '2026/27', 'Liga', 5, 2, 11, 2, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 15), '2026/27', 'Champions', 2, 1, 5, 1, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 15), '2026/27', 'Copa del Rey', 1, 0, 1, 0, 0),
-- J. Alvarez
((SELECT id_jugador FROM jugador WHERE dorsal = 19), '2026/27', 'Liga', 7, 4, 12, 2, 0),
((SELECT id_jugador FROM jugador WHERE dorsal = 19), '2026/27', 'Champions', 3, 2, 5, 0, 0);

