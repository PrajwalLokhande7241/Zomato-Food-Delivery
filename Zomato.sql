create database Zomato_India;
use Zomato_India;

select * from Zomato;

-- 1) Find the top 10 restaurants with the highest average ratings.

SELECT RestaurantID, RestaurantName, AVG(Rating) AS average_rating
FROM Zomato
GROUP BY RestaurantID, RestaurantName
ORDER BY average_rating DESC
LIMIT 10;

-- 2)List the number of restaurants in each city.

SELECT city, COUNT(*) AS num_restaurants
FROM Zomato
GROUP BY city
ORDER BY num_restaurants DESC;

-- 3)Find the most popular cuisine in a specific city.

select cuisines,max(votes)as highest_votes from zomato
group by cuisines
order by highest_votes desc;

-- 4)Calculate the average cost for two people for each cuisine type.

select cuisines,avg(average_cost_for_two) as avg_cost from zomato
group by cuisines
order by avg_cost desc;


-- 5)Find restaurants that have ratings greater than 4 and are located in a specific city.

select distinct(city),restaurantname from zomato
where rating>4;

-- 6)List the top 5 cities with the highest number of restaurants.

select city,count(restaurantname) as highest_no_rest from zomato
group by city
order by highest_no_rest desc
limit 5;

-- 7)Find restaurants that have 'Cafe' in their name 
select restaurantname from zomato
where restaurantname like "%cafe%";

 -- 8)List all restaurants that have been rated by more than 500 users
 
 select restaurantname, votes from zomato
where votes>500;

-- 9)Find the average rating of restaurants that serve 'Chinese' cuisine.

select avg (rating) as avgrating from zomato
where cuisines = "Chinese"; 

-- 10)List all restaurants that have a rating below 3 and are located in ''Brasí_lia'

select restaurantname,rating,locality from zomato
where rating<3 and localityverbose="Brasí_lia";

-- 11)Identifying restaurants that offer online delivery or table booking.

select restaurantname from zomato
where has_online_delivery="yes" or has_table_booking="yes";

-- 12)List all restaurants currently acp table booking in PAsay city.
select * from zomato
where city="pasay" and has_table_booking="yes";

-- 13)Find which city in pasay city have the most restaurants
select  max(restaurantname) from zomato
where city = "Pasay";

-- 14)List all restaurants offering "North Indian" cuisine.
select restaurantname,cuisines from zomato
where cuisines="north indian";

-- 15)Find the number of restaurants in each city

SELECT city, COUNT(*) AS number_of_restaurants
FROM zomato
GROUP BY city
ORDER BY number_of_restaurants DESC;

-- 16)Calculate the average cost for two people for each cuisine type

select cuisines,avg(average_cost_for_two) from zomato
group by cuisines;


-- 17)Find the number of restaurants in each country.
SELECT CountryCode, COUNT(*) AS number_of_restaurants
FROM zomato
GROUP BY CountryCode
ORDER BY number_of_restaurants DESC;

-- 18)Calculate the average rating of restaurants in each price range category.

select price_range,avg(rating) from zomato
group by price_range;

-- 19) fetch the Cusines where last word like d
select cuisines from zomato
where cuisines like "%d";




