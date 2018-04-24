USE [HotelDB]
GO

INSERT INTO [dbo].[BookingList]
           ([CheckInID],[VIPID],[TypeID],[ArriveTime],[LeaveTime],[BillState],[CheckInNumber],[RoomID],[CheckinPrice],[Discount],[DiscountReason],[AddBed],[Earnest],[DestMan],[DestCompany],[Phone],[Operator],[Memo])
     VALUES
           (601,2018001,301,'2018-4-24 10:00:47',NULL,'已预定',1,101,80,0.0,NULL,0,100,'Mary',NULL, '13813813813','linda','老客户')
GO
INSERT INTO [dbo].[BookingList]
           ([CheckInID],[VIPID],[TypeID],[ArriveTime],[LeaveTime],[BillState],[CheckInNumber],[RoomID],[CheckinPrice],[Discount],[DiscountReason],[AddBed],[Earnest],[DestMan],[DestCompany],[Phone],[Operator],[Memo])
     VALUES
           (602,2018002,302,'2018-4-24 10:05:47',NULL,'已预定',1,102,160,0.0,NULL,0,300,'Anna',NULL, '13913913913','linda','老客户')
GO
INSERT INTO [dbo].[BookingList]
           ([CheckInID],[VIPID],[TypeID],[ArriveTime],[LeaveTime],[BillState],[CheckInNumber],[RoomID],[CheckinPrice],[Discount],[DiscountReason],[AddBed],[Earnest],[DestMan],[DestCompany],[Phone],[Operator],[Memo])
     VALUES
           (603,2018003,303,'2018-4-24 10:05:47',NULL,'已预定',1,202,160,0.0,NULL,0,400,'Weiweian',NULL, '14014014014','linda','老客户')
GO


