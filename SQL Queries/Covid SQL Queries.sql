--select latest vaccination data

create table VaccinatedPercentage (
Date date,
State_Abbreviations varchar(50),
State_Name varchar (50),
Fully_Vaccinated_Population float,
Percentage_of_Population float,
);

insert into VaccinatedPercentage
select *
from CovidVaccinatedPercentage
where Date = '2022-04-20'

--select latest case data

create table StateCases (
Date date,
State_Abbreviations varchar(50),
total_cases varchar(50),
conf_cases varchar(50),
prob_cases varchar(50),
new_case varchar(50),
pnew_case varchar(50),
tot_death varchar(50),
conf_death varchar(50),
prob_death varchar(50),
new_death varchar(50),
pnew_death varchar(50),
);

insert into StateCases
select *
from CovidCases
where submission_date = '2022-04-20'
