-- Exercise 07 - a
-- Phone directory: farmers of Pamplona plus Norte de Santander collection points with phone

SELECT
    'farmer' AS contact_type,
    CONCAT(T1.first_name, ' ', T1.last_name) AS contact_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
UNION ALL
SELECT
    'collection_point',
    T2.point_name,
    T2.phone_number
FROM buy.collection_points AS T2
WHERE T2.municipality_code LIKE '54%'
  AND T2.phone_number IS NOT NULL
ORDER BY contact_type ASC, contact_name ASC;

/*
   contact_type   |           contact_name            |   phone
------------------+-----------------------------------+------------
 collection_point | Punto de Compra Chinßcota 1       | 6018933221
 collection_point | Punto de Compra Convenci¾n 1      | 6013582031
 collection_point | Punto de Compra El Carmen 1       | 6026129845
 collection_point | Punto de Compra El Zulia 1        | 6014148127
 collection_point | Punto de Compra Herrßn 1          | 6017529911
 collection_point | Punto de Compra Herrßn 2          | 6079941701
 collection_point | Punto de Compra Oca±a 1           | 6032506284
 collection_point | Punto de Compra Sardinata 1       | 6039449180
 farmer           | Abelardo PÚrez Castro             | 3245612074
 farmer           | Adriana Mosquera Ospina           | 3118036799
 farmer           | Alba RÝos RodrÝguez               | 3179156514
 farmer           | Alba Vargas Losada                | 3242791385
 farmer           | Alba Vera Calder¾n                | 3055735681
 farmer           | Alberto ┴lvarez Villamizar        | 3025342853
 farmer           | Alberto Bastidas RodrÝguez        | 3145736315
 farmer           | Alberto Ortiz Lasso               | 3228095091
 farmer           | Alejandra Andrea Mosquera Moreno  | 3115813829
 farmer           | Alejandra Molina Torres           | 3102358832
 farmer           | Alejandro Narvßez PolanÝa         | 3189266165
 farmer           | ┴lvaro Berm·dez MarÝn             | 3109599129
 farmer           | ┴lvaro Correa RÝos                | 3125462491
 farmer           | ┴lvaro Valencia Rivera            | 3218112033
 farmer           | Amparo Bastidas Chamorro          | 3023807439
 farmer           | Amparo Duarte Duque               | 3059102841
 farmer           | AncÝzar Arango Silva              | 3053453318
 farmer           | AncÝzar Cristian PolanÝa Delgado  | 3028825809
 farmer           | Andrea Cardona Ruiz               | 3007467744
 farmer           | AndrÚs Emilio Valencia Parra      | 3177768578
 farmer           | ┴ngela Beatriz Sandoval Berm·dez  | 3505232225
 farmer           | ┴ngela Tovar Lasso                | 3177458442
 farmer           | AnÝbal Silva Villamizar           | 3196176936
 farmer           | Antonio Bastidas RodrÝguez        | 3508682050
 farmer           | Antonio DÝaz VÚlez                | 3013067467
 farmer           | Arturo Contreras Pe±a             | 3116255536
 farmer           | Arturo Hernßndez Uribe            | 3058169707
 farmer           | Arturo Tovar Calder¾n             | 3023121990
 farmer           | Aura Castillo Henao               | 3136723568
 farmer           | Aura Torres Ortega                | 3136363548
 farmer           | Beatriz Hernßndez Mu±oz           | 3169006643
 farmer           | Camila Sßnchez Pinz¾n             | 3053337474
 farmer           | Camilo Arias Mora                 | 3045535545
 farmer           | Camilo Ivßn Calder¾n Trujillo     | 3167509635
 farmer           | Carlos Castillo Torres            | 3197585250
 farmer           | Carlos GutiÚrrez Pab¾n            | 3223406765
 farmer           | Carmen Cßrdenas Moreno            | 3149324862
 farmer           | Cecilia Lorena DÝaz GarcÝa        | 3207660684
 farmer           | Cristian Herrera Zuluaga          | 3242295228
 farmer           | Daniel Bonilla Duarte             | 3234592947
 farmer           | Daniel HÚctor Duque Ruiz          | 3242698476
 farmer           | Daniela Lozano Castro             | 3185641970
 farmer           | David Germßn Romero Bonilla       | 3018117176
 farmer           | David Jaimes Ruiz                 | 3132431627
 farmer           | David Perdomo Mosquera            | 3007586507
 farmer           | David Zapata Arias                | 3013691068
 farmer           | Diana DÝaz Medina                 | 3023178503
 farmer           | Diana Isabella Molina Moreno      | 3207898298
 farmer           | Diana Londo±o Ramos               | 3124456518
 farmer           | Diana Lozano Rinc¾n               | 3506302080
 farmer           | Diego Ni±o Hernßndez              | 3103428954
 farmer           | Diego Rivera JimÚnez              | 3508307641
 farmer           | Dora Hernßndez Correa             | 3166719225
 farmer           | Dora LucÝa Uribe Arango           | 3173140479
 farmer           | ╔dgar Burbano Arango              | 3203780826
 farmer           | Edilma ┴lvarez Bonilla            | 3236902029
 farmer           | Edilma Gabriela Arias ┴lvarez     | 3213658326
 farmer           | Edilma Rivera Rivera              | 3126087263
 farmer           | EfraÝn Ortega Correa              | 3504175536
 farmer           | EfraÝn Pinz¾n Cabrera             | 3216450755
 farmer           | EfraÝn Ricardo Contreras Ospina   | 3147500823
 farmer           | Elsa Ibarra Molina                | 3189660702
 farmer           | Elsa MarÝn Henao                  | 3207549458
 farmer           | Elsa MejÝa Vera                   | 3019766136
 farmer           | Elsa Ramos Cßrdenas               | 3223652167
 farmer           | Emilio Berm·dez Rojas             | 3142064892
 farmer           | Emilio Carrillo Perdomo           | 3135267851
 farmer           | Emilio Delgado Molina             | 3118015821
 farmer           | Erika RÝos Sußrez                 | 3235535099
 farmer           | Esperanza Jaimes Vera             | 3007738061
 farmer           | Esperanza Romero Betancur         | 3029623613
 farmer           | Esperanza Valencia Ortiz          | 3111830019
 farmer           | Esteban Salazar Parra             | 3162718294
 farmer           | Fabio DÝaz CuÚllar                | 3004527998
 farmer           | Fabio Hernßndez Lasso             | 3246919070
 farmer           | Fabio Luis Valencia RamÝrez       | 3007371586
 farmer           | Fanny Montoya Valencia            | 3226927113
 farmer           | Felipe Camilo RÝos Ospina         | 3243938067
 farmer           | Fernando Burbano Fl¾rez           | 3028675754
 farmer           | Fernando Galvis Duarte            | 3126767373
 farmer           | Fernando Rojas Cßrdenas           | 3235672830
 farmer           | Francisco RamÝrez Sandoval        | 3051595847
 farmer           | Francisco Restrepo Perdomo        | 3158258103
 farmer           | Gabriela Carolina Ni±o Ortiz      | 3225832230
 farmer           | Gabriela RodrÝguez Ortega         | 3163610048
 farmer           | Gladys Patricia Sandoval Duarte   | 3042274831
 farmer           | Gloria Aura RÝos Vera             | 3022197781
 farmer           | Gloria MarÝn Rivera               | 3225571567
 farmer           | Gloria Tovar Benavides            | 3041469978
 farmer           | Guillermo Pedro Arias RodrÝguez   | 3131845672
 farmer           | Guillermo PÚrez PÚrez             | 3015741336
 farmer           | Gustavo Heriberto Torres Guerrero | 3225736942
 farmer           | Gustavo Ibarra Agudelo            | 3506003684
 farmer           | Gustavo MarÝn Sandoval            | 3205233566
 farmer           | Gustavo Moreno L¾pez              | 3026442670
 farmer           | Gustavo Mosquera L¾pez            | 3119000149
 farmer           | Gustavo Parra Ortiz               | 3218747954
 farmer           | Gustavo Pedro Romero Pinz¾n       | 3108757369
 farmer           | Heriberto AndrÚs CuÚllar Romero   | 3506087296
 farmer           | Heriberto JimÚnez Cßceres         | 3164266457
 farmer           | Hernando Miguel JimÚnez Restrepo  | 3048547264
 farmer           | Hernando Montoya Agudelo          | 3218003724
 farmer           | Hugo JimÚnez Parra                | 3244209117
 farmer           | InÚs Duque Cßrdenas               | 3218255507
 farmer           | InÚs Erazo Hernßndez              | 3218610130
 farmer           | InÚs JimÚnez Jaimes               | 3104090231
 farmer           | InÚs LucÝa DÝaz CuÚllar           | 3507141858
 farmer           | InÚs PolanÝa Bedoya               | 3228967635
 farmer           | Isabella Barrera Cabrera          | 3041744702
 farmer           | Isabella Mosquera Sandoval        | 3168625937
 farmer           | Ivßn Berm·dez Fl¾rez              | 3139698870
 farmer           | Ivßn Jaime Cßceres Galvis         | 3047673614
 farmer           | Ivßn Zapata Ortiz                 | 3143905175
 farmer           | Jaime MarÝn Hernßndez             | 3114778905
 farmer           | Jaime Santiago CuÚllar Cßceres    | 3019841594
 farmer           | Jaime Wilmer Ortiz Vargas         | 3233745261
 farmer           | Jairo Molina Pab¾n                | 3018237329
 farmer           | Jairo Romero GutiÚrrez            | 3209752935
 farmer           | Javier Burbano Molina             | 3158636721
 farmer           | Javier Gonzßlez Zuluaga           | 3504451578
 farmer           | Javier Pinz¾n JimÚnez             | 3132924855
 farmer           | JazmÝn Burbano Jaimes             | 3202058604
 farmer           | JazmÝn Silva G¾mez                | 3177516031
 farmer           | Juan Ortega Zapata                | 3217129169
 farmer           | Julißn Germßn Delgado Villamizar  | 3225663039
 farmer           | Julißn Guillermo Valencia Narvßez | 3202082759
 farmer           | Julißn Pe±a Betancur              | 3239120208
 farmer           | Juliana Ana MejÝa MejÝa           | 3163353607
 farmer           | Juliana Ortega Osorio             | 3206119667
 farmer           | Laura Zuluaga Benavides           | 3243686927
 farmer           | Libardo Lasso Serrano             | 3113250445
 farmer           | Libardo Trujillo Torres           | 3162889357
 farmer           | Liliana Luisa Chamorro VÚlez      | 3002682380
 farmer           | Liliana Mosquera Uribe            | 3119365364
 farmer           | Liliana PÚrez Parra               | 3059370269
 farmer           | Luis Jaimes Salazar               | 3116927952
 farmer           | Luis Mosquera Perdomo             | 3135244980
 farmer           | Luisa Caicedo Restrepo            | 3232775188
 farmer           | Luisa Lozano Losada               | 3163744297
 farmer           | Luisa Montoya MejÝa               | 3204290515
 farmer           | Luz Martha Jaimes Berm·dez        | 3028082182
 farmer           | Luz Ni±o Guerrero                 | 3192252062
 farmer           | Luz Osorio CuÚllar                | 3142214272
 farmer           | Luz Rojas Torres                  | 3139216657
 farmer           | Manuel Agudelo JimÚnez            | 3219718862
 farmer           | Manuel Quintero Arias             | 3201475349
 farmer           | Manuela Bastidas Medina           | 3508652479
 farmer           | Manuela Yolanda Benavides Delgado | 3229418470
 farmer           | MarÝa Burbano Duarte              | 3183590387
 farmer           | Mariana Barrera Correa            | 3126485460
 farmer           | Mariana Ortiz Ruiz                | 3004621446
 farmer           | Mario Rinc¾n Sußrez               | 3135034800
 farmer           | Mario RÝos Ibarra                 | 3188497714
 farmer           | Mario Uribe CuÚllar               | 3104008873
 farmer           | Marleny Agudelo Sandoval          | 3242280898
 farmer           | Marleny ┴lvarez Correa            | 3232410671
 farmer           | Marleny Pinz¾n Delgado            | 3227789082
 farmer           | Martha Carolina PÚrez Jaimes      | 3106136802
 farmer           | Martha Giraldo Arango             | 3243151645
 farmer           | Mauricio Pe±a Bastidas            | 3156616125
 farmer           | Miguel Villamizar Correa          | 3104065619
 farmer           | M¾nica ┴lvarez Carrillo           | 3059237130
 farmer           | M¾nica Claudia Fl¾rez Gonzßlez    | 3139496613
 farmer           | M¾nica Elsa RamÝrez Castro        | 3169846360
 farmer           | Myriam Fl¾rez Gonzßlez            | 3129681922
 farmer           | Myriam Sandoval Osorio            | 3016344667
 farmer           | Myriam Valencia Moreno            | 3241389451
 farmer           | Myriam Yuliana Arango Narvßez     | 3178267449
 farmer           | Natalia Ospina Burbano            | 3024148071
 farmer           | Natalia Ramos Vargas              | 3001623960
 farmer           | Nelson Bedoya VÚlez               | 3194564518
 farmer           | Nelson Chamorro Vera              | 3001185317
 farmer           | Nelson Samuel MejÝa Vera          | 3022063857
 farmer           | Nicolßs Gonzßlez RodrÝguez        | 3023800384
 farmer           | Nicolßs Rivera Duque              | 3029310183
 farmer           | Nicolßs Sßnchez RodrÝguez         | 3114761362
 farmer           | Nubia Juliana Caicedo Medina      | 3183905612
 farmer           | Nubia Natalia Henao RamÝrez       | 3505807029
 farmer           | Olga Luisa Zapata Rivera          | 3025693162
 farmer           | Orlando Salazar Berm·dez          | 3141904023
 farmer           | Ëscar Ospina Gonzßlez             | 3153244524
 farmer           | Ëscar Rivera Tovar                | 3112576000
 farmer           | Patricia Amparo Rojas RÝos        | 3186792700
 farmer           | Pedro RamÝrez Barrera             | 3236105041
 farmer           | Rafael Francisco Rinc¾n Romero    | 3235869676
 farmer           | Ramiro Barrera Villamizar         | 3056539829
 farmer           | Ramiro Parra Trujillo             | 3207383618
 farmer           | Ramiro Zuluaga Duque              | 3143338682
 farmer           | Reinaldo Jorge Sßnchez Agudelo    | 3007420608
 farmer           | Reinaldo Romero Agudelo           | 3028845789
 farmer           | Reinaldo Sußrez PolanÝa           | 3128378640
 farmer           | Ricardo Castro Contreras          | 3197205687
 farmer           | RocÝo Alba Ortega Serrano         | 3249488512
 farmer           | RocÝo ┴lvarez Cßrdenas            | 3047898372
 farmer           | RocÝo Bastidas Sußrez             | 3015208796
 farmer           | RocÝo Manuela Jaimes Cardona      | 3113703408
 farmer           | Rodrigo Guillermo Berm·dez Mu±oz  | 3051351571
 farmer           | Rodrigo Nelson Cabrera Villamizar | 3502554241
 farmer           | Rosa RÝos Cßrdenas                | 3175410872
 farmer           | RubÚn Ramos Chamorro              | 3244273375
 farmer           | RubÚn Villamizar MejÝa            | 3167701408
 farmer           | Ruth JimÚnez Guerrero             | 3502547964
 farmer           | Ruth RodrÝguez PÚrez              | 3021808053
 farmer           | Sandra Henao Jaimes               | 3215284608
 farmer           | Sandra Ortega GarcÝa              | 3128326631
 farmer           | Sandra Sandoval Ortega            | 3026392429
 farmer           | Santiago Berm·dez Ruiz            | 3003993000
 farmer           | Sara Losada GutiÚrrez             | 3176835753
 farmer           | SofÝa MarÝn Rojas                 | 3111640267
 farmer           | Stella MarÝn Osorio               | 3022845525
 farmer           | Teresa Adriana Valencia Moreno    | 3186216099
 farmer           | Teresa Ibarra Caicedo             | 3029275295
 farmer           | Teresa Torres Giraldo             | 3173921806
 farmer           | Valentina Mora Rangel             | 3045031417
 farmer           | Valentina Zapata Valencia         | 3166445539
 farmer           | Viviana Arias RamÝrez             | 3204850778
 farmer           | Viviana Gonzßlez Molina           | 3213218779
 farmer           | Wilmer Montoya RodrÝguez          | 3217677705
 farmer           | Wilmer PÚrez Chamorro             | 3124455023
 farmer           | Wilson L¾pez Villamizar           | 3055094275
 farmer           | Wilson Parra Prada                | 3217256211
 farmer           | Wilson Yeison DÝaz RamÝrez        | 3227044397
 farmer           | Yeison Medina Londo±o             | 3501426840
 farmer           | Yesenia Berm·dez Henao            | 3141005257
 farmer           | Yesenia Rinc¾n Caicedo            | 3041422228
 farmer           | Yesenia Silva Henao               | 3146481441
 farmer           | Yuliana JazmÝn MejÝa Rangel       | 3135795746
 farmer           | Yuliana RodrÝguez Vargas          | 3173571208
 farmer           | Yuliana Sandoval Bedoya           | 3157502482
 farmer           | Yuliana Zapata Parra              | 3172431642
(238 rows)

*/
