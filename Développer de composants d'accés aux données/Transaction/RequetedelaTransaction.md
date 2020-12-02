/*Cr�ation de la ligne retrait� dans la table posts*/
insert into `posts`  (`pos_libelle`) values  ('Retrait�');

/*R�cup�ration de la date la plus ancienne des p�pini�riste */
select min(`emp_enter_date`) from `employees`  join `posts` on `pos_id` = `emp_pos_id` where `pos_libelle` = 'P�pini�riste';

/*R�cup�ration de l'id p�pini�riste le plus ancien = v_id_emp */
select `emp_id` from `employees` join `posts` on `pos_id` = `emp_pos_id` 
        where `pos_libelle` = 'P�pini�riste' and `emp_enter_date` =
            (select min(`emp_enter_date`) from `employees`  join `posts` on `pos_id` = `emp_pos_id` where `pos_libelle` = 'P�pini�riste');

/*R�cup�ration de l'id du magasin d'arras*/
select `sho_id` from `shops` where `sho_city` = 'Arras';  

/*R�cuperation id du sup�rieur de l'employ� partant en retraite =  v_id_sup_man*/

select `emp_superior_id` from `employees` where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras');
    
/*R�cup�ration id du poste de l'employ� partant en retraite = v_id_post*/

select `emp_pos_id` from `employees` where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras');


/*Modification sup�rieur des p�pini�ristes*/
    update  `employees` set `emp_superior_id` = v_id_emp where `emp_pos_id` = (select `pos_id` from `posts` where `pos_libelle` = 'P�pini�riste');

/*Modification info du nouveau manager */  
    update `employees` set `emp_superior_id` =  v_id_sup_man,  `emp_salary` = `emp_salary` * 1.05, `emp_pos_id` = v_id_post  where `emp_id` = v_id_emp ; 

/*Modification du posts de l'employ� partant en retraite */

update `employees` set `emp_pos_id` = (select `pos_id` from `posts` where `pos_libelle` = 'Retrait�') 
       where `emp_lastname` = 'HANNAH' and `emp_firstname` = 'Amity' and 
       `emp_sho_id` = (select `sho_id` from `shops` where `sho_city` = 'Arras');

