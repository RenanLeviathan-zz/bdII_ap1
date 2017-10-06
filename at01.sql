conn sys as sysdba;
alter user hr identified by aluno account unlock;
conn hr;

--1)
--a)
select last_name,department_name from employees,departments where last_name like '__a%' and departments.department_id=employees.department_id order by last_name asc;

--b)
select count(*) from employees,departments where employees.department_id=departments.department_id group by departments.department_name;

--c)
select max(salary) - min(salary) as diferencas from employees; 

--d)
select distinct count(*),region_name from employees,departments,locations,countries,regions where employees.department_id=departments.department_id and departments.location_id=locations.location_id and locations.country_id=countries.country_id and countries.region_id=regions.region_id group by region_name;

--e)
