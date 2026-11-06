-- Exercise 01 - a
-- Active farmers of municipality 54518 and their membership duration in days
SELECT T1.document_number AS document,
       T1.first_name,
       T1.last_name,
       T1.membership_date,
       AGE(CURRENT_DATE, T1.membership_date) AS antiguedad
FROM farm.farmers AS T1
WHERE T1.municipality_code = '54518'
ORDER BY T1.membership_date ASC;


/*
 document  |    first_name     |     last_name      | membership_date |        antiguedad
------------+-------------------+--------------------+-----------------+--------------------------
 402745033  | Julißn Guillermo  | Valencia Narvßez   | 1995-01-27      | 31 years 9 mons 9 days
 361839624  | RocÝo Alba        | Ortega Serrano     | 1995-07-10      | 31 years 3 mons 26 days
 546579335  | Wilson            | Parra Prada        | 1995-07-28      | 31 years 3 mons 8 days
 939635303  | Marleny           | ┴lvarez Correa     | 1996-03-20      | 30 years 7 mons 16 days
 748380481  | Teresa Adriana    | Valencia Moreno    | 1996-07-23      | 30 years 3 mons 13 days
 1012324420 | Martha Carolina   | PÚrez Jaimes       | 1996-11-22      | 29 years 11 mons 13 days
 230971064  | Manuel            | Agudelo JimÚnez    | 1997-03-29      | 29 years 7 mons 7 days
 483692716  | Ramiro            | Barrera Villamizar | 1997-04-08      | 29 years 6 mons 27 days
 677772599  | Guillermo         | PÚrez PÚrez        | 1997-05-17      | 29 years 5 mons 19 days
 59388780   | Juan              | Ortega Zapata      | 1997-07-13      | 29 years 3 mons 23 days
 789425487  | EfraÝn Ricardo    | Contreras Ospina   | 1997-07-21      | 29 years 3 mons 15 days
 172555225  | Edilma Gabriela   | Arias ┴lvarez      | 1998-03-24      | 28 years 7 mons 12 days
 659942505  | Mariana           | Barrera Correa     | 1998-03-27      | 28 years 7 mons 9 days
 914235490  | Ëscar             | Ospina Gonzßlez    | 1998-05-02      | 28 years 6 mons 3 days
 963176673  | Luis              | Mosquera Perdomo   | 1998-07-29      | 28 years 3 mons 7 days
 142439635  | Yeison            | Medina Londo±o     | 1998-09-29      | 28 years 1 mon 6 days
 534023693  | Myriam            | Valencia Moreno    | 1998-11-03      | 28 years 2 days
 446019320  | Fernando          | Rojas Cßrdenas     | 1998-12-16      | 27 years 10 mons 20 days
 33787285   | RubÚn             | Ramos Chamorro     | 1999-03-02      | 27 years 8 mons 3 days
 866702579  | ┴lvaro            | Berm·dez MarÝn     | 1999-06-21      | 27 years 4 mons 14 days
 155695928  | Martha            | Giraldo Arango     | 1999-09-14      | 27 years 1 mon 21 days
 1138270357 | Gustavo Heriberto | Torres Guerrero    | 1999-12-30      | 26 years 10 mons 6 days
 14046794   | Alberto           | ┴lvarez Villamizar | 2000-04-14      | 26 years 6 mons 21 days
 1185360305 | Ivßn              | Berm·dez Fl¾rez    | 2000-09-03      | 26 years 2 mons 2 days
 1145130870 | Elsa              | MarÝn Henao        | 2001-03-17      | 25 years 7 mons 19 days
 622024549  | Viviana           | Gonzßlez Molina    | 2001-04-18      | 25 years 6 mons 17 days
 824422301  | Hernando          | Montoya Agudelo    | 2001-07-22      | 25 years 3 mons 14 days
 1103932523 | Amparo            | Bastidas Chamorro  | 2001-08-01      | 25 years 3 mons 4 days
 712500733  | Esperanza         | Valencia Ortiz     | 2001-08-12      | 25 years 2 mons 24 days
 302059113  | Yuliana           | Sandoval Bedoya    | 2001-09-24      | 25 years 1 mon 11 days
 279649109  | Carlos            | Castillo Torres    | 2001-10-14      | 25 years 22 days
 951995464  | Wilson Yeison     | DÝaz RamÝrez       | 2001-12-19      | 24 years 10 mons 17 days
 934117740  | Gustavo           | MarÝn Sandoval     | 2002-04-29      | 24 years 6 mons 6 days
 44817013   | AnÝbal            | Silva Villamizar   | 2002-05-19      | 24 years 5 mons 17 days
 358946393  | Carmen            | Cßrdenas Moreno    | 2002-06-25      | 24 years 4 mons 10 days
 1079700992 | Camila            | Sßnchez Pinz¾n     | 2002-07-01      | 24 years 4 mons 4 days
 403413565  | Reinaldo          | Sußrez PolanÝa     | 2002-07-31      | 24 years 3 mons 5 days
 968133883  | Sandra            | Ortega GarcÝa      | 2002-08-11      | 24 years 2 mons 25 days
 940051048  | David Germßn      | Romero Bonilla     | 2002-10-11      | 24 years 25 days
 409306735  | M¾nica Claudia    | Fl¾rez Gonzßlez    | 2002-10-28      | 24 years 8 days
 699387247  | Fanny             | Montoya Valencia   | 2003-04-01      | 23 years 7 mons 4 days
 1135293825 | Abelardo          | PÚrez Castro       | 2003-06-19      | 23 years 4 mons 16 days
 478755763  | Nicolßs           | Rivera Duque       | 2003-08-11      | 23 years 2 mons 25 days
 1177165427 | Juliana           | Ortega Osorio      | 2003-09-04      | 23 years 2 mons 1 day
 788902052  | Camilo Ivßn       | Calder¾n Trujillo  | 2003-12-14      | 22 years 10 mons 22 days
 436957556  | JazmÝn            | Burbano Jaimes     | 2003-12-19      | 22 years 10 mons 17 days
 768461420  | Marleny           | Agudelo Sandoval   | 2003-12-24      | 22 years 10 mons 12 days
 932437698  | Amparo            | Duarte Duque       | 2003-12-29      | 22 years 10 mons 7 days
 1053774538 | Isabella          | Mosquera Sandoval  | 2004-07-01      | 22 years 4 mons 4 days
 553185238  | ┴ngela            | Tovar Lasso        | 2004-08-27      | 22 years 2 mons 9 days
 549054771  | MarÝa             | Burbano Duarte     | 2004-09-23      | 22 years 1 mon 12 days
 811526011  | Arturo            | Tovar Calder¾n     | 2004-10-18      | 22 years 18 days
 988262002  | JazmÝn            | Silva G¾mez        | 2005-03-22      | 21 years 7 mons 14 days
 91139207   | Mario             | Rinc¾n Sußrez      | 2005-04-23      | 21 years 6 mons 12 days
 456256773  | Luisa             | Lozano Losada      | 2005-08-31      | 21 years 2 mons 5 days
 637451261  | Arturo            | Contreras Pe±a     | 2005-12-04      | 20 years 11 mons 1 day
 137851877  | Gabriela          | RodrÝguez Ortega   | 2005-12-11      | 20 years 10 mons 25 days
 793273339  | Libardo           | Trujillo Torres    | 2005-12-16      | 20 years 10 mons 20 days
 1027436085 | Manuela           | Bastidas Medina    | 2006-04-11      | 20 years 6 mons 24 days
 846209158  | Daniel HÚctor     | Duque Ruiz         | 2006-04-18      | 20 years 6 mons 17 days
 257495692  | Myriam            | Fl¾rez Gonzßlez    | 2006-05-01      | 20 years 6 mons 4 days
 141739132  | Alba              | Vargas Losada      | 2006-06-01      | 20 years 5 mons 4 days
 788628125  | M¾nica            | ┴lvarez Carrillo   | 2006-09-25      | 20 years 1 mon 10 days
 727121857  | Alba              | Vera Calder¾n      | 2006-12-06      | 19 years 10 mons 30 days
 45024299   | Rodrigo Guillermo | Berm·dez Mu±oz     | 2006-12-11      | 19 years 10 mons 25 days
 674769591  | Ivßn              | Zapata Ortiz       | 2007-01-20      | 19 years 9 mons 16 days
 863442205  | Luz               | Rojas Torres       | 2007-04-09      | 19 years 6 mons 26 days
 828628976  | Diana             | DÝaz Medina        | 2007-05-01      | 19 years 6 mons 4 days
 94235991   | Rafael Francisco  | Rinc¾n Romero      | 2007-07-15      | 19 years 3 mons 21 days
 1189704117 | Mariana           | Ortiz Ruiz         | 2007-08-06      | 19 years 2 mons 30 days
 141613744  | ╔dgar             | Burbano Arango     | 2007-09-02      | 19 years 2 mons 3 days
 160538872  | Liliana           | Mosquera Uribe     | 2007-09-27      | 19 years 1 mon 8 days
 407150767  | Antonio           | Bastidas RodrÝguez | 2007-10-14      | 19 years 22 days
 302345504  | Elsa              | Ramos Cßrdenas     | 2007-11-17      | 18 years 11 mons 18 days
 529703819  | M¾nica Elsa       | RamÝrez Castro     | 2007-11-28      | 18 years 11 mons 7 days
 131166207  | Jaime             | MarÝn Hernßndez    | 2008-01-27      | 18 years 9 mons 9 days
 1052279913 | Luis              | Jaimes Salazar     | 2008-02-07      | 18 years 8 mons 27 days
 1148351420 | InÚs              | JimÚnez Jaimes     | 2008-02-11      | 18 years 8 mons 23 days
 796884051  | Yuliana           | Zapata Parra       | 2008-04-01      | 18 years 7 mons 4 days
 302223305  | Camilo            | Arias Mora         | 2008-05-10      | 18 years 5 mons 26 days
 252140095  | Alba              | RÝos RodrÝguez     | 2008-05-14      | 18 years 5 mons 22 days
 1167191036 | Yuliana JazmÝn    | MejÝa Rangel       | 2008-06-17      | 18 years 4 mons 18 days
 578947645  | Mario             | Uribe CuÚllar      | 2008-06-30      | 18 years 4 mons 5 days
 336247561  | Francisco         | RamÝrez Sandoval   | 2008-08-09      | 18 years 2 mons 27 days
 1167705984 | Teresa            | Ibarra Caicedo     | 2008-12-20      | 17 years 10 mons 16 days
 1144582366 | David             | Zapata Arias       | 2009-02-20      | 17 years 8 mons 13 days
 223974138  | Rodrigo Nelson    | Cabrera Villamizar | 2009-05-02      | 17 years 6 mons 3 days
 316655568  | Nubia Natalia     | Henao RamÝrez      | 2009-05-15      | 17 years 5 mons 21 days
 1157650796 | Sara              | Losada GutiÚrrez   | 2009-06-09      | 17 years 4 mons 26 days
 571748382  | Marleny           | Pinz¾n Delgado     | 2009-08-08      | 17 years 2 mons 28 days
 232229735  | Libardo           | Lasso Serrano      | 2010-02-09      | 16 years 8 mons 24 days
 811782754  | Nicolßs           | Gonzßlez RodrÝguez | 2010-03-05      | 16 years 8 mons
 554620706  | Nelson Samuel     | MejÝa Vera         | 2010-03-14      | 16 years 7 mons 22 days
 1143372198 | Nelson            | Chamorro Vera      | 2010-04-17      | 16 years 6 mons 18 days
 10424994   | Cristian          | Herrera Zuluaga    | 2010-04-28      | 16 years 6 mons 7 days
 102695503  | SofÝa             | MarÝn Rojas        | 2010-05-06      | 16 years 5 mons 30 days
 290597798  | Rosa              | RÝos Cßrdenas      | 2010-06-24      | 16 years 4 mons 11 days
 314914042  | Olga Luisa        | Zapata Rivera      | 2010-09-15      | 16 years 1 mon 20 days
 1015411133 | Santiago          | Berm·dez Ruiz      | 2010-11-30      | 15 years 11 mons 5 days
 360667240  | Gabriela Carolina | Ni±o Ortiz         | 2010-12-08      | 15 years 10 mons 28 days
 1090968710 | Ruth              | RodrÝguez PÚrez    | 2010-12-11      | 15 years 10 mons 25 days
 1001674689 | Jaime Santiago    | CuÚllar Cßceres    | 2011-01-17      | 15 years 9 mons 19 days
 21358854   | Manuela Yolanda   | Benavides Delgado  | 2011-02-27      | 15 years 8 mons 6 days
 478787290  | Ëscar             | Rivera Tovar       | 2011-03-11      | 15 years 7 mons 25 days
 1146928395 | Julißn Germßn     | Delgado Villamizar | 2011-11-24      | 14 years 11 mons 11 days
 647948165  | Yesenia           | Rinc¾n Caicedo     | 2011-12-05      | 14 years 11 mons
 388108693  | Miguel            | Villamizar Correa  | 2011-12-30      | 14 years 10 mons 6 days
 649244180  | RocÝo             | Bastidas Sußrez    | 2012-01-07      | 14 years 9 mons 29 days
 797017145  | Isabella          | Barrera Cabrera    | 2012-01-31      | 14 years 9 mons 5 days
 974842644  | Arturo            | Hernßndez Uribe    | 2012-06-16      | 14 years 4 mons 19 days
 302894847  | Reinaldo Jorge    | Sßnchez Agudelo    | 2012-07-06      | 14 years 3 mons 30 days
 641839251  | EfraÝn            | Ortega Correa      | 2012-07-19      | 14 years 3 mons 17 days
 549847293  | Wilmer            | PÚrez Chamorro     | 2012-09-16      | 14 years 1 mon 19 days
 938685616  | Sandra            | Sandoval Ortega    | 2013-01-06      | 13 years 9 mons 30 days
 1001030458 | Liliana Luisa     | Chamorro VÚlez     | 2013-01-09      | 13 years 9 mons 27 days
 783174188  | Luz               | Osorio CuÚllar     | 2013-05-28      | 13 years 5 mons 8 days
 699883472  | Ramiro            | Parra Trujillo     | 2013-07-07      | 13 years 3 mons 29 days
 860920785  | Hugo              | JimÚnez Parra      | 2013-09-02      | 13 years 2 mons 3 days
 1185523747 | Elsa              | Ibarra Molina      | 2013-09-15      | 13 years 1 mon 20 days
 299842243  | Wilmer            | Montoya RodrÝguez  | 2013-11-10      | 12 years 11 mons 25 days
 931079279  | Edilma            | ┴lvarez Bonilla    | 2013-12-14      | 12 years 10 mons 22 days
 406352604  | Jaime Wilmer      | Ortiz Vargas       | 2014-01-22      | 12 years 9 mons 14 days
 970305595  | Alejandra Andrea  | Mosquera Moreno    | 2014-02-21      | 12 years 8 mons 12 days
 343256743  | Dora              | Hernßndez Correa   | 2014-03-08      | 12 years 7 mons 28 days
 870240973  | Jairo             | Molina Pab¾n       | 2014-03-13      | 12 years 7 mons 23 days
 89157555   | Heriberto         | JimÚnez Cßceres    | 2014-07-17      | 12 years 3 mons 19 days
 1090578662 | Gladys Patricia   | Sandoval Duarte    | 2014-08-04      | 12 years 3 mons 1 day
 503402827  | Heriberto AndrÚs  | CuÚllar Romero     | 2014-09-05      | 12 years 2 mons
 91091638   | Daniel            | Bonilla Duarte     | 2014-09-29      | 12 years 1 mon 6 days
 520313287  | Beatriz           | Hernßndez Mu±oz    | 2014-12-04      | 11 years 11 mons 1 day
 918053770  | Nubia Juliana     | Caicedo Medina     | 2014-12-15      | 11 years 10 mons 21 days
 333176982  | Edilma            | Rivera Rivera      | 2014-12-20      | 11 years 10 mons 16 days
 449792023  | Myriam            | Sandoval Osorio    | 2015-01-12      | 11 years 9 mons 24 days
 550696749  | Viviana           | Arias RamÝrez      | 2015-04-16      | 11 years 6 mons 19 days
 211924295  | ┴lvaro            | Valencia Rivera    | 2015-05-03      | 11 years 6 mons 2 days
 95544811   | InÚs              | Duque Cßrdenas     | 2015-05-19      | 11 years 5 mons 17 days
 525766302  | Gustavo           | Ibarra Agudelo     | 2015-06-30      | 11 years 4 mons 5 days
 977130251  | InÚs LucÝa        | DÝaz CuÚllar       | 2015-07-08      | 11 years 3 mons 28 days
 410167282  | Gustavo Pedro     | Romero Pinz¾n      | 2015-08-25      | 11 years 2 mons 11 days
 24999630   | Esperanza         | Romero Betancur    | 2015-08-30      | 11 years 2 mons 6 days
 382766013  | Diana             | Londo±o Ramos      | 2015-11-05      | 11 years
 1148017860 | Fabio             | Hernßndez Lasso    | 2015-11-16      | 10 years 11 mons 19 days
 805029874  | Pedro             | RamÝrez Barrera    | 2015-11-19      | 10 years 11 mons 16 days
 897433183  | Patricia Amparo   | Rojas RÝos         | 2015-12-25      | 10 years 10 mons 11 days
 338193839  | Laura             | Zuluaga Benavides  | 2016-01-19      | 10 years 9 mons 17 days
 712758473  | Wilson            | L¾pez Villamizar   | 2016-02-19      | 10 years 8 mons 15 days
 42562183   | RocÝo Manuela     | Jaimes Cardona     | 2016-03-04      | 10 years 8 mons 1 day
 749444168  | Emilio            | Delgado Molina     | 2016-03-11      | 10 years 7 mons 25 days
 1180237528 | ┴ngela Beatriz    | Sandoval Berm·dez  | 2016-03-18      | 10 years 7 mons 18 days
 793512107  | Sandra            | Henao Jaimes       | 2016-03-31      | 10 years 7 mons 5 days
 587550249  | Gustavo           | Mosquera L¾pez     | 2016-05-14      | 10 years 5 mons 22 days
 765824560  | Manuel            | Quintero Arias     | 2016-07-15      | 10 years 3 mons 21 days
 1168119731 | Felipe Camilo     | RÝos Ospina        | 2016-07-27      | 10 years 3 mons 9 days
 756369749  | Andrea            | Cardona Ruiz       | 2016-07-29      | 10 years 3 mons 7 days
 754524782  | Diana             | Lozano Rinc¾n      | 2016-12-01      | 9 years 11 mons 4 days
 718906996  | Nelson            | Bedoya VÚlez       | 2016-12-09      | 9 years 10 mons 27 days
 35147265   | Carlos            | GutiÚrrez Pab¾n    | 2016-12-12      | 9 years 10 mons 24 days
 1117597835 | Cecilia Lorena    | DÝaz GarcÝa        | 2017-01-11      | 9 years 9 mons 25 days
 224364120  | Valentina         | Zapata Valencia    | 2017-01-12      | 9 years 9 mons 24 days
 1061690671 | Guillermo Pedro   | Arias RodrÝguez    | 2017-01-27      | 9 years 9 mons 9 days
 1060881964 | InÚs              | PolanÝa Bedoya     | 2017-03-05      | 9 years 8 mons
 746737893  | Natalia           | Ramos Vargas       | 2017-03-11      | 9 years 7 mons 25 days
 878614263  | Stella            | MarÝn Osorio       | 2017-03-13      | 9 years 7 mons 23 days
 734158943  | Alberto           | Bastidas RodrÝguez | 2017-03-21      | 9 years 7 mons 15 days
 644277425  | David             | Jaimes Ruiz        | 2017-05-24      | 9 years 5 mons 12 days
 276159211  | Francisco         | Restrepo Perdomo   | 2017-06-28      | 9 years 4 mons 7 days
 723123018  | Diego             | Ni±o Hernßndez     | 2017-07-04      | 9 years 4 mons 1 day
 599185252  | EfraÝn            | Pinz¾n Cabrera     | 2017-07-23      | 9 years 3 mons 13 days
 437443011  | Julißn            | Pe±a Betancur      | 2017-08-10      | 9 years 2 mons 26 days
 92240743   | Mario             | RÝos Ibarra        | 2017-09-05      | 9 years 2 mons
 433286601  | Esperanza         | Jaimes Vera        | 2017-11-07      | 8 years 11 mons 28 days
 1196615388 | Fernando          | Burbano Fl¾rez     | 2017-11-22      | 8 years 11 mons 13 days
 1109661392 | Fabio Luis        | Valencia RamÝrez   | 2017-12-20      | 8 years 10 mons 16 days
 700421194  | Teresa            | Torres Giraldo     | 2017-12-21      | 8 years 10 mons 15 days
 1089620113 | Myriam Yuliana    | Arango Narvßez     | 2018-02-23      | 8 years 8 mons 10 days
 135734682  | Diego             | Rivera JimÚnez     | 2018-03-26      | 8 years 7 mons 10 days
 254078333  | Alberto           | Ortiz Lasso        | 2018-04-22      | 8 years 6 mons 13 days
 808693611  | Natalia           | Ospina Burbano     | 2018-05-04      | 8 years 6 mons 1 day
 522380895  | InÚs              | Erazo Hernßndez    | 2018-05-11      | 8 years 5 mons 25 days
 425322677  | Luz Martha        | Jaimes Berm·dez    | 2018-07-11      | 8 years 3 mons 25 days
 455264704  | Valentina         | Mora Rangel        | 2018-08-12      | 8 years 2 mons 24 days
 754745808  | Jairo             | Romero GutiÚrrez   | 2018-08-15      | 8 years 2 mons 21 days
 463842401  | RocÝo             | ┴lvarez Cßrdenas   | 2018-09-19      | 8 years 1 mon 16 days
 1050862619 | Yesenia           | Silva Henao        | 2018-11-08      | 7 years 11 mons 27 days
 590872233  | Reinaldo          | Romero Agudelo     | 2019-02-22      | 7 years 8 mons 11 days
 356807172  | Aura              | Torres Ortega      | 2019-03-11      | 7 years 7 mons 25 days
 781810115  | Diana Isabella    | Molina Moreno      | 2019-04-12      | 7 years 6 mons 23 days
 850962053  | David             | Perdomo Mosquera   | 2019-05-15      | 7 years 5 mons 21 days
 737383707  | Yesenia           | Berm·dez Henao     | 2019-06-03      | 7 years 5 mons 2 days
 536338741  | Juliana Ana       | MejÝa MejÝa        | 2019-06-14      | 7 years 4 mons 21 days
 443361503  | RubÚn             | Villamizar MejÝa   | 2019-06-18      | 7 years 4 mons 17 days
 610678466  | Nicolßs           | Sßnchez RodrÝguez  | 2019-10-31      | 7 years 5 days
 716388403  | Emilio            | Carrillo Perdomo   | 2019-11-08      | 6 years 11 mons 27 days
 548464915  | Yuliana           | RodrÝguez Vargas   | 2019-11-10      | 6 years 11 mons 25 days
 134410171  | Orlando           | Salazar Berm·dez   | 2019-12-13      | 6 years 10 mons 23 days
 697099528  | Fabio             | DÝaz CuÚllar       | 2019-12-26      | 6 years 10 mons 10 days
 1196659084 | Ivßn Jaime        | Cßceres Galvis     | 2020-02-17      | 6 years 8 mons 17 days
 51802865   | Alejandro         | Narvßez PolanÝa    | 2020-02-23      | 6 years 8 mons 11 days
 870262750  | Gloria Aura       | RÝos Vera          | 2020-03-03      | 6 years 8 mons 2 days
 622105662  | Alejandra         | Molina Torres      | 2020-03-27      | 6 years 7 mons 9 days
 283636187  | Gustavo           | Moreno L¾pez       | 2020-04-07      | 6 years 6 mons 28 days
 614786053  | ┴lvaro            | Correa RÝos        | 2020-05-17      | 6 years 5 mons 19 days
 356207226  | Luisa             | Caicedo Restrepo   | 2020-06-09      | 6 years 4 mons 26 days
 802182926  | Antonio           | DÝaz VÚlez         | 2020-07-04      | 6 years 4 mons 1 day
 1171130241 | Elsa              | MejÝa Vera         | 2020-07-24      | 6 years 3 mons 12 days
 65169775   | Aura              | Castillo Henao     | 2020-08-08      | 6 years 2 mons 28 days
 1084721334 | Javier            | Gonzßlez Zuluaga   | 2020-09-01      | 6 years 2 mons 4 days
 374080696  | Fernando          | Galvis Duarte      | 2020-09-13      | 6 years 1 mon 22 days
 517430119  | Emilio            | Berm·dez Rojas     | 2020-10-04      | 6 years 1 mon 1 day
 273193028  | Erika             | RÝos Sußrez        | 2020-10-22      | 6 years 14 days
 942530661  | Javier            | Pinz¾n JimÚnez     | 2020-10-28      | 6 years 8 days
 811557533  | Adriana           | Mosquera Ospina    | 2020-10-28      | 6 years 8 days
 502796073  | AncÝzar           | Arango Silva       | 2020-11-24      | 5 years 11 mons 11 days
 1185160275 | Ramiro            | Zuluaga Duque      | 2020-11-24      | 5 years 11 mons 11 days
 765371022  | Luisa             | Montoya MejÝa      | 2021-01-12      | 5 years 9 mons 24 days
 922724022  | Esteban           | Salazar Parra      | 2021-01-22      | 5 years 9 mons 14 days
 727945493  | Gloria            | MarÝn Rivera       | 2021-01-28      | 5 years 9 mons 8 days
 1143295403 | Liliana           | PÚrez Parra        | 2021-01-31      | 5 years 9 mons 5 days
 914044314  | AncÝzar Cristian  | PolanÝa Delgado    | 2021-02-24      | 5 years 8 mons 9 days
 966970818  | Gustavo           | Parra Ortiz        | 2021-03-16      | 5 years 7 mons 20 days
 550093228  | Ruth              | JimÚnez Guerrero   | 2021-03-19      | 5 years 7 mons 17 days
 728596637  | Mauricio          | Pe±a Bastidas      | 2021-03-21      | 5 years 7 mons 15 days
 179146863  | Dora LucÝa        | Uribe Arango       | 2021-04-18      | 5 years 6 mons 17 days
 434293037  | Hernando Miguel   | JimÚnez Restrepo   | 2021-05-02      | 5 years 6 mons 3 days
 530206966  | Daniela           | Lozano Castro      | 2021-05-04      | 5 years 6 mons 1 day
 756405214  | Gloria            | Tovar Benavides    | 2021-05-16      | 5 years 5 mons 20 days
 56877324   | Javier            | Burbano Molina     | 2021-06-09      | 5 years 4 mons 26 days
 813687871  | AndrÚs Emilio     | Valencia Parra     | 2021-06-17      | 5 years 4 mons 18 days
 166716892  | Ricardo           | Castro Contreras   | 2021-06-18      | 5 years 4 mons 17 days
 155634182  | Luz               | Ni±o Guerrero      | 2021-06-20      | 5 years 4 mons 15 days
(230 rows)
*/