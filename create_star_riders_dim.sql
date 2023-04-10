CREATE TABLE [star].[riders]
(
    rider_id INT PRIMARY KEY NONCLUSTERED NOT ENFORCED,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address VARCHAR(100),
    birthday DATE,
    is_member BIT,
    member_start_date_id DATE,
    member_end_date_id DATE
)
WITH
(
    CLUSTERED COLUMNSTORE INDEX
)

GO;