INSERT INTO [star].[trips] (trip_id, trip_duration_minutes, start_date_id, end_date_id, rider_id, rider_age, rideable_type, start_station_id, end_station_id )
SELECT 
 t.trip_id,
 DATEDIFF(minute, t.start_at, t.ended_at) AS trip_duration_minutes, 
 TRY_CONVERT(DATE,LEFT(t.start_at ,10)) AS start_date_id, 
 TRY_CONVERT(DATE,LEFT(t.ended_at ,10)) AS end_date_id, 
 t.rider_id, 
 DATEDIFF(year, r.birthday, t.start_at) AS rider_age,
 t.rideable_type,
 t.start_station_id,
 t.end_station_id


FROM dbo.staging_trip t
JOIN dbo.staging_rider r
ON t.rider_id = r.rider_id

GO;