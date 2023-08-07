--exemplo de teste com b.o
select count(*) count, company_name, contact_name from 
{{source('sources','customers')}} 
group by company_name, contact_name
having count > 1