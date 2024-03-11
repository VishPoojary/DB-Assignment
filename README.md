# DB-Assignment
1.) Based on given diagram, the product and product_category entities have a one-to-many relationship. Each product can belong to only one product_category, while a product_category can have multiple products.
In the given example, the product table has a foreign key product_category_id that refers to the id column of the product_category table. This foreign key shows the relationship between the two entities. 
The product_category_id column in the product table helps to identify the category to which product belongs.

2.) To ensure each product in the Product table has a valid category assigned to it, we can use foreign key constraint which matches the value to coulmn in referenced table. The
product_category_id in the product table refers to the id in the product_category table. This helps to verify the value of product_category_id in product table matches a valid value
in the product_catgeory table.
