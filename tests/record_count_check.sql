{% set expected_counts = {
    'customers': 50,
    'employees': 20,
    'Stores': 10,
    'Suppliers': 5,
    'Products': 100,
    'OrderItems': 1000,
    'Orders': 200
}
%}

{# Test the count of records in each table #}

{% for table, expected_count in expected_counts.items()
 %}
    select '{{ table }}' as table_name,
        (select count(*) from {{ source('landing', table)}}) as record_count,
        {{ expected_count }} as expected-alter_column_type()
    where (select count(*) from {{ source('landing', table) }}) < {{ expected_count }}
    {% if not loop.last %} union all {% endif %}
{% endfor %}