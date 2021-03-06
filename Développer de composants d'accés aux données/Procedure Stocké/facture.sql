/*Procédure stockée facture qui permet d'afficher les informations nécessaires à une facture en fonction d'un numéro de commande. Cette procédure doit sortir le montant total de la commande*/

DROP PROCEDURE IF EXISTS `p_facture`;

DELIMITER |

CREATE PROCEDURE `p_facture` (IN p_numcom int(10), OUT tot int(10)) 

BEGIN

if p_numcom in (select `ode_ord_id` from `orders_details`) then 

select `ord_id` as 'Identifiant commande' , `cus_lastname` as 'Nom client', `cus_firstname` as 'Prénom client',`cus_city` as 'Ville', `cus_phone` as 'Téléphone',  `ord_order_date` as 'Date commande', `ord_payment_date` as 'Date paiement', `ode_unit_price` as 'Prix unitaire produit', `pro_ref` as 'Réference produit', `pro_name` as 'Nom produit', `ode_discount` as 'Remise',`ode_quantity` as 'Quantité commandé',
     round(`ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100) ),2) as 'Prix HT', 
     round(((`ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100))) / 5),2) as 'TVA', 
     round(1.2 * `ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100) ),2) as 'Prix TTC',
     (select round(sum(1.2 * `ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100) ) ),2)  
        from `orders` join `orders_details` on `ode_ord_id`=`ord_id`
                        where `ord_id` = p_numcom) as 'Montant Total de la facture' 
from `orders`
join `orders_details` on `ord_id`=`ode_ord_id`
join `products` on `ode_pro_id` = `pro_id`
join `customers` on `cus_id` = `ord_cus_id`
where `ord_id` = p_numcom;

else (select "Commande inexistante ou non détaillé");

end if;

END |

tot = select round(sum(1.2 * `ode_quantity` * (`ode_unit_price` - ( (`ode_unit_price` * `ode_discount`) / 100) ) ),2)  
        from `orders` join `orders_details` on `ode_ord_id`=`ord_id`
                        where `ord_id` = p_numcom;
                        
returns tot;

DELIMITER ;


/*test*/

/*Commande existe avec ligne de commande*/
call p_facture(6,@tot);

/*Commande inexistante ou sans ligne de commande*/
/*
call p_facture(1,@tot);
call p_facture(1000,@tot);
*/





 