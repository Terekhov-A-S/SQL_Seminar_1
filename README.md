# Базы данных и SQL (семинары)

![pictures MySQL for SQL](https://raw.githubusercontent.com/Terekhov-A-S/SQL_Seminar_1/main/MySQL.jpg)

## Урок 1. Установка СУБД, подключение к БД, просмотр и создание таблиц

1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными (поля и наполнение см. в презентации)

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_1.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_1.png) 

```
CREATE TABLE `test_schema`.`mobile_phones` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(30) NOT NULL,
  `manufacturer` VARCHAR(20) NOT NULL,
  `product_count` INT NULL,
  `price` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);
```
2. Выведите название, производителя и цену для товаров, количество которых превышает 2:

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_2.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_2.png)

```
SELECT product_name, manufacturer 
FROM test_schema.mobile_phones 
WHERE product_count>2;
```
3. Выведите весь ассортимент товаров марки “Samsung”:

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_3.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_3.png)

```
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE manufacturer='Samsung';
```

*! *(по желанию) С помощью регулярных выражений найти:*


*4.1 Товары, в которых есть упоминание "Iphone":

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_4_1.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_4_1.png)

```
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE product_name REGEXP 'Iphone' || manufacturer REGEXP 'Iphone';
```
*4.2 Товары, в которых есть упоминание"Samsung":

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_4_2.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_4_2.png)

```
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE product_name REGEXP 'Samsung' || manufacturer REGEXP 'Samsung';
```
*4.3 Товары, в которых есть ЦИФРЫ:

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_4_3.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_4_3.png)

```
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE product_name REGEXP '[[:digit:]]' = 1 || manufacturer REGEXP '[[:digit:]]' = 1;
```
*4.4 Товары, в которых есть ЦИФРА "8":

[{ перейти к текстовому файлу }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Text%20Files/Task_4_4.sql) -- [{ перейти к скриншоту }](https://github.com/Terekhov-A-S/SQL_Seminar_1/blob/main/SQL%20Screenshots/Task_4_4.png)

```
SELECT product_name, manufacturer, product_count, price 
FROM test_schema.mobile_phones 
WHERE product_name REGEXP '[[8]]' = 1 || manufacturer REGEXP '[[8]]' = 1;
```


*Подготовил студент Geek Brains* [**`Терехов Александр`**](https://gb.ru/users/1db43d0f-6c3d-46d1-bf5e-974b49af6f0d), SQL_Seminar_1
