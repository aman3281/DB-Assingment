Question : Explain the relationship between the "Product" and "Product_Category" entities from the above diagram ?
Answer: The diagram shows  one-to-many relationship between the "Product" and "Product_Category" entities where Product_category is one and Product is many. This means that a single product can belong to one category, but a single category can have many products.
The relationship is established through the category_id attribute in the "Product" entity. This attribute is a foreign key that references the primary key (which is id) of the "Product_Category" entity.

Question :How could you ensure that each product in the "Product" table has a valid category assigned to it?
Answers:Product has a category_Id as a foreign key constraint which is Primary key for the Product_category table which enforces data integrity by ensuring the reference category actually exists in the product_category table.
The second constraint that can be used to ensure a valid category exist is to define a not null constraint on the category_Id Column of Product table which prevents products from being inserted without a category assigned.
