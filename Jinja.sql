(#

{% set my_animals = ['Elephant', 'dog'] %}
{{ my_animals[0] }}
{{ my_animals[1] }}


{% set my_cool_string = 'wow! cool!' %}
{% set my_second_cool_string = 'This is ninja' %}
{% set my_cool_number = 100 %}

{{ my_cool_string }} {{ my_second_cool_string }}


{% for animal in my_animals %}
    My favorite animal is the {{ animal }}
    I like {{ animal }} very much
{% endfor %}

#)

{% set temperature = 75 %}

{% if temperature < 65 %}
    Time for a coffee!!
{% else %}
    Time for a cold brew!!
{% endif %}