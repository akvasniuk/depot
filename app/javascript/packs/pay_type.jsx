import React from 'react';
import ReactDOM from 'react-dom/client';
import PayTypeSelector from '../PayTypeSelector';

// document.addEventListener('DOMContentLoaded', () => {
  // This code will execute only after entire DOM has loaded

  // let element = document.getElementById("pay-type-component");
  // Bootstraping React component in DOM element
  // ReactDOM.render(<PayTypeSelector />, element);

// });

const root = ReactDOM.createRoot(document.getElementById('pay-type-component'));
root.render(<PayTypeSelector />);