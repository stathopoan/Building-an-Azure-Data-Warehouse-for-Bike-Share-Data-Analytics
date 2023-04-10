INSERT INTO [star].[payments] (payment_id, rider_id, date_id,amount)
SELECT p.payment_id, r.rider_id  ,TRY_CONVERT(DATE,LEFT(p.date,10)) AS date_id, p.amount

FROM dbo.staging_payment p
JOIN dbo.staging_rider r
ON r.rider_id = p.rider_id

GO;