USE [HotelDB]
GO

SELECT [Floorid],[Floorname] FROM [dbo].[FloorInfo] where [Floorid] not in (SELECT [FloorID] from [dbo].[GuestRoomInfo])
GO


