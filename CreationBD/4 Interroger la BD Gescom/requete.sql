/* Q1. Afficher dans l'ordre alphabétique et sur une seule colonne les noms et prénoms des employés qui ont des enfants, présenter d'abord ceux qui en ont le plus*/

select CONCAT(`emp_lastname`,' ', `emp_firstname`) as 'Nom Prénom employé', `emp_children` as 'Nombre enfants'
from `employees`
where `emp_children` != 0
order by `emp_children` desc;

/*Q2. Y-a-t-il des clients étrangers ? Afficher leur nom, prénom et pays de résidence*/

select `cus_lastname` as 'Nom client', `cus_firstname` as 'prenom client', `cus_countries_id` as 'Pays de résidence'
from `customers`
where `cus_countries_id` != 'FR';

/*Q3. Afficher par ordre alphabétique les villes de résidence des clients ainsi que le code (ou le nom) du pays*/

select `cus_city` as 'Ville de résidence', `cus_countries_id` as 'Pays de résidence', `cou_name` as 'Nom du pays'
from `customers`
join `countries` on `cus_countries_id` = `cou_id`
order by `cus_city`;

/*Q4. Afficher le nom des clients dont les fiches ont été modifiées*/

select `cus_lastname` as 'Nom client', `cus_update_date` as 'Date de modification'
from `customers`
where `cus_update_date` != "NULL";

/*Q5. La commerciale Coco Merce veut consulter la fiche d'un client, mais la seule chose dont elle se souvienne est qu'il habite une ville genre 'divos'. Pouvez-vous l'aider ?*/

select *
from `customers`
where `cus_city` like '%divos%';

/*Q6. Quel est le produit vendu le moins cher ? Afficher le prix, l'id et le nom du produit.*/

select `pro_id` as 'Identifiant du produit', `pro_name` as 'Nom du produit le moins chère', `pro_price` as 'Prix du produit'
from `products`
where `pro_price`= (select min(`pro_price`) from `products`);

/*Q7. Lister les produits qui n'ont jamais été vendus*/

select `pro_id` as 'Identifiant produit', `pro_ref` as 'Référence produit', `pro_name` as 'Nom produit'
from `products`
where `pro_id` not in (select `ode_pro_id` from `orders_details`);

/*Q8. Afficher les produits commandés par Madame Pikatchien*/

select `pro_id` as 'Identifiant produit', `pro_ref` as 'Référence produit', `pro_name` as 'Nom produit', `cus_id` as 'Identifiant client', `ord_id` as 'Identifiant commande', `ode_id` as 'Identifiant détail commande'
from `customers`
join `orders` on `cus_id`=`ord_cus_id`
join `orders_details` on `ode_ord_id`=`ord_id`
join `products` on `pro_id`=`ode_pro_id`
where `cus_lastname` = "Pikatchien";

/*Q9. Afficher le catalogue des produits par catégorie, le nom des produits et de la catégorie doivent être affichés*/

select `cat_id` as 'Identifiant catégorie', `cat_name` as 'Nom catégorie', `pro_name` as 'Nom produit'
from `categories`
join `products` on `pro_cat_id`= `cat_id`
order by `cat_name` ASC, `pro_name` ASC;

/*Q10. Afficher l'organigramme hiérarchique (nom et prénom et poste des employés) du magasin de Compiègne, classer par ordre alphabétique. Afficher le nom et prénom des employés, éventuellement le poste (si vous y parvenez)*/
select CONCAT(`emp1`.`emp_lastname`,'   ', `emp1`.`emp_firstname`) as 'Employé', `pos_libelle` as 'Poste', CONCAT(`emp2`.`emp_lastname`,'   ',`emp2`. `emp_firstname`) as 'Supérieur' 
from `employees` as `emp1` 
join `posts`on `pos_id` = `emp1`.`emp_pos_id`
join `employees` as `emp2` on `emp2`.`emp_id` =`emp1`.`emp_superior_id`
order by `emp1`.`emp_lastname`;


