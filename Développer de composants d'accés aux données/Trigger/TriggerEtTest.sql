/*Créer un déclencheur after_products_update sur la table products : lorsque le stock physique devient inférieur au stock d'alerte, une nouvelle ligne est insérée dans la table commander_articles.*/

Drop trigger if exists `after_products_update`;

DELIMITER ||

CREATE TRIGGER `after_products_update` 
AFTER update ON `products`
FOR EACH ROW
BEGIN 
    DECLARE diffstock int ;
    Declare stockdiff int ;
    DECLARE id_prod INT ;
    SET id_prod = NEW.pro_id ;
    SET diffstock = (SELECT cast(pro_stock as signed int) - cast(pro_stock_alert as signed int) FROM products where pro_id = id_prod );
    SET stockdiff = (SELECT cast(pro_stock_alert as signed int) - cast(pro_stock as signed int) FROM products where pro_id = id_prod );
    
    if (diffstock < 0) and (id_prod not in (select codart from `commander_articles`)) then 
         insert into `commander_articles` values (id_prod,stockdiff,(select current_date())) ;
    else if (diffstock < 0) then
       update `commander_articles` SET qte = stockdiff, datec = (select current_date())  WHERE codart=id_prod ;
        end if;
    end if;
    
END ||

delimiter ;

/*TEST*/

update `products` set `pro_stock` = 6 where `pro_id` = 8; /*Réussi pas ligne crée dans commander_articles */

update `products` set `pro_stock` = 4 where `pro_id` = 8; /*Réussi ligne crée dans commander_articles avec qte = 3 */

update `products` set `pro_stock` = 3 where `pro_id` = 8; /*Réussi ligne modifié dans commander_articles avec qte = 2*/
