select
date_trunc('month', played_at) as played_at_date,
primary_genre,
count(distinct event_id) as total_streams

from {{ ref('int_listening_events_joined') }} 

group by
played_at_date,
primary_genre