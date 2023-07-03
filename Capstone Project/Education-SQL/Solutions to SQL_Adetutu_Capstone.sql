select * 
from Donation_Data;

-- Question a: How much is the total donation?
Select sum(donation) as Total_Donation
from Donation_Data;

--Question b: What is the total donation by gender?
select gender, sum (donation) as gender_donation
from Donation_Data
group by gender;

--Question C: Show the total donation and number of donations by gender
select gender, sum(donation) Total_Donation, count(donation) as Donation_Count
from Donation_Data
group by gender;

--Question D:Total donation made by frequency of donation
Select *
from Donor_Data;

select donation_frequency,sum(donation) as Total_donation
from Donation_Data as dt
join Donor_Data as dr on dt.id =dr.id
group by donation_frequency
order by total_donation desc;


--Question E:Total donation and number of donation by Job field

select job_field, sum(donation)as Total_donation, count(donation) as job_field_count
from Donation_Data
Group by job_field
order by Total_donation desc;

--Question F: Total donation and number of donations above $200

select sum(donation)as Total_donation, count(donation) as donation_count
from Donation_Data
where donation >200;

--Question G:Total donation and number of donations below $200
select sum(donation)as Total_donation, count(donation) as donation_count
from Donation_Data
where donation < 200;

--Question H:Which top 10 states contributes the highest donations
select state, sum(donation) as Total_donations
from Donation_Data
group by state
order by Total_donations desc
limit 10;

--Quesion I: Which top 10 states contributes the least donation
select state, sum(donation) as Total_donations
from Donation_Data
group by state
order by Total_donations
limit 10;

--Question j:What are the top 10 cars driven by the highest donors 
select car, dt.first_name, dt.last_name, sum(donation) as Total_donation
from Donation_Data as dt
left join Donor_Data as dr on dt.id = dr.id
group by car, dt.first_name, dt.last_name
order by Total_donation desc
limit 10;

select car, sum(donation) as Total_donation
from Donor_Data as dr
left join Donation_Data as dt on dt.id = dr.id
group by car
order by Total_donation desc
limit 10;

select *
from Donation_Data;

select *
from Donor_Data;


--Extra Analysis Question K: Who made the top 5 highest donations
select first_name, last_name, sum(donation) as Total_donation, count(donation) as donation_count
from Donation_Data
group by first_name, last_name
Order by Total_donation desc
limit 5;



--Extra Analysis Question L: What are the top 3 most preferred movie genre by donors.
select movie_genre, count(*) as movie_count
from Donor_Data
group by movie_genre
order by movie_count desc
limit 3;

