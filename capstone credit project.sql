-- Group the customers based on their income type and find the average of their annual income.
select *from credit_dataset;
select avg(Annual_income),Type_Income from credit_dataset group by Type_Income; 

-- Find the female owners of cars and property.
select * from credit_dataset;
select Ind_ID, GENDER,Car_Owner,Propert_Owner from credit_dataset where GENDER = 'f' and Car_Owner=1 and Propert_Owner=1;

-- Find the male customers who are staying with their families.
select distinct(Housing_type) from credit_dataset;
select distinct(Marital_status) from credit_dataset;
select Ind_ID,GENDER,Housing_type from credit_dataset where Housing_type ='With parents' and GENDER='m';