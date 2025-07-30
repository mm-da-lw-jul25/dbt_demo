 -- int_campaigns.sql

 SELECT *
 FROM {{ref('stg_raw_chlg__adwords')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw_chlg__bing')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw_chlg__criteo')}}
 UNION ALL
 SELECT *
 FROM {{ref('stg_raw_chlg__facebook')}}