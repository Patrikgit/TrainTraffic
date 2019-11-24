CREATE VIEW [dbo].[Train45_2017]
	AS  SELECT 
      cast([departureDate] as date) as DepartureDate
      ,[runningCurrently] as RunningNow
      ,case timeTableRowActualTime  
         when '' then null 
        else cast([timeTableRowActualTime] as [datetime]) 
        end as ActualDateTime
      ,[timeTableRowCancelled] as Cancelled
      ,[timeTableRowCommercialStop] as CommercialStop
      ,[timeTableRowCommercialTrack] as CommercialTrack
      ,cast([timeTableRowDifferenceInMinutes] as int) as MinuteDifference
      ,[timeTableRowEstimateSource] as EstimateSource
      ,case timeTableRowLiveEstimateTime 
        when '' then null
        else cast([timeTableRowLiveEstimateTime] as [datetime]) end as LiveEstimateTime
      ,cast([timeTableRowScheduledTime] as [datetime]) as ScheduledDateTime
	  ,cast(substring(timeTableRowScheduledTime,12,5) as time) as ScheduledTime
	  ,case timeTableRowActualTime
		when '' then null
		else cast(substring(timeTableRowActualTime,12,5) as time)
		end as ActualTime
      ,[timeTableRowStationShortCode] as StationCode
      ,[timeTableRowTrainReadyAccepted] as TrainReadyAccepted 
      ,case timeTableRowTrainReadyTimestamp 
        when '' then null
        else cast([timeTableRowTrainReadyTimestamp] as [datetime]) 
        end as TrainReadyDateTime
      ,[timeTableRowTrainStopping] as TrainStopping
      ,[timeTableRowType] as DepatureArrival
      ,case [timetableAcceptanceDate] 
		when '' then null 
		else cast([timetableAcceptanceDate] as datetime) 
		end as AcceptanceDateTime
      ,[trainCategory] TrainCategory
      ,[trainNumber] as TrainNumber 
      ,[trainType] TrainType
  FROM land.train45
  


