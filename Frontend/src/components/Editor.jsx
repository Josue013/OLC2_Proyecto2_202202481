import React, { useEffect } from 'react';
import Editor from '@monaco-editor/react';
import dracula from '../theme/dracula.json';
import { compileCode } from '../Services/APIs/Api';
import Output from './Output';

function CodeEditor({ code, setCode }) {
  // tema de dracula
  const handleEditorWillMount = (monaco) => {
    monaco.editor.defineTheme('dracula', {
      base: 'vs-dark',
      inherit: true,
      rules: dracula.rules,
      colors: dracula.colors
    });
  };

  return (
    <Editor
      height="100%"
      width={"80%"}
      theme="dracula"
      defaultLanguage="go"
      beforeMount={handleEditorWillMount}
      defaultValue={`// Escribe tu código en Go aquí
`}
      value={code}
      onChange={(value) => setCode(value || '')}
      options={{
        fontSize: 12,
        scrollBeyondLastLine: false,
        automaticLayout: true,
        wordWrap: 'on',
        tabSize: 2,
      }}
    />
  );
}

export default CodeEditor;