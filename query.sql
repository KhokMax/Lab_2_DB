--Кількість покупців в кожному з шаттів
select TRIM(city_state) as city_state, count(*) as customers_count from customers left join cities USING(city_name)
GROUP by city_state

--Прибутку кожного товару
select TRIM(sku) as sku, sum(total) as total_sum from orderitems
group by sku

-- кількость та відповідна ціни замовлення, для товару MEFREL59AC079AE6C6F-L
SELECT qty_ordered, total from orderitems 
where sku = 'MEFREL59AC079AE6C6F-L'