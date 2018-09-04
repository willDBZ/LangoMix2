-- insertion pour les tests
-- insertion d'usagers 
insert into usager values(0, 'william','tang', 1, sysdate, 'williamtang903@gmail.com', 'superman','$2y$10$C4k9wDR0Qg8dWHpwbNCCqekBHiuM5gidzF6iVq2LxzAgEczgs50OG', 'aaaaaa',NULL,NULL);

-- administrateur du site web
insert into usager values(0, 'admin','admin', 1, sysdate, 'admin@gmail.com', 'admin','$2y$10$XXESX6KZGC.eK1UHgfux6OdHLdyzG/ICM8lAXEYcD5uwD3iCjpum6', 'aaaaaa',NULL,1);

-- insertion de blogs
insert into blog values(0, 'apprendre une langue', sysdate, sysdate, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0);
insert into blog values(0, 'le coreen', sysdate, sysdate, 1, 'blablabla', 0);
insert into blog values(0, 'parler le chinois en 2 semaines', sysdate, sysdate, 1, 'blablabla', 0);

-- insertion de commentaires
insert into commentaire values(0,'allo',1,1,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',sysdate);
insert into commentaire values(0,'allo',1,1,'blabla',sysdate);
insert into commentaire values(0,'allo',1,1,'blabla',sysdate);

commit;
