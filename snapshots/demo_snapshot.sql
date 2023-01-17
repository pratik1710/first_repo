{% snapshot orders_snapshot_check %}

    {{
        config(
          target_database = 'SNAPSHOT' , 
          target_schema='snap',
          strategy='check',
          unique_key='id',
          check_cols = 'all'
        )
    }}

    select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}