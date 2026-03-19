with artist_streaming as (
	select
	artist_id,
	artist_name,
	country_current,
	round(sum(ms_played)/60000, 2) as total_streaming_minutes
	
	from {{ ref('int_listening_events_joined') }} 
	
	group by
	artist_id,
	artist_name,
	country_current
),

ranked as (
    select
    *,
    rank() over(partition by country_current order by total_streaming_minutes desc) as country_rank
    
    from artist_streaming
)

select 
*

from ranked

where 
country_rank <= 10