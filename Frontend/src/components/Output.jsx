import React from 'react';

function Output({ output }) {
  return (
    <div className="output">
      <pre className="output-pre">{output}</pre>
    </div>
  );
}

export default Output;