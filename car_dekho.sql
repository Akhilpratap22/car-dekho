SELECT * FROM cars.car_dekho;
use cars;

-- read data--
select*from car_dekho;

-- total cars: to get a count of total records--
select count(*) from car_dekho;

-- the manager asked the employee how many cars will be available in 2023?--
select count(*) from car_dekho where year= 2023;

-- the manager asked the employee how many cars is available in 2020,2021,2022--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- client asked me to print the total of all cars by year. i don't see all the details--
select year,count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will there in 2020?--
select count(*) from car_dekho where year= 2020 and fuel="diesel";

-- client requested a car dealer agent how many petrol cars will there be in 2020?--
select count(*) from car_dekho where year=2020 and fuel="petrol";

-- the manager told the employee to give a print all the fuel cars(petrol,diesel,and CNG) come by all year.--
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="diesel" group by year;
select year,count(*) from car_dekho where fuel="CNG" group by year;

-- manager said there were more than 100 cars in a given year, which year had more than 100 cars?--
select year,count(*) from car_dekho group by year having count(*)>100;

-- the manager said to the employee all cars count details between 2015 and 2023; we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;

-- the manager said to the employee all cars details between 2015 to 2023 we need complete list--
select*from car_dekho where year between 2015 and 2023;
