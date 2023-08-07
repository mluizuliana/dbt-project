{{
    config(
        materialized='table', 
        post_hook=["
            GRANT SELECT ON TABLE {{target.schema}}.bireport TO GROUP biusers;
        "]
    )
}}

select * from {{ref('joins')}}