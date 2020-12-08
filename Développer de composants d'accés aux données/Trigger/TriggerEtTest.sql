DROP TABLE IF EXISTS `commander_articles`;
CREATE TABLE IF NOT EXISTS `commander_articles` (
  `codart` int(10) UNIQUE NOT NULL,
  `qte` int(10) NOT NULL,
  `datec` Date NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Créer un déclencheur after_products_update sur la table products : lorsque le stock physique devient inférieur au stock d'alerte, une nouvelle ligne est insérée dans la table commander_articles.*/

Drop trigger if exists `after_products_update`;

DELIMITER ||

CREATE TRIGGER `after_products_update` 
AFTER update ON `products`
FOR EACH ROW
BEGIN 
    DECLARE id_prod INT ;
    SET id_prod = NEW.pro_id ;
   
    if ((cast(NEW.pro_stock as signed int) - cast(New.pro_stock_alert as signed int)) < 0 and (id_prod not in (select codart from `commander_articles`))) then 
         insert into `commander_articles` values (id_prod,cast(NEW.pro_stock_alert as signed int) - cast(NEW.pro_stock as signed int),(select current_date())) ;
    else if ((cast(NEW.pro_stock as signed int) - cast(New.pro_stock_alert as signed int)) < 0 ) then
        update `commander_articles` SET qte = cast(NEW.pro_stock_alert as signed int) - cast(NEW.pro_stock as signed int), datec = (select current_date())  WHERE codart=id_prod ; 
        end if;
    end if;

    if  ((cast(NEW.pro_stock as signed int) - cast(New.pro_stock_alert as signed int)) >= 0 ) then
        DELETE FROM `commander_articles` WHERE codart=id_prod ; 
    END IF;
    
    
END ||

delimiter ;

/*TEST*/

update `products` set `pro_stock` = 6 where `pro_id` = 8; /*Réussi pas ligne crée dans commander_articles */

update `products` set `pro_stock` = 4 where `pro_id` = 8; /*Réussi ligne crée dans commander_articles avec qte = 1 */

update `products` set `pro_stock` = 3 where `pro_id` = 8; /*Réussi ligne modifié dans commander_articles avec qte = 2*/
