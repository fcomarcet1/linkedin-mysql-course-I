/* Crear custom roles*/
CREATE ROLE `role_read`, `role_write`;
CREATE ROLE IF NOT EXISTS mantenimiento_basico, mantenimineto_total, consulta_basica;

/*Asignar permisos a los roles*/
GRANT INSERT, DELETE ON dbName.* TO `role_read`;          -- Permiso a nivel de base de datos

GRANT EXECUTE ON *.* TO  mantenimineto_total;             -- Permiso a nivel global
GRANT SELECT ON employees.* TO mantenimiento_basico;      -- Permiso a nivel de base de datos
GRANT SELECT ON employees.departments TO consulta_basica; -- Permiso a nivel de tabla

SHOW GRANTS FOR `role_read`;

/* Asignar los roles a los usuarios (el usuario debe estar previamente creado.)*/
GRANT `role_read`, `role_read` TO admin1@'%';

GRANT mantenimiento_basico,consulta_basica TO 'user1'@'%';
GRANT mantenimineto_total TO 'user2'@'%';

/* activar todos los roles asignados a un usuario*/
SET DEFAULT ROLE ALL TO user1@'%',user2@'%';

/*activar un rol concreto:*/
SET DEFAULT ROLE mantenimineto_total TO user2@'%';

/* Eliminar roles*/
REVOKE 'role_read' FROM admin1@'%';
REVOKE DELETE ON dbName.* FROM 'role_write';

DROP ROLE 'role_write';