select
trim(cast(artist_id as varchar)) as artist_id,
trim(cast(artist_name as varchar)) as artist_name,
lower(trim(cast(primary_genre as varchar))) as primary_genre,
upper(trim(cast(artist_country as varchar))) as artist_country

from {{ ref('raw_artists') }}