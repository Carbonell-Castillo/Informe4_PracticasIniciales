import React from 'react'

export const PrimerComponente = () => {

    const PruebaFunciones = () => {

    }

  return (
    <form className='IngresoSes'>
      <img id='logoUsac' src='https://plataformacii.ingenieria.usac.edu.gt/images/logo_fi.png'></img>
      <p id='InSes'>INICIAR SESIÓN INGENIERIA USAC</p>
      <input type='text' placeholder='CUI / REGISTRO ACADEMICO / REGISTRO PERSONAL' name='usuario'></input><br></br><br></br>
      <input type='password' name='constraseña' placeholder='Contraseña'></input><br></br><br></br>

      <input type='submit' value="Iniciar Sesion" id='btnIniSes'></input>
      <a href='' id='forPass'><h4>Olvido su contraseña?</h4></a>
      <a href='' id='forPass'><h4>No tiene usuario? Click</h4></a>
    </form>
  )
}
