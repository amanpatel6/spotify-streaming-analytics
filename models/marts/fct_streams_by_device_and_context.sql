select 
device_type,
context,
count(distinct event_id) as total_streams

from {{ ref('int_listening_events_joined') }}

group by
device_type,
context