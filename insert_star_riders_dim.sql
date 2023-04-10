INSERT INTO [star].[riders] (rider_id, first_name, last_name, address, birthday, is_member, member_start_date_id, member_end_date_id)
SELECT r.rider_id, r.first_name, r.last_name, r.address, TRY_CONVERT(DATE,LEFT(r.birthday ,10)) AS birthday, r.is_member, TRY_CONVERT(DATE,LEFT(r.account_start_date ,10)) AS member_start_date_id, TRY_CONVERT(DATE,LEFT(r.account_end_date ,10)) AS member_end_date_id

FROM dbo.staging_rider r

GO;