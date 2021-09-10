USE mysql;

SELECT * FROM user;

CREATE USER fcomarcet1@localhost IDENTIFIED BY 'password';
/* Permisos a nivel global*/
GRANT SELECT ON *.* TO 'user1'@'localhost';

/* Permisos a nivel de bases de datos*/
GRANT ALL ON mydb.* TO 'someuser'@'somehost';

/* Permisos select, insert, update en todas las tablas*/
GRANT SELECT, INSERT, UPDATE ON dbName.* TO fcomarcet1@localhost;

/* Permisos a nivel de tabla*/
GRANT ALL ON mydb.mytbl TO 'someuser'@'somehost';

/* Permisos a niveld e columna*/
GRANT SELECT (col1), INSERT (col1,col2) ON mydb.mytbl TO 'someuser'@'somehost';

/* Permisos sobre rutinas (proc.almacenados/funciones)*/
GRANT CREATE ROUTINE ON mydb.* TO 'someuser'@'somehost';
GRANT EXECUTE ON PROCEDURE mydb.myproc TO 'someuser'@'somehost';

/* Opción WITH GRANT OPTION*/
/* Esta opción lo que conlleva es que el permiso que estamos concediendo
   a un usuario con la orden GRANT, lo va a poder gestionar.
   Es decir, que va a poder otorgar el mismo permiso a otros usuarios.
   Si otorga el permiso a otros usuarios con la opción WITH GRANT OPTION
   esos otros usuarios van a poder otorgar el mismo permiso a terceros.
   Y así sucesivamente.
*/
GRANT SELECT,INSERT ON *.* TO 'matador'@'%' WITH GRANT OPTION;


/* ver permisos usuario*/
SHOW GRANTS FOR fcomarcet1@localhost;

/* Revocar permisos*/
REVOKE UPDATE, SELECT ON dbName.* FROM fcomarcet1@localhost
DROP USER fcomarcet1@localhost;