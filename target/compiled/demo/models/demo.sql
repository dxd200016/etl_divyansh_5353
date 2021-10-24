SELECT date,
       amount AS daily_balance,
       account
FROM   (SELECT date,
               'Account1'        AS Account,
               (SELECT account1) AS amount
        FROM   etl_divyansh_5353.transformation_table
        UNION
        SELECT date,
               'Account2'        AS Account,
               (SELECT account2) AS amount
        FROM   etl_divyansh_5353.transformation_table
        UNION
        SELECT date,
               'Account3'        AS Account,
               (SELECT account3) AS amount
        FROM   etl_divyansh_5353.transformation_table
        UNION
        SELECT date,
               'Account4'        AS Account,
               (SELECT account4) AS amount
        FROM   etl_divyansh_5353.transformation_table)
WHERE  date >= ( '09/01/2017' )
ORDER  BY date,
          account ASC limit 5000