select
trim(cast(track_id as varchar)) as track_id,
trim(cast(album_id as varchar)) as album_id,
trim(cast(artist_id as varchar)) as artist_id,
trim(cast(track_name as varchar)) as track_name,
cast(duration_ms as int) as duration_ms,
cast(explicit_flag as boolean) as explicit_flag

from {{ ref('raw_tracks') }}