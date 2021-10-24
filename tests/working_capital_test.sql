{{ config(tags = ['my_tag']) }}
{{ config(severity = 'error') }}
select count(*)  as total_records from  {{ ref('demo')}}