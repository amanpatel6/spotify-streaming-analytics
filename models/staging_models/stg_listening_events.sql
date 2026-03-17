select
trim(cast(event_id as varchar)) as event_id,
trim(cast(user_id as varchar)) as user_id,
trim(cast(track_id as varchar)) as track_id,
cast(played_at as timestamp) as played_at,
cast(ms_played as integer) as ms_played,
cast(is_skipped as boolean) as is_skipped,
trim(lower(cast(device_type as varchar))) as device_type,
trim(lower(cast(context as varchar))) as context,
trim(cast(session_id as varchar)) as session_id

from {{ ref('raw_listening_events') }}