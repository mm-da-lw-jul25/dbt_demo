 -- int_campaigns.sql
 {{
     dbt_utils.union_relations(
         relations=[ref('stg_raw_chlg__adwords'), ref('stg_raw_chlg__bing'), ref('stg_raw_chlg__criteo'), ref('stg_raw_chlg__facebook')]
     )
 }}