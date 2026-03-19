select
primary_genre,
subscription_tier,
count(distinct event_id) as total_events,
count(distinct case when is_skipped = True then event_id end) as skipped_events,
round((count(distinct case when is_skipped = True then event_id end) / count(distinct event_id)) * 100, 2) as skip_rate_pct

from {{ ref('int_listening_events_joined') }} 

group by
primary_genre,
subscription_tier