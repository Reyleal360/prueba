import React from 'react';

const ProductCard = ({ product }) => {
  return (
    <div className="card" id={`product-${product.id}`}>
      <img 
        src={product.thumbnail} 
        alt={product.title} 
        className="card-image"
      />
      <div className="card-content">
        <h3 className="card-title">{product.title}</h3>
        <p className="card-description">
          {product.description.length > 100 
            ? `${product.description.substring(0, 100)}...` 
            : product.description}
        </p>
      </div>
      <div className="card-footer">
        <span className="price">${product.price}</span>
        <button className="btn">Ver Detalle</button>
      </div>
    </div>
  );
};

export default ProductCard;
