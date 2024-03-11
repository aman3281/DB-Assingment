if(not exists (select * from sys.schemas where name ='systab'))
Begin 
exec('create schema systab');
end
  
CREATE TABLE systab.product_category (
  id INT PRIMARY KEY ,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);
CREATE TABLE systab.product_inventory (
  id INT PRIMARY KEY,
  quantity INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE systab.discount (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  discount_percent DECIMAL(5, 2) NOT NULL,
  active bit NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE systab.product (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  sku VARCHAR(255) NOT NULL,
  category_id INT NOT NULL,
  inventory_id INT DEFAULT NULL,
  price DECIMAL(10, 2) NOT NULL,
  discount_id INT DEFAULT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  deleted_at DATETIME DEFAULT NULL,
  FOREIGN KEY (category_id) REFERENCES product_category(id),
  FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
  FOREIGN KEY (discount_id) REFERENCES discount(id)
);

