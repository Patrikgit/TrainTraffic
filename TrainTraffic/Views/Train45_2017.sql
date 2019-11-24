CREATE VIEW [dbo].[Train45_2017]
	AS  SELECT 
      cast([departureDate] as date) as DepartureDate
      ,[runningCurrently]
      ,case timeTableRowActualTime  
         when '' then null 
        else cast([timeTableRowActualTime] as [datetime]) 
        end as ActualTime
      ,[timeTableRowCancelled] as Cancelled
      ,[timeTableRowCommercialStop] as CommercialStop
      ,[timeTableRowCommercialTrack] as CommercialTrack
      ,[timeTableRowDifferenceInMinutes] MinuteDifference
      ,[timeTableRowEstimateSource] as EstimateSource
      ,case timeTableRowLiveEstimateTime 
        when '' then null
        else cast([timeTableRowLiveEstimateTime] as [datetime]) end as timeTableRowLiveEstimateTime
      ,cast([timeTableRowScheduledTime] as [datetime]) as ScheduledTime
      ,[timeTableRowStationShortCode] as StationCode
      ,[timeTableRowTrainReadyAccepted] as TrainReadyAccepted 
      ,case timeTableRowTrainReadyTimestamp 
        when '' then null
        else cast([timeTableRowTrainReadyTimestamp] as [datetime]) 
        end as TrainReadyTime
      ,[timeTableRowTrainStopping] as TrainStopping
      ,[timeTableRowType] as DepatureArrival
      ,case [timetableAcceptanceDate] 
		when '' then null 
		else cast([timetableAcceptanceDate] as datetime) 
		end as AcceptanceDate
      ,[timetableType] 
      ,[trainCategory] TrainCategory
      ,[trainNumber] as TrainNumber 
      ,[trainType] TrainType
  FROM land.train45
  


