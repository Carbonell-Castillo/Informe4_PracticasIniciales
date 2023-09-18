##Exec StoredProcedure

call agregarTipo("Catedratico");
call agregarTipo("Curso");
call verTipos();

call agregarCatedratico("Mario Lopez");
call agregarCatedratico("David Orellana");
call agregarCatedratico("Daniel Juarez");
call verCatedraticos();

call agregarCurso("Social Humanistica 1", 3);
call agregarCurso("Matematica Basica 1", 9);
call agregarCurso("Tecnicas de Estudio e Investigacion", 3);
call agregarCurso("Deportes 1", 2);
call agregarCurso("Idioma tecnico 1", 3);
call agregarCurso("Social Humanistica 2", 3);
call agregarCurso("Matematica Basica 2", 9);
call agregarCurso("Matematica para computacion 1", 5);
call agregarCurso("Fisica basica", 5);
call agregarCurso("Deportes 2", 2);
call agregarCurso("Idioma tecnico 2", 3);
call verCursos();

call registrarUsuario("202203069", "Bruce Carbonell", "Castillo Cifuentes", "bruce@gmail.com", "Bruce123");
call registrarUsuario("202207639", "Diego Josue", "Guevara Abaj", "diego@gmail.com", "Diego123");
call registrarUsuario("202207596", "Pamela Abigail", "Ratzam Xajil", "pamela@gmail.com", "Pamela123");
call registrarUsuario("202200151", "Pablo Antonio", "Giron Chuga", "pamela@gmail.com", "Pablo123");
call registrarUsuario("202200041", "Daniel Eduardo", "Velasquez Avila", "daniel@gmail.com", "Daniel123");
call verUsuarios();

call validarUsuario("202203069", "Bruce123");

call buscarUsuarioRegistroAcademico("202200041");

call buscarUsuarioRegistroAcademicoCorreo("202203069", "bruce@gmail.com");

call actualizarContraseña("202203069", "321Bruce");

call agregarPublicaciones("202203069", 1, "", 1, "¿Alguno tiene conocimiento de que tal trabaja este ingeniero?");
call agregarPublicaciones("202203069", 2, "", 1, "¿Alguno tiene conocimiento de que tal trabaja este ingeniero?");
call agregarPublicaciones("202200041", 3, "", 1, "¿Alguno tiene conocimiento de que tal trabaja este ingeniero?");
call agregarPublicaciones("202200041", "", 1, 2, "¿Recomiendan recibir este curso?");
call agregarPublicaciones("202207596", "", 2, 2, "¿Recomiendan recibir este curso?");
call verPublicaciones();

call filtrarPublicacionesCurso();

call filtrarPublicacionesCatedratico();

call filtrarPublicacionesNombreCurso("%Social Humanistica%");

call filtrarPublicacionesNombreCatedratico("%Mario Lop%");

call agregarComentario(1, "202203069", "Ese ingeniero es muy bueno explicando lo recomiendo al 100");
call agregarComentario(4, "202203069", "Muy buen curso, recomendado");

call comentarioPublicacion(1);

call agregarCursoAprxobado("202203069", 1);
call agregarCursoAprobado("202203069", 2);
call agregarCursoAprobado("202203069", 3);
call agregarCursoAprobado("202200151", 3);
call agregarCursoAprobado("202200151", 4);
call agregarCursoAprobado("202200151", 1);
call agregarCursoAprobado("202207639", 1);
call agregarCursoAprobado("202207639", 2);
call cursosAprobadosUsuarios();

call buscarCursosAprobadosUsuario("202203069");
