select distinct event_name tipo, 
event_timestamp as datahora, 
event_schema as schema,
event_model modelo, 
event_user usuario, 
event_target target
from {{target.schema}}_meta.dbt_audit_log