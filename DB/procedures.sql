drop procedure ajouterUnBlog;

CREATE OR REPLACE PROCEDURE ajouterUnBlog
( titre IN VARCHAR, id_usager IN NUMBER,texte IN VARCHAR,censure IN NUMBER) AS
BEGIN  
   insert into blog values(0, titre, sysdate, sysdate, id_usager, texte, censure);
END ajouterUnBlog;
/

CREATE OR REPLACE PROCEDURE updaterUnBlog
(p_titre IN VARCHAR,p_texte IN VARCHAR,p_id_blog IN INTEGER) AS
BEGIN  
    update blog set titre = p_titre, texte = p_texte, dateModification = sysdate where id_blog = p_id_blog;
    commit;
END updaterUnBlog;
/