/*Q11. Quel produit a été vendu avec la remise la plus élevée ? Afficher le montant de la remise, le numéro et le nom du produit, le numéro de commande et de ligne de commande*/

select `ode_discount` as 'Montant remise', `pro_id` as 'Numéro produit', `pro_name` as 'Nom produit', `ord_id` as 'Numéro de commande', `ode_id` as 'Numéro ligne commande'
from `orders`
join `orders_details` on `ode_ord_id`=`ord_id`
join `products` on `pro_id`=`ode_pro_id`
where `ode_discount` = (select max(`ode_discount`) from `orders_details`);

/*Q13. Combien y-a-t-il de clients canadiens ? Afficher dans une colonne intitulée 'Nb clients Canada'*/

select count(*) as 'Nombre de client Canadiens'
from `customers`
where `cus_countries_id` = "CA"; 

/*Q16. Afficher le détail des commandes de 2020*/

select `ode_id` as 'Numéro ligne commande', `ode_unit_price` as 'Prix produit',`ode_discount` as 'Remise produit',`ode_quantity` as 'Qauntité commandé',`ode_ord_id` as 'Numéro commande',`ode_pro_id` as 'Numéro produit',`ord_order_date` as 'Date commande'
from `orders`
join `orders_details` on `ode_ord_id`=`ord_id`
where year(`ord_order_date`) = 2020;

/*Q17. Afficher les coordonnées des fournisseurs pour lesquels des commandes ont été passées*/

select distinct(`sup_id`) as 'Numéro fournisseur', `sup_name` as 'Nom fournisseur', `sup_city` as 'Ville du fourniseur', `cou_name` as 'Pays du fournisseur',`sup_address` as 'Adresse fournisseur', `sup_zipcode` as 'Code postal fournisseur', `sup_contact` as 'Contact du fourniseur',`sup_phone` as 'Téléphone fournisseur', `sup_mail` as 'Email du fourniseur'
from `suppliers`
join `countries` on `sup_countries_id` = `cou_id` 
join `products` on `pro_sup_id`= `sup_id`
join `orders_details` on `ode_pro_id`= `pro_id`;

/*Q18. Quel est le chiffre d'affaires de 2020 ?*/

select round(sum( `ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100) ) ),2) 
from `orders`
join `orders_details` on `ode_ord_id`=`ord_id`
where year(`ord_order_date`) = 2020;

/*Q19. Quel est le panier moyen ?*/
/*resultat erreur sur phpmyadmin*/

select  avg(sum(`ode_quantity` * `ode_unit_price`))
from `orders_details`
group by `ode_ord_id`;

/*Q20. Lister le total de chaque commande par total décroissant (Afficher numéro de commande, date, total et nom du client)*/

select `ord_id` as 'Numéro de commande',`ord_order_date` as 'Date commande',  sum(`ode_quantity` * `ode_unit_price`) as 'Total de commande', `cus_lastname` as 'Nom client'
from `customers`
join `orders` on `cus_id`=`ord_cus_id`
join `orders_details` on `ode_ord_id`=`ord_id`
group by `ode_ord_id`
order by sum(`ode_quantity` * `ode_unit_price`) desc;

/*Q22. La version 2020 du produit barb004 s'appelle désormais Camper et, bonne nouvelle, son prix subit une baisse de 10%*/

UPDATE `products` 
set `pro_ref` = "Camper", `pro_price` = `pro_price` * 0.9, `pro_update_date` = now()
where  `pro_ref` = "barb004";

/*Q23. L'inflation en France en 2019 a été de 1,1%, appliquer cette augmentation à la gamme de parasols*/

UPDATE `products` 
set `pro_price` = `pro_price` * 1.011,  `pro_update_date` = now()
where `pro_id`= 25 or `pro_id`= 27;

/*Q24. Supprimer les produits non vendus de la catégorie "Tondeuses électriques". Vous devez utilisez une sous-requête sans indiquer de valeurs de clés*/

DELETE FROM `products`
where `pro_cat_id` = (select `cat_id` from `categories` where `cat_name`="Tondeuses électriques") and `pro_stock`!=0;