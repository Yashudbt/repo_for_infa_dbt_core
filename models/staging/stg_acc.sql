{{
   config(
        materialized = 'view',
        database = 'hidden-pad-398906',
        schema = 'staging'   
    )
}} 

select 
*
from {{source("landing","LAN_TBL")}}
