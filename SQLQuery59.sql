USE [HotelDB]
GO

SELECT [TypeID],[Typename],[Price] FROM [dbo].[GuestRoomType] where [TypeID] in (Select [TypeID] from [dbo].[BookingList])
GO


