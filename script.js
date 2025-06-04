async function getFact() {
  const factDiv = document.getElementById('fact');
  factDiv.textContent = 'Cargando...';

  try {
    const response = await fetch('http://100.24.18.6:3000/catfact');
    const data = await response.json();
    factDiv.textContent = data.fact;
  } catch (error) {
    factDiv.textContent = 'Error al obtener el dato.';
    console.error(error);
  }
}

// Cargar un dato automáticamente al abrir la página
getFact();
