SELECT product_name, manufacturer, product_count, price FROM test_schema.mobile_phones WHERE product_name REGEXP '[[:digit:]]' = 1 || manufacturer REGEXP '[[:digit:]]' = 1;