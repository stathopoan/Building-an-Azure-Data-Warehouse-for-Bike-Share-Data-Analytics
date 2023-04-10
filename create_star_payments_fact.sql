CREATE TABLE [star].[payments]
(
    payment_id INT PRIMARY KEY NONCLUSTERED NOT ENFORCED,
    rider_id INT NOT NULL,
    date_id DATE NOT NULL,
    amount FLOAT NOT NULL
)
WITH
(
    CLUSTERED COLUMNSTORE INDEX
)

GO;