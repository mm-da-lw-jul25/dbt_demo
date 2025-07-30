 {% macro margin_percent(revenue, purchase_cost, precision=2) %}
     ROUND( SAFE_DIVIDE( ({{ revenue }} - {{ purchase_cost }}) , {{ revenue }} ) , {{ precision }})
 {% endmacro %}


 {% macro round_sum(arg_1, arg_2, precision=2) %}
     ROUND(( ({{ arg_1 }} + {{ arg_2 }})  ) , {{ precision }})
 {% endmacro %}
