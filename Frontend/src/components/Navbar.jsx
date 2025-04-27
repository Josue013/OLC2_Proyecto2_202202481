import React, { useState } from 'react';
import '../styles/Navbar.css';
import { openAST } from '../Services/APIs/Api';
import { openErrorReport } from '../Services/APIs/Api';
import { openSymbolReport } from '../Services/APIs/Api';

function Navbar({ runCode, cleanOutput, newFile, openFile, saveFile, downloadOutput  }) {
  const [showDropdown, setShowDropdown] = useState(false);

  let timeoutId;

  const handleMouseEnter = () => {
    clearTimeout(timeoutId);
    setShowDropdown(true);
  };

  const handleMouseLeave = () => {
    timeoutId = setTimeout(() => {
      setShowDropdown(false);
    }, 300); 
  };

  const handleOpenAST = async () => {
    try {
      await openAST();
    } catch (error) {
      console.error('Error al abrir el AST:', error);
    }
  }

  const handleOpenErrors = async () => {
    try {
      await openErrorReport();
    } catch (error) {
      console.error('Error al abrir el reporte de errores:', error);
    }
  }

  const handleOpenSimbolos = async () => {
    try {
      await openSymbolReport();
    } catch (error) {
      console.error('Error al abrir el reporte de simbolos:', error);
    }
  }

  return (
    <nav className="navbar">
      <div className="navbar-left">
        <h1 className='Title'>OLC2 - Proyecto1</h1>
      </div>
      <div className="navbar-center">
        <button className='run' onClick={runCode}>▶  Run</button>
        <button className='clear' onClick={cleanOutput}>Clean</button>
        <button className='download' onClick={downloadOutput}>Download ASM</button>
      </div>
      <div className="navbar-right">
        <div className="dropdown" onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
          <button className="dropbtn">Archivo</button>
          <div className="dropdown-content" style={{ display: showDropdown ? 'block' : 'none' }}>
            <a href="#" onClick={newFile}>Nuevo archivo</a>
            <a href="#" onClick={openFile}>Abrir Archivo</a>
            <a href="#" onClick={saveFile}>Guardar</a>
          </div>
        </div>
        <div className="dropdown" onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
          <button className="dropbtn">Reportes</button>
          <div className="dropdown-content" style={{ display: showDropdown ? 'block' : 'none' }}>
            <a href="#" onClick={handleOpenErrors} >Reporte de Errores</a>
            <a href="#" onClick={handleOpenSimbolos} >Reporte de Simbolos</a>
            <a href="#" onClick={handleOpenAST} >Reporte de Arbol</a>
          </div>
        </div>
      </div>
    </nav>
  );
}

export default Navbar;