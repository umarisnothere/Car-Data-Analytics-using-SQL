create schema cars_data;
use cars_data;
-- read data --
select*from car_dekho;
-- total cars: to get a count of total records --
select count(*) from car_dekho;
-- the manager asked the employee how many cars will be there in 2023? --
select count(*) from car_dekho where year = 2023;
-- the manager asked the employee how many cars will be there in 2020,2021,2022 --
select count(*) from car_dekho where year = 2020; -- 74 
select count(*) from car_dekho where year = 2021; -- 7
select count(*) from car_dekho where year = 2022; -- 7

-- group by --
select count(*) from car_dekho where year in (2021,2022,2023);

-- client asked me to print the total of all cars by year, i dont see all details --
select year, count(*) from car_dekho group by year;

-- client asked car dealer on how many diesel cars will be there in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Diesel";

-- client requested car dealer on how many cars will be there for petrol in 2021 --
select count(*) from car_dekho where year = 2021 and fuel = "Petrol" ; 

-- manager told the employee to print all cars run by individual fuel type for all years --
select count(*) from car_dekho where fuel = "Petrol" group by year;
select count(*) from car_dekho where fuel = "Diesel" group by year;
select count(*) from car_dekho where fuel = "CNG" group by year;

-- manager asked which year had more than 100 cars --
select year,count(*) from car_dekho group by year having count(*)>100;

-- also of years which had less than 50 cars --
select year, count(*) from car_dekho group by year having count(*) <50;

-- manager asks to count all cars available in the year between 2015 and 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- manager asks to have all details of cars available in the year between 2015 and 2023 --
select* from car_dekho where year between 2015 and 2023;

-- END --