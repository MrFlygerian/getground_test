{% macro unix_nano_to_timestamp(unix_nano_field) %}
{# Converts time in unix nano format to timestamp -#}
 TIMESTAMP_SECONDS(CAST({{unix_nano_field}}/1000000000 AS int64))
{% endmacro %}
