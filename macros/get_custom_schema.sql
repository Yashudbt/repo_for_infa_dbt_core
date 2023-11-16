-- put this in macros/get_custom_schema.sql

{% macro generate_schema_name(custom_schema_name, node) -%}
    {{ generate_schema_name_for_env(custom_schema_name, node) }}
{%- endmacro %}


{% macro set_schema(schema) %}
  {{ config(
    schema = schema
  ) }}
{% endmacro %}

{% macro generate_schema_name_2(custom_schema_name, node) -%}
    {%- if custom_schema_name is not defined -%}
        {{ target.schema | trim }}
    {%- else -%}
        {{ custom_schema_name | trim }}
    {%- endif -%}
{%- endmacro %}



