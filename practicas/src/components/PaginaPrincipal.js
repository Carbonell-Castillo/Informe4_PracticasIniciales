import React from 'react'
import './EstiloPaginaPrincipal.css';

export const PaginaPrincipal = () => {
  return (
    <body>
        <div id="barraSuperior">
            <div class="parteSuperior Titulo">
                <footer>
                    <pre>   <a href="#">Mi Perfil</a>                             Titulo De La Página Principal                                  Grupo 11 PI  </pre>
                </footer>
            </div>
            <div class="Organizadores centrado">
                <footer><br></br><br></br>
                <pre>    Ordenar Por:       Nombre de Clase           Catedrático                     Desde:       A-Z       Z-A               Buscar:_________________________________</pre>
                <br></br><br></br>
                </footer>
            </div>
            <div id="Cuadro">
                <div class="TextoCuadro centrado">
                    <footer>
                    <pre>   Clase: NombreDeClase          Catedrático: NombreDeCatedratico          Horario: Días, de Hora a Hora           Comentarios: CantidadComentarios  
                    <br></br> <a href="#">Ver Comentarios</a>                    <a href="#">Hacer Comentario</a></pre>
                    </footer>
                </div>
            </div>
        </div>
        
    </body>
  )
}

export default PaginaPrincipal