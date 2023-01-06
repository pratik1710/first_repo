{{ config (
    materialized="table"
)}}

with transaction as
(

    select item , vendor_name from DBT.public.adj_adv_947
)

select * from transaction