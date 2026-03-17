select 
trim(cast(album_id as varchar)) as album_id,
trim(cast(artist_id as varchar)) as artist_id,
trim(cast(album_name as varchar)) as album_name,
cast(release_year as integer) as release_year

from {{ ref('raw_albums') }}