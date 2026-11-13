-- Exercise 08 - c
-- Pamplona farms that delivered in 2025 but not in 2026 (EXCEPT)

SELECT
    T1.farm_name AS farm,
    T1.rural_district AS rural_district
FROM farm.farms AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.farm_id = T2.farm_id
WHERE T1.municipality_code = '54518'
  AND EXTRACT(year FROM T2.delivered_at) = 2025
EXCEPT
SELECT
    T3.farm_name,
    T3.rural_district
FROM farm.farms AS T3
INNER JOIN buy.deliveries AS T4
    ON T3.farm_id = T4.farm_id
WHERE T3.municipality_code = '54518'
  AND EXTRACT(year FROM T4.delivered_at) = 2026
ORDER BY farm ASC, rural_district ASC;

/*
    farm      |    rural_district
---------------+----------------------
 Agua Bonita   | García
 Altamira      | El Alizal
 Bellavista    | Cunuba
 Cafetal Viejo | Caima
 Cafetal Viejo | Cunuba
 Cafetal Viejo | San José De Tonchala
 El Arrayán    | Iscaligua
 El Brillante  | Peñas
 El Diamante   | San José De Tonchala
 El Encanto    | Cunuba
 El Guamo      | Fontibón
 El Guayabo    | Caima
 El Guayabo    | El Rosal
 El Higuerón   | Caima
 El Higuerón   | La ┌Pa
 El Horizonte  | El Totumo
 El Horizonte  | Tampanqueba
 El Jardín     | Cabecera Municipal
 El Jardín     | El Escorial
 El Jardín     | La Legua
 El Manantial  | Santa Matilde
 El Mango      | La Legua
 El Mirador    | El Palchal
 El Porvenir   | Iscaligua
 El Porvenir   | La ┌Pa
 El Recreo     | La Legua
 El Recuerdo   | El Escorial
 El Refugio    | Peñas
 El Retiro     | Sabaneta Alta
 El Rosal      | Cabecera Municipal
 El Tesoro     | San Francisco
 El Vergel     | Cabecera Municipal
 La Argentina  | El Escorial
 La Argentina  | Lengua
 La Argentina  | San José De Tonchala
 La Aurora     | La ┌Pa
 La Cabaña     | Cunuba
 La Cabaña     | Llano Castro
 La Cabaña     | Sabagua
 La Carolina   | Tampanqueba
 La Ceiba      | San Francisco
 La Divisa     | Cabecera Municipal
 La Esperanza  | El Palchal
 La Floresta   | San José De Tonchala
 La Fortuna    | El Palchal
 La Gaitana    | Sabagua
 La Granja     | El Palchal
 La Loma       | Navarro
 La Milagrosa  | Cabecera Municipal
 La Milagrosa  | El Alizal
 La Montaña    | Monteadentro
 La Palma      | Cunuba
 La Primavera  | Sabagua
 La Primavera  | Tampanqueba
 La Quebrada   | El Totumo
 La Quebrada   | Navarro
 La Selva      | Peñas
 La Selva      | Sabagua
 La Siberia    | García
 La Unión      | Llano Castro
 La Unión      | Santa Matilde
 La Victoria   | El Escorial
 La Victoria   | La ┌Pa
 Las Acacias   | Cunuba
 Las Brisas    | Alto Grande
 Las Delicias  | Caima
 Las Palmas    | El Rosal
 Los Guaduales | Santa Matilde
 Los Laureles  | Lengua
 Los Laureles  | Peñas
 Miraflores    | El Rosal
 Monteverde    | El Alizal
 Monteverde    | El Palchal
 San Antonio   | Monteadentro
 San José      | Iscaligua
 San Rafael    | San José De Tonchala
 Tierra Linda  | El Palchal
 Villa Hermosa | Cunuba
 Villa Hermosa | La Legua
(79 rows)
*/
