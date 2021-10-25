select sum(amount) from  {{ ref('demo')}} where account = account = 'account3' and date <= '2019/08/27' group by account

{{ config(fail_calc = "258,069.78") }}
{{ config(limit = 3000) }}
