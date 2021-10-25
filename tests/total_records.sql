
select count(*) from  {{ ref('demo')}}

{{ config(fail_calc = "2920") }}
{{ config(limit = 3000) }}
