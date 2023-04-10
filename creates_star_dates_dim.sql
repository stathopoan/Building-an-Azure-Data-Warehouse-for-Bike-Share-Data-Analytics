CREATE TABLE [star].[dates]
(
    date DATE UNIQUE NOT ENFORCED,
    day INT NOT NULL,
    day_name VARCHAR(20) NOT NULL,
    month INT NOT NULL,
    year INT NOT NULL,
    day_of_week VARCHAR(100) NOT NULL
)
WITH
(
    DISTRIBUTION = HASH (date),
    CLUSTERED INDEX( [date] )
)

GO;