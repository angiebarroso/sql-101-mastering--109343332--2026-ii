-- Exercise 10 - b
-- Farmers with total net amount greater than 5,000,000 COP

SELECT
    T4.document_number AS document,
    T4.first_name AS first_name,
    T4.last_name AS last_name,
    COUNT(T1.settlement_id) AS settlements_count,
    SUM(T1.net_amount) AS total_net_cop
FROM pay.settlements AS T1
INNER JOIN buy.deliveries AS T2
    ON T1.delivery_id = T2.delivery_id
INNER JOIN farm.farms AS T3
    ON T2.farm_id = T3.farm_id
INNER JOIN farm.farmers AS T4
    ON T3.farmer_id = T4.farmer_id
WHERE T2.delivery_id LIKE 'DLV-202609%'
GROUP BY T4.farmer_id, T4.document_number, T4.first_name, T4.last_name
HAVING SUM(T1.net_amount) > 5000000
ORDER BY total_net_cop DESC;

/*
  document  |     first_name      |       last_name       | settlements_count | total_net_cop
------------+---------------------+-----------------------+-------------------+---------------
 30933664   | Cristian            | GarcÝa Contreras      |                 3 |   15493357.77
 1071161211 | Alba                | Mu±oz RamÝrez         |                 2 |   14576631.94
 526195285  | Jairo               | Valencia Zapata       |                 2 |   14528146.87
 337551898  | Alejandro Mateo     | Fl¾rez Uribe          |                 2 |   14460246.30
 854161034  | Luisa Martha        | Caicedo Romero        |                 1 |   13335230.83
 782091682  | Luisa               | Duque Torres          |                 2 |   12843595.73
 549378351  | Dora                | Galvis Ospina         |                 3 |   12821153.68
 182907696  | Jorge               | Duarte Zapata         |                 2 |   12777306.01
 446732017  | Reinaldo            | Ruiz CuÚllar          |                 2 |   12310076.05
 628772920  | Aura                | Osorio Medina         |                 2 |   12133626.08
 860889225  | Wilmer              | Barrera Vera          |                 2 |   12078718.23
 610231611  | Orlando             | Pe±a Vera             |                 1 |   12005420.07
 329350370  | RubÚn               | Quintero Chamorro     |                 3 |   11967062.39
 894974935  | Alejandro           | Ni±o Fl¾rez           |                 2 |   11914996.69
 1105751836 | Antonio             | Moreno Rojas          |                 3 |   11712814.76
 967037103  | Natalia             | Correa Jaimes         |                 2 |   11531226.36
 695945885  | Carolina            | Correa Pinz¾n         |                 2 |   11381891.73
 420092042  | Samuel              | Caicedo Mora          |                 2 |   11204499.77
 1119357624 | Yesenia Nubia       | Montoya Giraldo       |                 1 |   11114680.80
 372230229  | Sandra              | Rojas Calder¾n        |                 2 |   11080803.26
 917466527  | Guillermo Gustavo   | Delgado Acevedo       |                 1 |   11032091.12
 331235063  | Samuel Ëscar        | Arias JimÚnez         |                 2 |   10994005.87
 732259866  | Gustavo             | MarÝn Burbano         |                 1 |   10976260.61
 639041437  | Alberto             | Rinc¾n Herrera        |                 1 |   10959451.38
 986072029  | Manuel              | Carrillo Betancur     |                 2 |   10910912.91
 872941046  | InÚs                | Cabrera DÝaz          |                 1 |   10800176.84
 841195935  | Santiago            | Galvis Guerrero       |                 1 |   10763485.08
 447176020  | Rosa                | Gonzßlez Bastidas     |                 1 |   10577379.54
 941274390  | Hernando Fabio      | Lozano Erazo          |                 2 |   10457056.62
 640932519  | Manuel Jorge        | RodrÝguez Benavides   |                 1 |   10445584.60
 1131046356 | Germßn Wilmer       | Correa Tovar          |                 2 |   10415535.36
 855012511  | Martha              | Pab¾n RodrÝguez       |                 1 |   10398924.90
 433221065  | Jaime               | Lasso PÚrez           |                 1 |   10315335.60
 753809573  | AnÝbal Libardo      | Cßrdenas Mosquera     |                 1 |   10291254.30
 435701329  | Myriam Mercedes     | Ortega Restrepo       |                 1 |   10288035.32
 29394305   | Fanny               | VÚlez Galvis          |                 1 |   10273917.15
 390661083  | Reinaldo            | Ospina Restrepo       |                 2 |   10270314.78
 1094381845 | Laura               | ┴lvarez Torres        |                 1 |   10264548.60
 838170316  | MarÝa               | Bastidas Cardona      |                 1 |   10190032.14
 627926203  | Diego Ëscar         | Burbano Pab¾n         |                 2 |   10163972.22
 1099222171 | HÚctor              | Burbano Perdomo       |                 2 |   10139600.96
 10184647   | Mariana             | Hernßndez Delgado     |                 2 |   10130725.77
 418825643  | Alba                | Cßrdenas Cßceres      |                 1 |    9976552.30
 481542823  | Hernando            | Duque Burbano         |                 1 |    9954728.48
 542024763  | JazmÝn              | Zapata Prada          |                 1 |    9937740.78
 694987077  | Mariana             | Salazar GutiÚrrez     |                 1 |    9910717.68
 203027394  | Sebastißn           | Rinc¾n Mu±oz          |                 1 |    9889467.70
 66156104   | Samuel              | Agudelo Erazo         |                 2 |    9863701.42
 222456001  | Guillermo           | G¾mez Castillo        |                 1 |    9835521.53
 141177553  | Carolina            | Cabrera Villamizar    |                 2 |    9820627.52
 603943461  | Rodrigo             | GutiÚrrez Quintero    |                 1 |    9791328.20
 75565393   | Jairo               | Quintero Valencia     |                 2 |    9771940.96
 607171317  | Jorge               | Arango Prada          |                 2 |    9712350.34
 383800849  | AnÝbal              | Restrepo Mora         |                 1 |    9695283.12
 391702233  | Liliana Andrea      | CuÚllar RÝos          |                 2 |    9677646.40
 679902982  | Javier              | Hernßndez Burbano     |                 1 |    9621302.10
 1141540771 | Nelson Rafael       | Lasso Losada          |                 2 |    9608802.71
 699067712  | Manuel              | MartÝnez Ortega       |                 1 |    9569074.84
 1091399264 | Mariana             | Losada Castillo       |                 2 |    9551133.74
 985613948  | Javier              | Trujillo Burbano      |                 2 |    9505217.98
 547820857  | MarÝa               | RÝos Galvis           |                 2 |    9502296.60
 147174543  | Francisco           | Romero GutiÚrrez      |                 1 |    9461765.52
 561277054  | Gabriela Andrea     | Hernßndez Medina      |                 2 |    9423761.66
 761934686  | AncÝzar             | Ruiz Zuluaga          |                 2 |    9416253.01
 882396053  | Carmen ┴ngela       | Rojas Burbano         |                 1 |    9400962.01
 1143359196 | Miguel Yeison       | Jaimes Burbano        |                 1 |    9381770.75
 675579799  | Carlos              | Duarte Rinc¾n         |                 1 |    9379129.50
 1081318187 | ╔dgar               | Castillo JimÚnez      |                 1 |    9358315.96
 1113181730 | Gloria              | Bedoya Carrillo       |                 2 |    9329472.73
 706737333  | Beatriz             | Pe±a Bastidas         |                 1 |    9327870.51
 151471107  | Antonio             | DÝaz Zuluaga          |                 2 |    9302534.38
 193500606  | Cristian            | Serrano Narvßez       |                 1 |    9287105.72
 754693942  | Manuela             | Berm·dez Cßceres      |                 1 |    9274948.23
 1009634912 | Reinaldo            | Romero Pab¾n          |                 2 |    9249475.42
 1143154791 | Manuel              | Cabrera Ospina        |                 2 |    9179381.03
 273112986  | RocÝo               | Zapata Sßnchez        |                 1 |    9147383.04
 1034587321 | Gloria              | MartÝnez PÚrez        |                 2 |    9133737.24
 683666827  | RocÝo               | Rinc¾n Lasso          |                 1 |    9130143.80
 923773095  | Miguel              | Montoya Vargas        |                 1 |    9128679.68
 207786604  | Teresa              | Trujillo Montoya      |                 1 |    9097410.32
 595945812  | Mario               | Duarte Torres         |                 1 |    9076532.52
 313050317  | Guillermo           | L¾pez Betancur        |                 1 |    9073991.12
 640762785  | Lorena              | Rinc¾n Parra          |                 2 |    9060284.08
 837000958  | Myriam              | Londo±o Duarte        |                 3 |    9036928.84
 971402924  | Alberto Ivßn        | Cßceres Barrera       |                 1 |    9002255.00
 211817807  | Paola               | Arias ┴lvarez         |                 1 |    8966638.32
 1007212699 | Amparo Edilma       | Ibarra Prada          |                 1 |    8929768.32
 716491021  | Cecilia             | Agudelo Losada        |                 1 |    8922750.26
 1022834339 | Cecilia LucÝa       | Mosquera Pab¾n        |                 2 |    8920019.18
 1108052157 | Alejandra           | Torres Barrera        |                 1 |    8889139.74
 1139141308 | Gilberto Mauricio   | Betancur Duarte       |                 1 |    8877015.64
 216803411  | Diana               | Calder¾n Silva        |                 1 |    8871595.66
 642262980  | Marcela MarÝa       | Barrera Villamizar    |                 2 |    8846623.83
 676626888  | Jorge JosÚ          | Trujillo Villamizar   |                 1 |    8816362.20
 273878227  | Lorena              | Chamorro Trujillo     |                 2 |    8809770.55
 40085628   | Blanca              | G¾mez Bonilla         |                 1 |    8801893.78
 806090001  | Diana               | Sußrez Ortiz          |                 1 |    8797042.83
 449225161  | RocÝo               | Molina Uribe          |                 2 |    8776995.91
 743733847  | Paola               | MartÝnez Duarte       |                 1 |    8774766.69
 254153324  | Alberto             | DÝaz Castillo         |                 2 |    8766274.26
 642090734  | AnÝbal              | MarÝn Contreras       |                 1 |    8724602.88
 293132029  | Claudia             | Ramos Cabrera         |                 2 |    8722081.90
 421341188  | Jorge               | MejÝa Galvis          |                 1 |    8688177.75
 526377934  | Gloria              | Ruiz Duarte           |                 1 |    8673087.62
 40509966   | Beatriz Diana       | Pinz¾n Cßceres        |                 1 |    8652657.52
 310399566  | Rafael Emilio       | MartÝnez Pe±a         |                 1 |    8650328.39
-- Más  --
*/
