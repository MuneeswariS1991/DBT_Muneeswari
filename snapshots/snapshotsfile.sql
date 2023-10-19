{% snapshot mock_orders %}

{% set new_schema = target.schema + '_snapshot' %}

{{
    config(
        target_database = 'ANALYTICS'
        target_schema = DBT_MSUNDARASELVAM,
        unique_key = 'order_id'
        strategy = 'timestamp',
        updated_at = 'updated_at'    
    )
}}
select * from ANALYTICS.{{DBT_MSUNDARASELVAM}}.mock_orders

{% endsnapshot %}