select
trim(cast(user_id as varchar)) as user_id,
cast(created_at as date) as created_at,
trim(lower(cast(email as varchar))) as email,
trim(cast(first_name as varchar)) as first_name,
trim(cast(last_name as varchar)) as last_name,
trim(upper(cast(country_at_signup as varchar))) as country_at_signup,
trim(upper(cast(country_current as varchar))) as country_current,
trim(lower(cast(acquisition_channel as varchar))) as acquisition_channel, 
trim(lower(cast(subscription_tier as varchar))) as subscription_tier

from {{ ref('raw_users') }}