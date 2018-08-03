--Nha test tren online
 --sp_addtype [ @typename = ] type,   
 --   [ @phystype = ] system_data_type   
 --   [ , [ @nulltype = ] 'null_type' ] ;  

--USE master;  
--GO  
--EXEC sp_droptype 'birthday';  
--GO  

USE [eCorp];  
GO
--Dùng cho các trường dữ liệu tự tăng của chương trình không phải Id như Stt, AccDocId, BizDocId, RowId
if(EXISTS(select * from sys.types WHERE name = 'UniqueKeyType' and is_user_defined=1))
	EXEC sp_droptype 'UniqueKeyType';  
GO  
EXEC sp_addtype @typename='UniqueKeyType', @phystype='varchar(16)', @nulltype = 'NOT NULL'
GO
--Kiểu dữ liệu số chứng từ 
if(EXISTS(select * from sys.types WHERE name = 'DocNoType' and is_user_defined=1))
	EXEC sp_droptype 'DocNoType';  
EXEC sp_addtype @typename='DocNoType', @phystype='nvarchar(32)', @nulltype = 'NOT NULL'
GO
--Dùng cho các trường mã
if(EXISTS(select * from sys.types WHERE name = 'CodeType' and is_user_defined=1))
	EXEC sp_droptype 'CodeType';  
EXEC sp_addtype @typename='CodeType', @phystype='nvarchar(24)', @nulltype = 'NOT NULL'
GO
--Dùng cho các trường tên ngắn
if(EXISTS(select * from sys.types WHERE name = 'ShortNameType' and is_user_defined=1))
	EXEC sp_droptype 'ShortNameType';  
EXEC sp_addtype @typename='ShortNameType', @phystype='nvarchar(64)', @nulltype = 'NOT NULL'
GO
--Dùng cho các trường tên dài
if(EXISTS(select * from sys.types WHERE name = 'LongNameType' and is_user_defined=1))
	EXEC sp_droptype 'LongNameType';  
EXEC sp_addtype @typename='LongNameType', @phystype='nvarchar(256)', @nulltype = 'NOT NULL'
GO
--Kiểu dữ liệu địa chỉ
if(EXISTS(select * from sys.types WHERE name = 'AddressType' and is_user_defined=1))
	EXEC sp_droptype 'AddressType';  
EXEC sp_addtype @typename='AddressType', @phystype='nvarchar(256)', @nulltype = 'NOT NULL'
GO
--Dùng cho các trường dữ liệu diển giải, ghi chú, ... nhập dữ liệu dài
if(EXISTS(select * from sys.types WHERE name = 'TextType' and is_user_defined=1))
	EXEC sp_droptype 'TextType';  
EXEC sp_addtype @typename='TextType', @phystype='nvarchar(1024)', @nulltype = 'NOT NULL'
GO
--Dùng khai báo số điện thoại di động, hoặc số bàn,... liên quan số điện thoại
if(EXISTS(select * from sys.types WHERE name = 'TelephoneType' and is_user_defined=1))
	EXEC sp_droptype 'TelephoneType';  
EXEC sp_addtype @typename='TelephoneType', @phystype='nvarchar(24)', @nulltype = 'NOT NULL'
GO
--Số fax
if(EXISTS(select * from sys.types WHERE name = 'FaxType' and is_user_defined=1))
	EXEC sp_droptype 'FaxType';  
EXEC sp_addtype @typename='FaxType', @phystype='nvarchar(24)', @nulltype = 'NOT NULL'
GO
--Kiểu dữ liệu tiền tệ
if(EXISTS(select * from sys.types WHERE name = 'MoneyType' and is_user_defined=1))
	EXEC sp_droptype 'MoneyType';  
EXEC sp_addtype @typename='MoneyType', @phystype='numeric(18,5)', @nulltype = 'NOT NULL'
GO
--Kiểu dữ liệu đơn giá
if(EXISTS(select * from sys.types WHERE name = 'PriceType' and is_user_defined=1))
	EXEC sp_droptype 'PriceType';  
EXEC sp_addtype @typename='PriceType', @phystype='numeric(18,5)', @nulltype = 'NOT NULL'
GO
--Kiểu dữ liệu số lượng
if(EXISTS(select * from sys.types WHERE name = 'QuantityType' and is_user_defined=1))
	EXEC sp_droptype 'QuantityType';  
EXEC sp_addtype @typename='QuantityType', @phystype='numeric(15,5)', @nulltype = 'NOT NULL'
GO

