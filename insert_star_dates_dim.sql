DECLARE @StartDate DATETIME = '01/01/2010'
DECLARE @EndDate DATETIME = '12/31/2023'
DECLARE @CurrentDate AS DATETIME = @StartDate



WHILE @CurrentDate < @EndDate
BEGIN

    INSERT INTO [star].[dates]
    SELECT
        @CurrentDate as [date],
        DAY(@CurrentDate) AS [day],
        DATENAME(WEEKDAY, @CurrentDate) AS [day_name],
        MONTH(@CurrentDate) AS [month],
        YEAR(@CurrentDate) AS [year],
        DATEPART(DW, @CurrentDate) AS [day_of_week]
    SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END