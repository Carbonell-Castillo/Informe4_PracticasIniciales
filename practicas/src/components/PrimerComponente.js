import React, { useState } from 'react'
import { Link,BrowserRouter,Route, Routes, Switch} from 'react-router-dom'
import { SegundoComponente } from './SegundoComponente'
import './EstiloInSes.css'


export const PrimerComponente = () => {

    const [isVisible, setIsVisible] = useState(true);

    const PruebaFunciones = () => {

    }

  return (
    <BrowserRouter>
      {isVisible &&(
    <form className='IngresoSes'>
      <img id='logoUsac' src='https://plataformacii.ingenieria.usac.edu.gt/images/logo_fi.png'></img>
      <p id='InSes'>INICIAR SESIÓN INGENIERIA USAC</p>
      <input type='text' placeholder='CUI / REGISTRO ACADEMICO / REGISTRO PERSONAL' name='usuario'></input><br></br><br></br>
      <input type='password' name='constraseña' placeholder='Contraseña'></input><br></br><br></br>

      <input type='submit' value="Iniciar Sesion" id='btnIniSes'></input>
      <Link to='' id='forPass'><h4>Olvido su contraseña?</h4></Link>
      <Link to='/SegundoComponente'id='forPass' onClick={() => setIsVisible(false)} ><h4>No tiene usuario? Click</h4></Link>
    </form>
    )}
      <Routes>
        <Route path='/SegundoComponente' element={<SegundoComponente></SegundoComponente>}>
        </Route>
      </Routes>
    </BrowserRouter>
    
  )
}
