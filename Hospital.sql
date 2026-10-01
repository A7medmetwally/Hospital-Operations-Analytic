select *
from hospital_generated;

create table hospital
like hospital_generated;

select *
from hospital;

insert hospital
select *
from hospital_generated;

select *
from hospital;

select `case type`,count(`case type`)
from hospital
group by `case type`;
-------------------------------------------
select Specialty,avg(los)
from hospital
group by Specialty;
-------------------------------------------
select DoctorName,count(*)
from hospital
group by DoctorName
order by  count(*) desc
limit 5;
-------------------------------------------
select `ï»¿Month`,sum(Revenue)
from hospital
group by `ï»¿Month`;
-------------------------------------------
    select  
    count(case when `Discharge Before 12PM`='yes' then 1 end)AS target_cases,
	count(*)AS total_cases,
    round(
    count(case when `Discharge Before 12PM`='yes' then 1 end)*100/count(*),2)  as percentage
    from hospital; 
    --------------------------------------
select Nationality, sum(Revenue)
from hospital 
group by Nationality
order by sum(Revenue) desc 
limit 3;
-------------------------------------------
select `Surgical Mix`,avg(`CMI Value`)
from hospital
group by  `Surgical Mix`;
-------------------------------------------
select DoctorName,avg(LOS)
from hospital 
group by DoctorName
having avg(LOS)>(select avg(LOS)
from hospital)
order by avg(LOS) desc;
------------------------------------------
select InsurancePlanName,count(*)
from hospital
group by InsurancePlanName
order by count(*) desc;
------------------------------------------
select `Case type`,sum(Revenue),
round(sum(Revenue)*100 / (select sum(revenue)from hospital), 2) as percentage
from hospital
group by `Case type`
 order by  sum(Revenue) desc;
 -----------------------------------------
 alter table hospital
 rename column `ï»¿Month` to Month;
 
select *
from hospital
  
  
    
    