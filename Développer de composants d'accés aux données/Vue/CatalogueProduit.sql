/*Créez une vue qui affiche le catalogue produits. L'id, la référence et le nom des produits, ainsi que l'id et le nom de la catégorie doivent apparaître*/

DROP VIEW IF EXISTS v_gescom_catalogue; 
CREATE VIEW v_gescom_catalogue
AS
SELECT `pro_id` as 'Identifiant produit', `pro_ref` as 'Réference du produit' , `pro_name` as 'Nom du produit', `cat_id` as 'Identifiant catégorie', `cat_name` as 'Nom de la catégorie'
from `products`
join `categories` on `cat_id` = `pro_cat_id`;