import { useState, useEffect } from 'react';
import ProductCard from './components/ProductCard';
import './index.css';

function App() {
  const [products, setProducts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchProducts = async () => {
      try {
        setLoading(true);
        const response = await fetch('https://dummyjson.com/products?limit=12');
        if (!response.ok) throw new Error('Error al cargar productos');
        
        const data = await response.json();
        setProducts(data.products);
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, []);

  if (loading) return <div className="loading">Cargando productos...</div>;
  if (error) return <div className="error">Error: {error}</div>;

  return (
    <div className="app-container">
      <header>
        <h1>Market Hub</h1>
        <p>Explora nuestra coleccin de productos premium</p>
      </header>

      <main className="product-grid">
        {products.map(product => (
          <ProductCard key={product.id} product={product} />
        ))}
      </main>
    </div>
  );
}

export default App;
