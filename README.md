# BMW Sales 

## Description

This project analyzes BMW car sales data using SQL Server. The project provides scripts to query, transform, and summarize sales information from a `[BMW sales data (2010-2024)]` table, enabling insights into revenue, sales volume, and trends across various dimensions such as model, engine size, fuel type, year, and region.

## Features

- View and update engine size data for consistency.
- Calculate total revenue by car model.
- Summarize number of cars sold by engine size and fuel type.
- Analyze sales distribution by year and region.
- Easy-to-use SQL queries for reporting and analysis.

## Requirements

- **Database:** SQL Server
- **Table:** `[BMW sales data (2010-2024)]` 
- SQL Server Management Studio (SSMS) or compatible SQL client.

## Setup

1. **Prepare Data Table**  
   Ensure your database includes a `[BMW sales data (2010-2024)]` table .

2. **Load SQL Script**  
   Save the provided SQL queries in a file named `bmw sales.sql`.

3. **Run Queries**  
   Open `bmw sales.sql` in your SQL Server client and execute the queries as needed.

## Usage

Below are the main queries included in the project:

### 1. View All Data
SELECT *
FROM [BMW SALES]
```

### 2. Round Engine Size Values
View (rounded):
```sql
SELECT ROUND(engine_size_l, 1)
FROM [BMW SALES]
```
Update:
```sql
UPDATE [BMW SALES]
SET engine_size_l = ROUND(engine_size_l, 1)

```

### 3. Revenue by Model

SELECT model,SUM(Price_USD) as revenue
from [BMW SALES]
group by Model
order by revenue desc

```

### 4. Number of Sold Cars by Engine Size
select  engine_size_l,sum(sales_volume) as number_of_sold_cars
from [BMW SALES]
group by Engine_Size_L
order by number_of_sold_cars desc
```

### 5. Number of Sold Cars by Fuel Type
select fuel_type,sum(sales_volume) as number_of_sold_cars 
from [BMW SALES]
group by Fuel_Type
order by  number_of_sold_cars  desc
```

### 6. Number of Sold Cars by Year and Region
select year,region,model ,sum(sales_volume) as  number_of_sold_cars 
from [BMW SALES]
group by  year,region,model
order by year,Region, number_of_sold_cars  desc
```

## Folder Structure

- `bmw sales.sql`: Main SQL script containing all queries.

## Contributing

1. Fork the repository.
2. Add improvements or new analysis queries.
3. Create a pull request with a description of your changes.



## Contact

For questions or support, contact:

- Email: abooodsh123@gmail.com

---

*Feel free to extend this project with additional queries, visualizations, or integration with BI tools.*
