import './App.css';
import { Link } from 'react-router-dom';


import {
  createBrowserRouter,
  Route,
  Router,
  RouterProvider,
} from "react-router-dom";
import { PrimerComponente } from './components/PrimerComponente';
import { SegundoComponente } from './components/SegundoComponente';

function App() {
  return (


      <div className='App'>
        <PrimerComponente></PrimerComponente>
      </div>

    
  );
}

export default App;
