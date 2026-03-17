select
a.event_id,
a.played_at,
a.is_skipped,
a.ms_played,
a.device_type,
a.context,
a.session_id,
b.user_id,
b.subscription_tier,
b.country_current,
c.track_id,
c.track_name,
c.artist_id,
c.artist_name,
c.primary_genre,
c.album_name

from {{ ref('stg_listening_events') }} a
left join {{ ref('stg_users') }} b on a.user_id = b.user_id
left join {{ ref('int_tracks' )}} c on a.track_id = c.track_id