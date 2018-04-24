USE [HotelDB]
GO

INSERT INTO [dbo].[CheckInBill]([CheckInID],[VIPID],[TypeID],[ArriveTime],[LeaveTime],[BillState],[CheckInNumber],[RoomID],[CheckinPrice],[Discount],[DiscountReason],[AddBed],[Earnest],[DestMan],[DestCompany],[Phone],[Operator],[Memo],[AmountRece],[ConsumeMoney],[AccountState],[AccountTime],[PayMode])
     VALUES
           (401,2018006,303,'2018-04-03 09:40:41','2018-04-05 12:00:00','ÒÑ¸¶¿î',2,202,400,0.0,NULL,0,300,'Jack',NULL,'15865232012','linda',NULL,400,400,1,'2018-04-05 12:00:00','Ö§¸¶±¦')
GO
