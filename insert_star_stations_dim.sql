INSERT INTO [star].[stations] (station_id, name, latitude, longitude)
SELECT s.station_id, s.name, s.latitude, s.longitude

FROM dbo.staging_station s

GO;