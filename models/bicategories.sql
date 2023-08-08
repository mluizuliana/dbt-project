select * from {{ref('joins')}}
where category_name = '{{var('category')}}'