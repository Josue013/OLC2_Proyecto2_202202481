import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:5120',
  timeout: 10000,
  headers: {
    'Content-Type': 'application/json',
  },
});

// Funciones para interactuar con la api
export const compileCode = async (code) => {
  const {data} = await api.post('/compile', { code });
  return data;
}

// Función para abrir el AST
export const openAST = async () => {
  try {
    const response = await api.get('/openast', { responseType: 'blob' });
    const url = URL.createObjectURL(response.data);
    window.open(url);
  } catch (error) {
    console.error('Error al abrir el AST:', error);
  }
};

// Función para abrir el reporte de errores
export const openErrorReport = async () => {
  try {
    const response = await api.get('/openerror');
    // crear un blob con el HTML
    const blob = new Blob([response.data], { type: 'text/html' });
    const url = URL.createObjectURL(blob);
    window.open(url);
  } catch (error) {
    console.error('Error al abrir el reporte de errores:', error);
  }
}

// Funcion para abrir el reporte de simbolos
export const openSymbolReport = async () => {
  try {
    const response = await api.get('/opensimbolos');
    // crear un blob con el HTML
    const blob = new Blob([response.data], { type: 'text/html' });
    const url = URL.createObjectURL(blob);
    window.open(url);
  } catch (error) {
    console.error('Error al abrir el reporte de simbolos:', error);
  }
}