UPDATE data.geometry SET geometry=ST_Transform(geography::geometry, 3857)