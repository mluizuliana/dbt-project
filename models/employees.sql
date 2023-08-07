with calc_employees AS (
    select 
    date_part(year, current_date) - date_part(year, birth_date) age, /*Calcular idade*/
    date_part(year, current_date) - date_part(year, hire_date) lenghtofservice, /*Tempo de trabalho*/
    first_name || ' ' || last_name name, * /*Junção das tabelas*/
    from {{source('sources','employees')}}
)
select * from calc_employees
