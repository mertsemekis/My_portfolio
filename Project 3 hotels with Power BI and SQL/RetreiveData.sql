with hotels as(
	select * from hotels_2018
	union
	select * from hotels_2019
	union 
	select * from hotels_2020)

select * from hotels
join market_segment
on hotels.market_segment = market_segment.market_segment
join meal_cost
on meal_cost.meal = hotels.meal