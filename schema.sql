CREATE TABLE products (
    id INT PRIMARY KEY,
    product_category_id INT,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (product_category_id) REFERENCES product_categories(id)
);

CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    product_id INT,
    sku VARCHAR(255),
    quantity INT,
    category_id INT,
    price DECIMAL(10, 2),
    discount_id INT,
    created_at TIMESTAMP,
    inventory_id INT,
    modified_at TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (category_id) REFERENCES product_categories(id),
    FOREIGN KEY (discount_id) REFERENCES discounts(id)
);

CREATE TABLE product_categories (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE discounts (
    id INT PRIMARY KEY,
    product_id INT,
    discount_percent DECIMAL(10, 2),
    active BOOLEAN,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id)
);
