select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select count(*) as total_records from  EVALUATION.ETL_DIVYANSH_5353.demo
      
    ) dbt_internal_test