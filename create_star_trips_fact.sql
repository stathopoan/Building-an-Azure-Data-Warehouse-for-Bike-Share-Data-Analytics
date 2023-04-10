CREATE TABLE [star].[trips]
(
    trip_id VARCHAR(50) PRIMARY KEY NONCLUSTERED NOT ENFORCED,
    trip_duration_minutes INT NOT NULL,
    start_date_id DATE NOT NULL,
    end_date_id DATE NOT NULL,
    rider_id INT NOT NULL,
    rider_age INT NOT NULL,
    rideable_type VARCHAR(75) NOT NULL,
    start_station_id VARCHAR(50) NOT NULL,
    end_station_id VARCHAR(50) NOT NULL 
)
WITH
(
    CLUSTERED COLUMNSTORE INDEX
)

GO;