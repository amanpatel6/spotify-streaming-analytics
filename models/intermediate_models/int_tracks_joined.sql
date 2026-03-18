select
a.track_id,
a.track_name,
a.duration_ms,
b.artist_id,
b.artist_name,
b.primary_genre,
c.album_id,
c.album_name

from {{ ref('stg_tracks') }} a
left join {{ ref('stg_artists') }} b on a.artist_id  = b.artist_id 
left join {{ ref('stg_albums') }} c on a.album_id  = c.album_id 
