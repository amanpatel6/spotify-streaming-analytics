with loyal_listeners as (
	select
	artist_id,
    artist_name,
	user_id,
	count(distinct event_id) as total_streams
	
	from {{ ref('int_listening_events_joined') }} 
	
	group by 
	artist_id,
    artist_name,
	user_id
	
	having
	total_streams > 5
)

select
artist_id,
artist_name,
count(distinct user_id) as total_users

from loyal_listeners a 

group by
artist_id,
artist_name