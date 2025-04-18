import React, { useState } from 'react';
import CodeEditor from './components/Editor';
import Output from './components/Output';
import Navbar from './components/Navbar';
import { compileCode } from './Services/APIs/Api';
import './App.css';

function App() {
  const [files, setFiles] = useState([{ name: 'Untitled.glt', code: '' }]);
  const [activeFileIndex, setActiveFileIndex] = useState(0);
  const [output, setOutput] = useState([]);

  // Ejecutar el código
  const runCode = async () => {
    const code = files[activeFileIndex].code;
    setOutput([]);
    try {
      const result = await compileCode(code);
      setOutput((prevOutput) => [...prevOutput, result.result]);
    } catch (err) {
      setOutput((prevOutput) => [...prevOutput, 'Error: ' + err.message]);
    }
  };

  // Limpiar la salida
  const cleanOutput = () => {
    setOutput([]);
  };

  // Crear un nuevo archivo
  const newFile = () => {
    setFiles([...files, { name: `Untitled-${files.length + 1}.glt`, code: '' }]);
    setActiveFileIndex(files.length);
  };

  // Abrir un archivo con extensión .glt
  const openFile = () => {
    const input = document.createElement("input");
    input.type = "file";
    input.accept = ".glt";
    input.addEventListener("change", handleFileChange);
    input.click();
  };

  // Manejar el cambio de archivo
  const handleFileChange = (e) => {
    const file = e.target.files[0];
    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target.result;
      const newFiles = [...files, { name: file.name, code: text }];
      setFiles(newFiles);
      setActiveFileIndex(newFiles.length - 1);
    };
    reader.readAsText(file);
  };

  // Guardar archivo
  const saveFile = () => {
    const file = files[activeFileIndex];
    const fileName = file.name.endsWith('.glt') ? file.name : `${file.name}.glt`;
    const blob = new Blob([file.code], { type: "text/plain;charset=utf-8" });
    const link = document.createElement("a");
    link.href = URL.createObjectURL(blob);
    link.download = fileName;
    link.click();

    // Actualizar el nombre del archivo en la barra de pestañas
    const newFiles = [...files];
    newFiles[activeFileIndex].name = fileName;
    setFiles(newFiles);
  };

  const setCode = (code) => {
    const newFiles = [...files];
    newFiles[activeFileIndex].code = code;
    setFiles(newFiles);
  };

  // Cerrar archivo
  const closeFile = (index) => {
    if (files.length === 1) return; // No cerrar si solo hay un archivo
    const newFiles = files.filter((_, i) => i !== index);
    setFiles(newFiles);
    if (activeFileIndex === index) {
      setActiveFileIndex(0);
    } else if (activeFileIndex > index) {
      setActiveFileIndex(activeFileIndex - 1);
    }
  };

  return (
    <div className="App">
      <Navbar runCode={runCode} cleanOutput={cleanOutput} newFile={newFile} openFile={openFile} saveFile={saveFile} />
      <div className="tabs">
        {files.map((file, index) => (
          <div key={index} className={`tab ${index === activeFileIndex ? 'active' : ''}`}>
            <button onClick={() => setActiveFileIndex(index)}>
              {file.name}
            </button>
            <button className="close-tab" onClick={() => closeFile(index)}>x</button>
          </div>
        ))}
      </div>
      <div className="editor-output-container">
        <CodeEditor code={files[activeFileIndex].code} setCode={setCode} />
        <Output output={output} />
      </div>
    </div>
  );
}

export default App;