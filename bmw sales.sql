use project
--
SELECT *
FROM [BMW SALES]
----

select round(engine_size_l,1)
from  [BMW SALES]
update [BMW SALES]
set engine_size_l =  round(engine_size_l,1)

------ prices by model --- 

SELECT model,SUM(Price_USD) as revenue
from [BMW SALES]
group by Model
order by revenue desc


---- number of sold cats by engine size----

select  engine_size_l,sum(sales_volume) as number_of_sold_cars
from [BMW SALES]
group by Engine_Size_L
order by number_of_sold_cars desc

---- number of sold cars by fuel type --- 


select fuel_type,sum(sales_volume) as number_of_sold_cars 
from [BMW SALES]
group by Fuel_Type
order by  number_of_sold_cars  desc

------ number of sold cars by year and region --- 

select year,region,model ,sum(sales_volume) as  number_of_sold_cars 
from [BMW SALES]
group by  year,region,model
order by year,Region, number_of_sold_cars  desc