/*Création de dix utilisateurs commerciaux*/

CREATE USER 'com1'@'127.0.0.1' IDENTIFIED BY 'com1';
CREATE USER 'com2'@'127.0.0.1' IDENTIFIED BY 'com2';
CREATE USER 'com3'@'127.0.0.1' IDENTIFIED BY 'com3';
CREATE USER 'com4'@'127.0.0.1' IDENTIFIED BY 'com4';
CREATE USER 'com5'@'127.0.0.1' IDENTIFIED BY 'com5';
CREATE USER 'com6'@'127.0.0.1' IDENTIFIED BY 'com6';
CREATE USER 'com7'@'127.0.0.1' IDENTIFIED BY 'com7';
CREATE USER 'com8'@'127.0.0.1' IDENTIFIED BY 'com8';
CREATE USER 'com9'@'127.0.0.1' IDENTIFIED BY 'com9';
CREATE USER 'com10'@'127.0.0.1' IDENTIFIED BY 'com10';




/* Création du role pour les tables catégorie et produits*/
CREATE ROLE 'gescomprodcat'@'127.0.0.1';

/* Attribution au role gescomprocat des privilèges de lecture insertion modification et suppression sur tables produits et catégories*/
GRANT select, insert, delete, update 
ON gescomint.categories 
TO 'gescomprodcat'@'127.0.0.1';

GRANT select, insert, delete, update 
ON gescomint.products
TO 'gescomprodcat'@'127.0.0.1';

/* Création du role pour les tables commandes, détails commande et clients*/
CREATE ROLE 'gescomordodecust'@'127.0.0.1';


/* Attribution au role gescomordodecust du priviléges de lecture sur table commande, details commandes et clients */
GRANT select
ON gescomint.customers 
TO 'gescomordodecust'@'127.0.0.1';

GRANT select
ON gescomint.orders 
TO 'gescomordodecust'@'127.0.0.1';

GRANT select
ON  gescomint.orders_details
TO 'gescomordodecust'@'127.0.0.1';

/*Affectation des 2 rôle aux 10 commerciaux*/

GRANT 'gescomordodecust'@'127.0.0.1'
TO 'com1'@'127.0.0.1', 'com2'@'127.0.0.1','com3'@'127.0.0.1','com4'@'127.0.0.1','com5'@'127.0.0.1','com6'@'127.0.0.1','com1'@'127.0.0.1','com7'@'127.0.0.1','com8'@'127.0.0.1','com9'@'127.0.0.1','com10'@'127.0.0.1';  

GRANT 'gescomprodcat'@'127.0.0.1'
TO 'com1'@'127.0.0.1', 'com2'@'127.0.0.1','com3'@'127.0.0.1','com4'@'127.0.0.1','com5'@'127.0.0.1','com6'@'127.0.0.1','com7'@'127.0.0.1','com8'@'127.0.0.1','com9'@'127.0.0.1','com10'@'127.0.0.1';   

/*assignation des rôles pour test, via la commande SET DEFAULT ROLE */

SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com1'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com2'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com3'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com4'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com5'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com6'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com7'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com8'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com9'@'127.0.0.1';
SET DEFAULT ROLE 'gescomprodcat'@'127.0.0.1' TO 'com10'@'127.0.0.1';


SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com1'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com2'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com3'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com4'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com5'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com6'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com7'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com8'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com9'@'127.0.0.1';
SET DEFAULT ROLE 'gescomordodecust'@'127.0.0.1' TO 'com10'@'127.0.0.1';