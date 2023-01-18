{% snapshot orders_snapshot_check %}

    {{
        config(
          target_database = 'SNAPSHOT' , 
          target_schema='snap',
          strategy='check',
          unique_key='id',
          check_cols = 'all',
          invalidate_hard_deletes=True,
        )
    }}

    select * from {{ source('jaffle_shop', 'orders') }}

{% endsnapshot %}