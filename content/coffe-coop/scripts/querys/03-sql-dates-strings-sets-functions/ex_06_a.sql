-- Exercise 06 - a
-- Female farmers of Pamplona with short name (initial + last names) and phone

SELECT
    CONCAT(SUBSTRING(T1.first_name FROM 1 FOR 1), '. ', T1.last_name) AS short_name,
    T1.phone_number AS phone
FROM farm.farmers AS T1
WHERE T1.gender = 'F'
  AND T1.municipality_code = '54518'
ORDER BY T1.last_name ASC, T1.first_name ASC;

/*
short_name      |   phone
----------------------+------------
 M. Agudelo Sandoval  | 3242280898
 E. ┴lvarez Bonilla   | 3236902029
 R. ┴lvarez Cßrdenas  | 3047898372
 M. ┴lvarez Carrillo  | 3059237130
 M. ┴lvarez Correa    | 3232410671
 M. Arango Narvßez    | 3178267449
 E. Arias ┴lvarez     | 3213658326
 V. Arias RamÝrez     | 3204850778
 I. Barrera Cabrera   | 3041744702
 M. Barrera Correa    | 3126485460
 A. Bastidas Chamorro | 3023807439
 M. Bastidas Medina   | 3508652479
 R. Bastidas Sußrez   | 3015208796
 M. Benavides Delgado | 3229418470
 Y. Berm·dez Henao    | 3141005257
 M. Burbano Duarte    | 3183590387
 J. Burbano Jaimes    | 3202058604
 N. Caicedo Medina    | 3183905612
 L. Caicedo Restrepo  | 3232775188
 C. Cßrdenas Moreno   | 3149324862
 A. Cardona Ruiz      | 3007467744
 A. Castillo Henao    | 3136723568
 L. Chamorro VÚlez    | 3002682380
 I. DÝaz CuÚllar      | 3507141858
 C. DÝaz GarcÝa       | 3207660684
 D. DÝaz Medina       | 3023178503
 A. Duarte Duque      | 3059102841
 I. Duque Cßrdenas    | 3218255507
 I. Erazo Hernßndez   | 3218610130
 M. Fl¾rez Gonzßlez   | 3139496613
 M. Fl¾rez Gonzßlez   | 3129681922
 M. Giraldo Arango    | 3243151645
 V. Gonzßlez Molina   | 3213218779
 S. Henao Jaimes      | 3215284608
 N. Henao RamÝrez     | 3505807029
 D. Hernßndez Correa  | 3166719225
 B. Hernßndez Mu±oz   | 3169006643
 T. Ibarra Caicedo    | 3029275295
 E. Ibarra Molina     | 3189660702
 L. Jaimes Berm·dez   | 3028082182
 R. Jaimes Cardona    | 3113703408
 E. Jaimes Vera       | 3007738061
 R. JimÚnez Guerrero  | 3502547964
 I. JimÚnez Jaimes    | 3104090231
 S. Losada GutiÚrrez  | 3176835753
 D. Lozano Castro     | 3185641970
 L. Lozano Losada     | 3163744297
 D. Lozano Rinc¾n     | 3506302080
 E. MarÝn Henao       | 3207549458
 S. MarÝn Osorio      | 3022845525
 S. MarÝn Rojas       | 3111640267
 J. MejÝa MejÝa       | 3163353607
 Y. MejÝa Rangel      | 3135795746
 E. MejÝa Vera        | 3019766136
 D. Molina Moreno     | 3207898298
 A. Molina Torres     | 3102358832
 L. Montoya MejÝa     | 3204290515
 F. Montoya Valencia  | 3226927113
 V. Mora Rangel       | 3045031417
 A. Mosquera Moreno   | 3115813829
 A. Mosquera Ospina   | 3118036799
 I. Mosquera Sandoval | 3168625937
 L. Mosquera Uribe    | 3119365364
 L. Ni±o Guerrero     | 3192252062
 G. Ni±o Ortiz        | 3225832230
 S. Ortega GarcÝa     | 3128326631
 J. Ortega Osorio     | 3206119667
 R. Ortega Serrano    | 3249488512
 M. Ortiz Ruiz        | 3004621446
 L. Osorio CuÚllar    | 3142214272
 N. Ospina Burbano    | 3024148071
 M. PÚrez Jaimes      | 3106136802
 L. PÚrez Parra       | 3059370269
 M. Pinz¾n Delgado    | 3227789082
 I. PolanÝa Bedoya    | 3228967635
 M. RamÝrez Castro    | 3169846360
 E. Ramos Cßrdenas    | 3223652167
 N. Ramos Vargas      | 3001623960
 Y. Rinc¾n Caicedo    | 3041422228
 R. RÝos Cßrdenas     | 3175410872
 A. RÝos RodrÝguez    | 3179156514
 E. RÝos Sußrez       | 3235535099
 G. RÝos Vera         | 3022197781
 E. Rivera Rivera     | 3126087263
 G. RodrÝguez Ortega  | 3163610048
 R. RodrÝguez PÚrez   | 3021808053
 Y. RodrÝguez Vargas  | 3173571208
 P. Rojas RÝos        | 3186792700
 L. Rojas Torres      | 3139216657
 E. Romero Betancur   | 3029623613
 C. Sßnchez Pinz¾n    | 3053337474
 Y. Sandoval Bedoya   | 3157502482
 ┴. Sandoval Berm·dez | 3505232225
 G. Sandoval Duarte   | 3042274831
 S. Sandoval Ortega   | 3026392429
 M. Sandoval Osorio   | 3016344667
 J. Silva G¾mez       | 3177516031
 Y. Silva Henao       | 3146481441
 T. Torres Giraldo    | 3173921806
 A. Torres Ortega     | 3136363548
 G. Tovar Benavides   | 3041469978
 ┴. Tovar Lasso       | 3177458442
 D. Uribe Arango      | 3173140479
 M. Valencia Moreno   | 3241389451
 T. Valencia Moreno   | 3186216099
 E. Valencia Ortiz    | 3111830019
 A. Vera Calder¾n     | 3055735681
 Y. Zapata Parra      | 3172431642
 O. Zapata Rivera     | 3025693162
 V. Zapata Valencia   | 3166445539
 L. Zuluaga Benavides | 3243686927
(111 rows)
*/
