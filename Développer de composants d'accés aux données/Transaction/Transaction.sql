/*Amity HANAH, Manageuse au sein du magasin d'Arras, vient de prendre sa retraite. Il a été décidé, après de nombreuses tractations, de confier son poste au pépiniériste le plus ancien en poste dans ce magasin. Ce dernier voit alors son salaire augmenter de 5% et ses anciens collègues pépiniéristes passent sous sa direction*/

DROP PROCEDURE IF EXISTS `p_transac`;
DELIMITER |
CREATE PROCEDURE  p_transac() 
BEGIN
    DECLARE v_id_emp INT(10);
    Declare v_id_post INT(10);
    Declare v_id_sup_man INT(10);
    /*Récuperation id nouveau manager id38*/
    SET v_id_emp = (select `emp_id` from `employees` join `posts` on `pos_id` = `emp_pos_id` 
        where `pos_libelle` = 'Pépiniériste' and `emp_enter_date` =
            (select min(`emp_enter_date`) from `employees`  join `posts` on `pos_id` = `emp_pos_id` where `pos_libelle` = 'Pépiniériste'));
    
    /*Récuperation id superieur de l'employé partant en retraite*/
    SET v_id_sup_man = (select `emp_superior_id` from `employees` where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras'));
    
    /*Récuperation id poste de l'employé partant en retraite*/
    SET v_id_post = (select `emp_pos_id` from `employees` where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras'));

/*Modification supérieur des pépiniéristes*/
    update  `employees` set `emp_superior_id` = v_id_emp where `emp_pos_id` = (select `pos_id` from `posts` where `pos_libelle` = 'Pépiniériste');

/*Modification info du nouveau manager */  
    update `employees` set `emp_superior_id` =  v_id_sup_man,  `emp_salary` = `emp_salary` * 1.05, `emp_pos_id` = v_id_post  where `emp_id` = v_id_emp ; 
END |
DELIMITER ;



START TRANSACTION;
insert into `posts`  (`pos_libelle`) values  ('Retraité'); 
call p_transac;
update `employees` set `emp_pos_id` = (select `pos_id` from `posts` where `pos_libelle` = 'Retraité') 
       where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras');
commit;

/*Le pépiniériste le plus ancien est l'employé id38, on peut voir aprés cette transaction que tout les pépiniériste ont comme supérieur l'employé 38. D'autre part, l'employé partant en retraite qui a l'id 59 a pour poste l'id 36 de retraité.
  Le supérieur de l'employé parti en retraite a l'id 4 qui a été attribué au nouveau manager id38. Le poste du nouveau manager a été mit à jour est devient id2 celui de manager. Le salaire de l'id 38 a prit 5% pour passer de 20450 euros à 21472.50 euros*/