import React from 'react'
import './EstiloCrearUsuario.css';

export const SegundoComponente = () => {
  return (
    <center>
    <form className='RegistroU'>
      <img id="logoUsac" src='https://plataformacii.ingenieria.usac.edu.gt/images/logo_fi.png'></img>

      <h3>Crea tu acceso al Portal</h3>
      <p>Usuario</p>
      <input placeholder='Registro Academico (Carnet)'></input>
      <p>Nombres</p>
      <input placeholder='Registro Academico (Carnet)'></input>
      <p>Nombres</p>
      <input placeholder='Registro Academico (Carnet)'></input>
      <p>Contraseña</p>
      <input placeholder='Contraseña de 8 caracteres'></input><br></br>
      <button>Crear</button>
    </form>
    </center>
  )
}

export default SegundoComponente