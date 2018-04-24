USE [HotelDB]
GO
IF EXISTS(SELECT *FROM SYSOBJECTS WHERE NAME='FloorInfo') 
	BEGIN
		DROP TABLE BillDetail
		DROP TABLE BookingList
		DROP TABLE CheckInBill
		DROP TABLE GuestRoomInfo
		DROP TABLE FloorInfo
	END
GO

CREATE table FloorInfo (
	Floorid Int  PRIMARY KEY,
	Floorname Char(3),
);

IF EXISTS(SELECT *FROM SYSOBJECTS WHERE NAME='GuestRoomType')
	DROP TABLE GuestRoomType
GO
CREATE table GuestRoomType (
	TypeID Int PRIMARY KEY,
	Typename VarChar(40),
	Price Money,
	CombinPrice Money,
	OverdestineNum Int,
	Combination Bit,
);

CREATE table GuestRoomInfo (
	RoomID Int CONSTRAINT GuestRoomInfo_RoomID PRIMARY KEY,
	FloorID Int NOT NULL CONSTRAINT GuestRoomInfo_FloorID FOREIGN KEY REFERENCES FloorInfo(Floorid),
	TypeID Int NOT NULL CONSTRAINT GuestRoomInfo_TypeID FOREIGN KEY REFERENCES GuestRoomType(TypeID),
	GuestNumber Int check(GuestNumber>0),
	BedNumber Int check(BedNumber>0),
	RoomDesc VarChar(40),
	Memo VarChar(100),
	State VarChar(4) default 'ÎÞÈË×¡',
);

IF EXISTS(SELECT *FROM SYSOBJECTS WHERE NAME='tableVIP')
	DROP TABLE tableVIP
GO
CREATE table tableVIP (
	VIPID Int CONSTRAINT tableVIP_VIPID PRIMARY KEY,
	Name Varchar(10),
	Job Varchar(40),
	Phone Varchar(15) CHECK(LEN(Phone)>=11),
	E_mail Varchar(20) CHECK(E_mail LIKE '%@%'),
	Memo Varchar(80),

)

CREATE table CheckInBill (
	CheckInID Int CONSTRAINT CheckInBill_CheckInID PRIMARY KEY,
	VIPID Int NOT NULL CONSTRAINT CheckInBill_VIPID FOREIGN KEY REFERENCES tableVIP(VIPID),
	TypeID Int NOT NULL CONSTRAINT CheckInBill_TypeID FOREIGN KEY REFERENCES GuestRoomType(TypeID),
	ArriveTime Datetime,
	LeaveTime Datetime,
	BillState Varchar(20),
	CheckInNumber Int,
	RoomID int NOT NULL CONSTRAINT CheckInBill_RoomID FOREIGN KEY REFERENCES GuestRoomInfo(RoomID),
	CheckinPrice Money,
	Discount Float,
	DiscountReason Varchar(20),
	AddBed Bit,
	Earnest Money,
	DestMan Varchar(20),
	DestCompany Varchar(60),
	Phone Varchar(15),
	Operator Varchar(10),
	Memo Varchar(50),
	AmountRece Money,
	ConsumeMoney Money,
	AccountState Bit,
	AccountTime Datetime,
	PayMode Varchar(20),
);


CREATE table BillDetail (
	AccountID Int CONSTRAINT BillDetail_AccountID PRIMARY KEY,
	CheckInID Int NOT NULL CONSTRAINT BillDetail_CheckInID FOREIGN KEY REFERENCES CheckInBill(CheckInID),
	ConsumeContent Varchar(40),
	ConsumeMoney Money,
	ConsumeTime Datetime,
	Memo Varchar(100),
);


CREATE table BookingList (
	CheckInID Int CONSTRAINT BookingList_CheckInID PRIMARY KEY,
	VIPID Int NOT NULL CONSTRAINT BookingList_VIPID FOREIGN KEY REFERENCES tableVIP(VIPID),
	TypeID Int NOT NULL CONSTRAINT BookingList_TypeID FOREIGN KEY REFERENCES GuestRoomType(TypeID),
	ArriveTime Datetime,
	LeaveTime Datetime,
	BillState Varchar(20),
	CheckInNumber Int,
	RoomID Int NOT NULL CONSTRAINT BookingList_RoomID FOREIGN KEY REFERENCES GuestRoomInfo(RoomID),
	CheckinPrice Money,
	Discount Float,
	DiscountReason Varchar(20),
	AddBed Bit,
	Earnest Money,
	DestMan Varchar(20),
	DestCompany Varchar(60),
	Phone Varchar(15),
	Operator Varchar(10),
	Memo Varchar(50),
)

