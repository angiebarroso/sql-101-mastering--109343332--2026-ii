-- Exercise 02 - a
-- Farmers of 54518 with farm name, including those without a farm

SELECT
    T1.document_number AS document,
    T1.first_name AS first_name,
    T1.last_name AS last_name,
    T2.farm_name AS farm
FROM farm.farmers AS T1
LEFT JOIN farm.farms AS T2
    ON T1.farmer_id = T2.farmer_id
WHERE T1.municipality_code = '54518';

/*
  document  |    first_name     |     last_name      |       farm
------------+-------------------+--------------------+------------------
 1061690671 | Guillermo Pedro   | Arias RodrÝguez    | La Selva
 712758473  | Wilson            | L¾pez Villamizar   | El Silencio
 134410171  | Orlando           | Salazar Berm·dez   | El Diamante
 870240973  | Jairo             | Molina Pab¾n       | El Recuerdo
 727945493  | Gloria            | MarÝn Rivera       | La Esperanza
 549054771  | MarÝa             | Burbano Duarte     | El Nogal
 549054771  | MarÝa             | Burbano Duarte     | La Divisa
 622105662  | Alejandra         | Molina Torres      | La Carolina
 622105662  | Alejandra         | Molina Torres      | La Cristalina
 622105662  | Alejandra         | Molina Torres      | Villa Rosa
 437443011  | Julißn            | Pe±a Betancur      | Los Arrayanes
 356207226  | Luisa             | Caicedo Restrepo   | El Brillante
 356207226  | Luisa             | Caicedo Restrepo   | La Cascada
 578947645  | Mario             | Uribe CuÚllar      | El Porvenir
 578947645  | Mario             | Uribe CuÚllar      | La Primavera
 24999630   | Esperanza         | Romero Betancur    | El Oasis
 24999630   | Esperanza         | Romero Betancur    | La Florida
 914044314  | AncÝzar Cristian  | PolanÝa Delgado    | Los Arrayanes
 358946393  | Carmen            | Cßrdenas Moreno    | El Horizonte
 358946393  | Carmen            | Cßrdenas Moreno    | El Porvenir
 358946393  | Carmen            | Cßrdenas Moreno    | La Esperanza
 358946393  | Carmen            | Cßrdenas Moreno    | La Primavera
 811782754  | Nicolßs           | Gonzßlez RodrÝguez | El Guayabo
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | Bellavista
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | El Encanto
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | La Cumbre
 343256743  | Dora              | Hernßndez Correa   | Cafetal Viejo
 811557533  | Adriana           | Mosquera Ospina    | El Vergel
 811557533  | Adriana           | Mosquera Ospina    | Las Palmas
 974842644  | Arturo            | Hernßndez Uribe    | Bella Vista Alta
 974842644  | Arturo            | Hernßndez Uribe    | El Higuer¾n
 91091638   | Daniel            | Bonilla Duarte     | El Horizonte
 91091638   | Daniel            | Bonilla Duarte     | La Esperanza
 91091638   | Daniel            | Bonilla Duarte     | La Primavera
 42562183   | RocÝo Manuela     | Jaimes Cardona     | El Arrayßn
 42562183   | RocÝo Manuela     | Jaimes Cardona     | El Silencio
 1148351420 | InÚs              | JimÚnez Jaimes     | El Recuerdo
 1148351420 | InÚs              | JimÚnez Jaimes     | La Gaitana
 674769591  | Ivßn              | Zapata Ortiz       | El Mes¾n
 802182926  | Antonio           | DÝaz VÚlez         | El Mango
 802182926  | Antonio           | DÝaz VÚlez         | Las Mercedes
 802182926  | Antonio           | DÝaz VÚlez         | Las OrquÝdeas
 1117597835 | Cecilia Lorena    | DÝaz GarcÝa        | La Monta±a
 700421194  | Teresa            | Torres Giraldo     | El Tesoro
 406352604  | Jaime Wilmer      | Ortiz Vargas       | La Uni¾n
 1090578662 | Gladys Patricia   | Sandoval Duarte    | La Reserva
 333176982  | Edilma            | Rivera Rivera      | San Antonio
 1168119731 | Felipe Camilo     | RÝos Ospina        | El Vergel
 1168119731 | Felipe Camilo     | RÝos Ospina        | Las Palmas
 728596637  | Mauricio          | Pe±a Bastidas      | El Recuerdo
 749444168  | Emilio            | Delgado Molina     | La Quebrada
 155695928  | Martha            | Giraldo Arango     | Altamira
 155695928  | Martha            | Giraldo Arango     | San Luis
 51802865   | Alejandro         | Narvßez PolanÝa    | El Danubio
 137851877  | Gabriela          | RodrÝguez Ortega   | Tierra Linda
 211924295  | ┴lvaro            | Valencia Rivera    | Los Laureles
 211924295  | ┴lvaro            | Valencia Rivera    | Tierra Linda
 940051048  | David Germßn      | Romero Bonilla     | La Palma
 1109661392 | Fabio Luis        | Valencia RamÝrez   | Las Acacias
 1144582366 | David             | Zapata Arias       | El Triunfo
 1144582366 | David             | Zapata Arias       | La Argentina
 1144582366 | David             | Zapata Arias       | La Gaitana
 1144582366 | David             | Zapata Arias       | Las Acacias
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | La Holanda
 866702579  | ┴lvaro            | Berm·dez MarÝn     | El Retiro
 866702579  | ┴lvaro            | Berm·dez MarÝn     | La Victoria
 866702579  | ┴lvaro            | Berm·dez MarÝn     | Los Naranjos
 748380481  | Teresa Adriana    | Valencia Moreno    | La Floresta
 548464915  | Yuliana           | RodrÝguez Vargas   | El Higuer¾n
 548464915  | Yuliana           | RodrÝguez Vargas   | La Siberia
 1185360305 | Ivßn              | Berm·dez Fl¾rez    | El Oasis
 546579335  | Wilson            | Parra Prada        | Villa Hermosa
 1001030458 | Liliana Luisa     | Chamorro VÚlez     | El Guamo
 554620706  | Nelson Samuel     | MejÝa Vera         | La Isabela
 336247561  | Francisco         | RamÝrez Sandoval   | El Nogal
 336247561  | Francisco         | RamÝrez Sandoval   | La Reserva
 10424994   | Cristian          | Herrera Zuluaga    | Los Alpes
 59388780   | Juan              | Ortega Zapata      | La Loma
 94235991   | Rafael Francisco  | Rinc¾n Romero      | El Recreo
 1171130241 | Elsa              | MejÝa Vera         | El Encanto
 824422301  | Hernando          | Montoya Agudelo    | El Encanto
 553185238  | ┴ngela            | Tovar Lasso        | El Guayabo
 21358854   | Manuela Yolanda   | Benavides Delgado  | La Argentina
 65169775   | Aura              | Castillo Henao     | El Mirador
 65169775   | Aura              | Castillo Henao     | La Caba±a
 587550249  | Gustavo           | Mosquera L¾pez     | El Higuer¾n
 587550249  | Gustavo           | Mosquera L¾pez     | La Siberia
 1185523747 | Elsa              | Ibarra Molina      | La Granja
 131166207  | Jaime             | MarÝn Hernßndez    | La Aurora
 224364120  | Valentina         | Zapata Valencia    | Villa Hermosa
 977130251  | InÚs LucÝa        | DÝaz CuÚllar       | El Oasis
 356807172  | Aura              | Torres Ortega      | El Tesoro
 35147265   | Carlos            | GutiÚrrez Pab¾n    | Monteverde
 502796073  | AncÝzar           | Arango Silva       | El Recuerdo
 712500733  | Esperanza         | Valencia Ortiz     | Bella Vista Alta
 712500733  | Esperanza         | Valencia Ortiz     | El Higuer¾n
 712500733  | Esperanza         | Valencia Ortiz     | El Refugio
 712500733  | Esperanza         | Valencia Ortiz     | La Siberia
 382766013  | Diana             | Londo±o Ramos      | Monteverde
 922724022  | Esteban           | Salazar Parra      | Las Acacias
 374080696  | Fernando          | Galvis Duarte      | El Horizonte
 374080696  | Fernando          | Galvis Duarte      | La Esperanza
 374080696  | Fernando          | Galvis Duarte      | San Antonio
 374080696  | Fernando          | Galvis Duarte      | Santa Clara
 1027436085 | Manuela           | Bastidas Medina    | Agua Bonita
 788902052  | Camilo Ivßn       | Calder¾n Trujillo  | La Fortuna
 1052279913 | Luis              | Jaimes Salazar     | El Silencio
 1052279913 | Luis              | Jaimes Salazar     | La Victoria
 942530661  | Javier            | Pinz¾n JimÚnez     | La Loma
 290597798  | Rosa              | RÝos Cßrdenas      | El Horizonte
 409306735  | M¾nica Claudia    | Fl¾rez Gonzßlez    | La Floresta
 434293037  | Hernando Miguel   | JimÚnez Restrepo   | La Monta±a
 95544811   | InÚs              | Duque Cßrdenas     | El Guamo
 95544811   | InÚs              | Duque Cßrdenas     | La Loma
 571748382  | Marleny           | Pinz¾n Delgado     | El Silencio
 811526011  | Arturo            | Tovar Calder¾n     | La Cumbre
 811526011  | Arturo            | Tovar Calder¾n     | Santa Bßrbara
 1084721334 | Javier            | Gonzßlez Zuluaga   | La Palma
 1135293825 | Abelardo          | PÚrez Castro       | Los Laureles
 1135293825 | Abelardo          | PÚrez Castro       | San JosÚ
 1135293825 | Abelardo          | PÚrez Castro       | Tierra Linda
 252140095  | Alba              | RÝos RodrÝguez     | El Mirador
 252140095  | Alba              | RÝos RodrÝguez     | La Caba±a
 756405214  | Gloria            | Tovar Benavides    | El Vergel
 756405214  | Gloria            | Tovar Benavides    | Las Palmas
 756405214  | Gloria            | Tovar Benavides    | Los Alpes
 436957556  | JazmÝn            | Burbano Jaimes     | Santa Bßrbara
 436957556  | JazmÝn            | Burbano Jaimes     | Villa Hermosa
 141739132  | Alba              | Vargas Losada      | El Oasis
 141739132  | Alba              | Vargas Losada      | La Estrella
 931079279  | Edilma            | ┴lvarez Bonilla    | El Triunfo
 931079279  | Edilma            | ┴lvarez Bonilla    | La Argentina
 939635303  | Marleny           | ┴lvarez Correa     | El Arrayßn
 939635303  | Marleny           | ┴lvarez Correa     | El Silencio
 939635303  | Marleny           | ┴lvarez Correa     | La Victoria
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | El Rosal
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | Monteverde
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | Altamira
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | San Luis
 443361503  | RubÚn             | Villamizar MejÝa   | Altamira
 549847293  | Wilmer            | PÚrez Chamorro     | El Refugio
 637451261  | Arturo            | Contreras Pe±a     | La Primavera
 1189704117 | Mariana           | Ortiz Ruiz         | La Palma
 599185252  | EfraÝn            | Pinz¾n Cabrera     | Monteverde
 33787285   | RubÚn             | Ramos Chamorro     | El Bosque
 677772599  | Guillermo         | PÚrez PÚrez        | El Retiro
 299842243  | Wilmer            | Montoya RodrÝguez  | El Mango
 299842243  | Wilmer            | Montoya RodrÝguez  | Las Mercedes
 299842243  | Wilmer            | Montoya RodrÝguez  | Las OrquÝdeas
 590872233  | Reinaldo          | Romero Agudelo     | El Guayabo
 590872233  | Reinaldo          | Romero Agudelo     | Las OrquÝdeas
 590872233  | Reinaldo          | Romero Agudelo     | Los Arrayanes
 797017145  | Isabella          | Barrera Cabrera    | San Luis
 723123018  | Diego             | Ni±o Hernßndez     | Buenavista
 723123018  | Diego             | Ni±o Hernßndez     | La Floresta
 402745033  | Julißn Guillermo  | Valencia Narvßez   | El Silencio
 446019320  | Fernando          | Rojas Cßrdenas     | La Fortuna
 813687871  | AndrÚs Emilio     | Valencia Parra     | El Horizonte
 525766302  | Gustavo           | Ibarra Agudelo     | El Porvenir
 525766302  | Gustavo           | Ibarra Agudelo     | La Monta±a
 425322677  | Luz Martha        | Jaimes Berm·dez    | El Diamante
 1001674689 | Jaime Santiago    | CuÚllar Cßceres    | El Mirador
 1001674689 | Jaime Santiago    | CuÚllar Cßceres    | La Caba±a
 257495692  | Myriam            | Fl¾rez Gonzßlez    | El EdÚn
 257495692  | Myriam            | Fl¾rez Gonzßlez    | La Ceiba
 257495692  | Myriam            | Fl¾rez Gonzßlez    | Las Palmas
 257495692  | Myriam            | Fl¾rez Gonzßlez    | Los Alpes
 166716892  | Ricardo           | Castro Contreras   | El Guayabo
 166716892  | Ricardo           | Castro Contreras   | La Palma
 166716892  | Ricardo           | Castro Contreras   | Los Arrayanes
 410167282  | Gustavo Pedro     | Romero Pinz¾n      | El Recreo
 92240743   | Mario             | RÝos Ibarra        | El Recreo
 92240743   | Mario             | RÝos Ibarra        | Villa Rosa
 659942505  | Mariana           | Barrera Correa     | La Siberia
 520313287  | Beatriz           | Hernßndez Mu±oz    | La Siberia
 232229735  | Libardo           | Lasso Serrano      | El Triunfo
 232229735  | Libardo           | Lasso Serrano      | La Argentina
 232229735  | Libardo           | Lasso Serrano      | Las Acacias
 529703819  | M¾nica Elsa       | RamÝrez Castro     | La Quebrada
 529703819  | M¾nica Elsa       | RamÝrez Castro     | La Soledad
 1090968710 | Ruth              | RodrÝguez PÚrez    | El Horizonte
 756369749  | Andrea            | Cardona Ruiz       | Monte Alto
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Oasis
 970305595  | Alejandra Andrea  | Mosquera Moreno    | El Placer
 970305595  | Alejandra Andrea  | Mosquera Moreno    | La Estrella
 360667240  | Gabriela Carolina | Ni±o Ortiz         | El Guamo
 360667240  | Gabriela Carolina | Ni±o Ortiz         | La Loma
 1143295403 | Liliana           | PÚrez Parra        | Villa Hermosa
 483692716  | Ramiro            | Barrera Villamizar | El Oasis
 455264704  | Valentina         | Mora Rangel        | Bellavista
 455264704  | Valentina         | Mora Rangel        | Los Laureles
 455264704  | Valentina         | Mora Rangel        | San JosÚ
 455264704  | Valentina         | Mora Rangel        | Tierra Linda
 316655568  | Nubia Natalia     | Henao RamÝrez      | La Carolina
 316655568  | Nubia Natalia     | Henao RamÝrez      | La Cristalina
 1148017860 | Fabio             | Hernßndez Lasso    | La Quebrada
 966970818  | Gustavo           | Parra Ortiz        | El Brillante
 966970818  | Gustavo           | Parra Ortiz        | La Cascada
 302345504  | Elsa              | Ramos Cßrdenas     | La Caba±a
 863442205  | Luz               | Rojas Torres       | Cafetal Viejo
 863442205  | Luz               | Rojas Torres       | El Danubio
 179146863  | Dora LucÝa        | Uribe Arango       | El Recuerdo
 793512107  | Sandra            | Henao Jaimes       | Villa Hermosa
 550093228  | Ruth              | JimÚnez Guerrero   | Las Mercedes
 433286601  | Esperanza         | Jaimes Vera        | La Loma
 433286601  | Esperanza         | Jaimes Vera        | Miraflores
 870262750  | Gloria Aura       | RÝos Vera          | La Cascada
 727121857  | Alba              | Vera Calder¾n      | Los Guaduales
 550696749  | Viviana           | Arias RamÝrez      | La Quebrada
 550696749  | Viviana           | Arias RamÝrez      | La Soledad
 850962053  | David             | Perdomo Mosquera   | Mi Ranchito
 765371022  | Luisa             | Montoya MejÝa      | El Tesoro
 765371022  | Luisa             | Montoya MejÝa      | La Aurora
 1180237528 | ┴ngela Beatriz    | Sandoval Berm·dez  | La Estrella
 254078333  | Alberto           | Ortiz Lasso        | El Recreo
 302059113  | Yuliana           | Sandoval Bedoya    | La Granja
 1196659084 | Ivßn Jaime        | Cßceres Galvis     | El Arrayßn
 1196659084 | Ivßn Jaime        | Cßceres Galvis     | El Silencio
 56877324   | Javier            | Burbano Molina     | El JardÝn
 699387247  | Fanny             | Montoya Valencia   | El Guayabo
 1167705984 | Teresa            | Ibarra Caicedo     | El Nogal
 846209158  | Daniel HÚctor     | Duque Ruiz         | El Rosal
 846209158  | Daniel HÚctor     | Duque Ruiz         | Monteverde
 897433183  | Patricia Amparo   | Rojas RÝos         | El Brillante
 897433183  | Patricia Amparo   | Rojas RÝos         | Los Guaduales
 897433183  | Patricia Amparo   | Rojas RÝos         | San Rafael
 649244180  | RocÝo             | Bastidas Sußrez    | El Triunfo
 649244180  | RocÝo             | Bastidas Sußrez    | La Argentina
 988262002  | JazmÝn            | Silva G¾mez        | La Esperanza
 1185160275 | Ramiro            | Zuluaga Duque      | El Tesoro
 1185160275 | Ramiro            | Zuluaga Duque      | La Aurora
 754524782  | Diana             | Lozano Rinc¾n      | El Bosque
 754524782  | Diana             | Lozano Rinc¾n      | El Vergel
 754524782  | Diana             | Lozano Rinc¾n      | La Isabela
 914235490  | Ëscar             | Ospina Gonzßlez    | La Esperanza
 734158943  | Alberto           | Bastidas RodrÝguez | San JosÚ
 279649109  | Carlos            | Castillo Torres    | El Guayabo
 279649109  | Carlos            | Castillo Torres    | La Palma
 279649109  | Carlos            | Castillo Torres    | Los Arrayanes
 279649109  | Carlos            | Castillo Torres    | Santa Elena
 932437698  | Amparo            | Duarte Duque       | La Ceiba
 1167191036 | Yuliana JazmÝn    | MejÝa Rangel       | Agua Bonita
 283636187  | Gustavo           | Moreno L¾pez       | El Arrayßn
 283636187  | Gustavo           | Moreno L¾pez       | El Silencio
 478755763  | Nicolßs           | Rivera Duque       | El Oasis
 449792023  | Myriam            | Sandoval Osorio    | El Nogal
 91139207   | Mario             | Rinc¾n Sußrez      | El JardÝn
 91139207   | Mario             | Rinc¾n Sußrez      | La Selva
 934117740  | Gustavo           | MarÝn Sandoval     | El Nogal
 934117740  | Gustavo           | MarÝn Sandoval     | La Reserva
 934117740  | Gustavo           | MarÝn Sandoval     | Las Margaritas
 737383707  | Yesenia           | Berm·dez Henao     | El Diamante
 737383707  | Yesenia           | Berm·dez Henao     | La Fortuna
 737383707  | Yesenia           | Berm·dez Henao     | Los Naranjos
 230971064  | Manuel            | Agudelo JimÚnez    | El JardÝn
 230971064  | Manuel            | Agudelo JimÚnez    | La Selva
 230971064  | Manuel            | Agudelo JimÚnez    | Las Acacias
 808693611  | Natalia           | Ospina Burbano     | Las Mercedes
 456256773  | Luisa             | Lozano Losada      | La Victoria
 302223305  | Camilo            | Arias Mora         | Las Delicias
 1089620113 | Myriam Yuliana    | Arango Narvßez     | Monteverde
 44817013   | AnÝbal            | Silva Villamizar   | Bellavista
 44817013   | AnÝbal            | Silva Villamizar   | El Encanto
 388108693  | Miguel            | Villamizar Correa  | Los Pinos
 641839251  | EfraÝn            | Ortega Correa      | La Milagrosa
 522380895  | InÚs              | Erazo Hernßndez    | Monte Alto
 951995464  | Wilson Yeison     | DÝaz RamÝrez       | La Palma
 273193028  | Erika             | RÝos Sußrez        | La Holanda
 302894847  | Reinaldo Jorge    | Sßnchez Agudelo    | El Cedro
 302894847  | Reinaldo Jorge    | Sßnchez Agudelo    | La Granja
 302894847  | Reinaldo Jorge    | Sßnchez Agudelo    | Las Brisas
 805029874  | Pedro             | RamÝrez Barrera    | El Tesoro
 805029874  | Pedro             | RamÝrez Barrera    | La Aurora
 860920785  | Hugo              | JimÚnez Parra      | El Silencio
 746737893  | Natalia           | Ramos Vargas       | El Oasis
 160538872  | Liliana           | Mosquera Uribe     | El Triunfo
 963176673  | Luis              | Mosquera Perdomo   | Bella Vista Alta
 963176673  | Luis              | Mosquera Perdomo   | El Refugio
 14046794   | Alberto           | ┴lvarez Villamizar | El Mango
 534023693  | Myriam            | Valencia Moreno    | El Guayabo
 534023693  | Myriam            | Valencia Moreno    | La Palma
 534023693  | Myriam            | Valencia Moreno    | Las OrquÝdeas
 534023693  | Myriam            | Valencia Moreno    | Los Arrayanes
 765824560  | Manuel            | Quintero Arias     | Villa Rosa
 1015411133 | Santiago          | Berm·dez Ruiz      | La Caba±a
 102695503  | SofÝa             | MarÝn Rojas        | Buenavista
 699883472  | Ramiro            | Parra Trujillo     | La Pradera
 699883472  | Ramiro            | Parra Trujillo     | Las Delicias
 503402827  | Heriberto AndrÚs  | CuÚllar Romero     | El Mango
 503402827  | Heriberto AndrÚs  | CuÚllar Romero     | Las OrquÝdeas
 503402827  | Heriberto AndrÚs  | CuÚllar Romero     | Los Arrayanes
 1060881964 | InÚs              | PolanÝa Bedoya     | La Reserva
 768461420  | Marleny           | Agudelo Sandoval   | El Diamante
 768461420  | Marleny           | Agudelo Sandoval   | El ParaÝso
 796884051  | Yuliana           | Zapata Parra       | La Aurora
 647948165  | Yesenia           | Rinc¾n Caicedo     | El Oasis
 1079700992 | Camila            | Sßnchez Pinz¾n     | El Diamante
 1079700992 | Camila            | Sßnchez Pinz¾n     | El ParaÝso
 1138270357 | Gustavo Heriberto | Torres Guerrero    | El Recuerdo
 1138270357 | Gustavo Heriberto | Torres Guerrero    | La Gaitana
 1103932523 | Amparo            | Bastidas Chamorro  | El Cafetal
 1145130870 | Elsa              | MarÝn Henao        | Bellavista
 1012324420 | Martha Carolina   | PÚrez Jaimes       | El Cedro
 614786053  | ┴lvaro            | Correa RÝos        | Cafetal Viejo
 1146928395 | Julißn Germßn     | Delgado Villamizar | Mi Ranchito
 1196615388 | Fernando          | Burbano Fl¾rez     | Altamira
 1196615388 | Fernando          | Burbano Fl¾rez     | San Luis
 828628976  | Diana             | DÝaz Medina        | Cafetal Viejo
 155634182  | Luz               | Ni±o Guerrero      | Santa Clara
 1053774538 | Isabella          | Mosquera Sandoval  | El Brillante
 1053774538 | Isabella          | Mosquera Sandoval  | Los Guaduales
 1053774538 | Isabella          | Mosquera Sandoval  | San Rafael
 1157650796 | Sara              | Losada GutiÚrrez   | El Cedro
 1157650796 | Sara              | Losada GutiÚrrez   | El JardÝn
 1157650796 | Sara              | Losada GutiÚrrez   | La Granja
 1157650796 | Sara              | Losada GutiÚrrez   | La Selva
 781810115  | Diana Isabella    | Molina Moreno      | El Bosque
 781810115  | Diana Isabella    | Molina Moreno      | La Isabela
 938685616  | Sandra            | Sandoval Ortega    | El Guamo
 938685616  | Sandra            | Sandoval Ortega    | La Pradera
 938685616  | Sandra            | Sandoval Ortega    | Las Delicias
 276159211  | Francisco         | Restrepo Perdomo   | El Mes¾n
 530206966  | Daniela           | Lozano Castro      | El Silencio
 530206966  | Daniela           | Lozano Castro      | La Victoria
 793273339  | Libardo           | Trujillo Torres    | El Diamante
 610678466  | Nicolßs           | Sßnchez RodrÝguez  | El Nogal
 403413565  | Reinaldo          | Sußrez PolanÝa     | La Quebrada
 403413565  | Reinaldo          | Sußrez PolanÝa     | Mi Ranchito
 644277425  | David             | Jaimes Ruiz        | El Nogal
 644277425  | David             | Jaimes Ruiz        | La Divisa
 644277425  | David             | Jaimes Ruiz        | La Milagrosa
 697099528  | Fabio             | DÝaz CuÚllar       | La Uni¾n
 697099528  | Fabio             | DÝaz CuÚllar       | Monte Alto
 754745808  | Jairo             | Romero GutiÚrrez   | La Quebrada
 754745808  | Jairo             | Romero GutiÚrrez   | La Soledad
 718906996  | Nelson            | Bedoya VÚlez       | La Reserva
 718906996  | Nelson            | Bedoya VÚlez       | Las Margaritas
 622024549  | Viviana           | Gonzßlez Molina    | El Cedro
 622024549  | Viviana           | Gonzßlez Molina    | El JardÝn
 622024549  | Viviana           | Gonzßlez Molina    | La Granja
 622024549  | Viviana           | Gonzßlez Molina    | Las Brisas
 142439635  | Yeison            | Medina Londo±o     | El Brillante
 142439635  | Yeison            | Medina Londo±o     | La Cascada
 716388403  | Emilio            | Carrillo Perdomo   | La Gloria
 716388403  | Emilio            | Carrillo Perdomo   | La Milagrosa
 478787290  | Ëscar             | Rivera Tovar       | La Monta±a
 878614263  | Stella            | MarÝn Osorio       | La Gaitana
 361839624  | RocÝo Alba        | Ortega Serrano     | Bellavista
 361839624  | RocÝo Alba        | Ortega Serrano     | El Encanto
 361839624  | RocÝo Alba        | Ortega Serrano     | San JosÚ
 135734682  | Diego             | Rivera JimÚnez     | El Cafetal
 135734682  | Diego             | Rivera JimÚnez     | El Refugio
 141613744  | ╔dgar             | Burbano Arango     | La Reserva
 314914042  | Olga Luisa        | Zapata Rivera      | Mi Ranchito
 1050862619 | Yesenia           | Silva Henao        | El Retiro
 89157555   | Heriberto         | JimÚnez Cßceres    | Bella Vista Alta
 407150767  | Antonio           | Bastidas RodrÝguez | Monteverde
 536338741  | Juliana Ana       | MejÝa MejÝa        | Los Pinos
 1143372198 | Nelson            | Chamorro Vera      | Santa Bßrbara
 1143372198 | Nelson            | Chamorro Vera      | Villa Hermosa
 918053770  | Nubia Juliana     | Caicedo Medina     | El Higuer¾n
 45024299   | Rodrigo Guillermo | Berm·dez Mu±oz     | Las Palmas
 517430119  | Emilio            | Berm·dez Rojas     | Santa Clara
 968133883  | Sandra            | Ortega GarcÝa      | El Porvenir
 968133883  | Sandra            | Ortega GarcÝa      | La Primavera
 1177165427 | Juliana           | Ortega Osorio      | El Refugio
 338193839  | Laura             | Zuluaga Benavides  | El Bosque
 783174188  | Luz               | Osorio CuÚllar     | San JosÚ
 788628125  | M¾nica            | ┴lvarez Carrillo   | La Caba±a
 788628125  | M¾nica            | ┴lvarez Carrillo   | Monteverde
(370 rows)
*/
