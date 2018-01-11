use  master
---创建数据库 B2CSystem
if exists(select 1 from sys.databases where name='B2CSystem')
begin
	drop database B2CSystem
end
create database B2CSystem
go
use B2CSystem
go

--========================创建管理员表
if  exists (select 1 from sys.objects where name='AdminInfo')
begin
	drop table AdminInfo
end
create table AdminInfo
(
	AdminInfo_Id int primary key identity,	--管理员编号
	AIAccount varchar(20),			--管理员登陆账号
	AIPwd varchar(20),				--管理员登陆密码
	AIName varchar(10),			--管理员真实名字
	AIImg varchar(64),				--管理员头像
	IsSa int,						--是否超级管理员 0(否) 1(是)
)

--========================创建用户表
if  exists (select 1 from sys.objects where name='UserInfo')
begin
	drop table UserInfo
end
create table UserInfo
(
	UserInfo_Id int primary key identity,	--用户编号
	UserName varchar(64),			--用户昵称
	UserPhone varchar(11),			--（手机号）
	UserPwd varchar(64)			--用户密码
)
 
--===========================创建用户详细信息表
if  exists (select 1 from sys.objects where name='UserDetails')
begin
	drop table UserDetails
end
create table UserDetails
(
	UserDetails_Id int primary key identity,
	UserInfo_Id int,					--用户编号 
	UDImg varchar(64),					--用户头像
	UDName varchar(10),				--用户真实姓名
	UDSex char(2),						--性别
	UDIDCard varchar(18),				--身份证
	UDBankcard varchar(64),			--银行卡
	UDZF_password varchar(6),			--支付密码
	UDAddTime datetime,				--用户注册时间
	UDRemark varchar(64) 
)

--=========================创建收货地址表
if  exists (select 1 from sys.objects where name='ShouAddress')
begin
	drop table ShouAddress
end
create table ShouAddress
(
	ShouAddress_Id  int primary key identity,	--收货地址编号
	UserInfo_Id int,					--用户编号 
	SAName varchar(10),				--收货人姓名
	SAPhone varchar(11),				--收货人电话 
	SAAddress varchar(256),			--收货地址
	IsDefault int,						--是否默认地址  0（否） 1 (是)
)


 
--===========================创建商家店铺信息表
if  exists (select 1 from sys.objects where name='StoreInfo')
begin
	drop table StoreInfo
end
create table StoreInfo
(
	StoreInfo_Id int primary key identity,	--商家店铺编号 
	AdminInfo_Id int,						--管理员编号
	SImg varchar(64),				--商家店铺头像
	SName varchar(32),				--商家店铺名字
	SBankcard varchar(64) ,			--商家店铺银行卡
	SAddTime datetime ,				--店铺注册时间	
	
	SIDCard varchar(18) ,			--注册人身份证
	
	SRemark varchar(64) 
)


--=========================创建商品类型表
if  exists (select 1 from sys.objects where name='GoodType')
begin
	drop table GoodType
end
create table GoodType
(
	GoodType_Id int identity primary key,	--商品类型编号
	GTName varchar(64)  ,			--商品类型名称
	GTRemark varchar(128)					--商品备注
)

--===========================商品图片列表
if  exists (select 1 from sys.objects where name='GoodsImgs')
begin
	drop table GoodsImgs
end
create table GoodsImgs(
	GImgs_id int primary key identity,	-- 商品图片编号
	GImgs_thumbone varchar(256),			-- 商品详细图1  
	GImgs_thumbtwo varchar(256),			-- 商品详细图2  
	GImgs_thumbthree varchar(256),		-- 商品详细图3  
	GImgs_thumbfour varchar(256),		-- 商品详细图4  
	GImgs_text text,					-- 商品详情图(评价旁的大图)  
)

if  exists (select 1 from sys.objects where name='GoodsDetailsIMG')
begin
	drop table GoodsDetailsIMG
end
create table GoodsDetailsIMG(
	GoodsDetailsIMG int primary key identity,		-- 商品图片编号
	GoodsInfo_id int,								-- 商品编号
	GoodsDetailsIMG_thumbone varchar(256),			-- 商品详细图1  
	GoodsDetailsIMG_thumbtwo varchar(256),			-- 商品详细图2  
	GoodsDetailsIMG_thumbthree varchar(256),		-- 商品详细图3  
)


--=========================创建商品信息表
if  exists (select 1 from sys.objects where name='GoodsInfo')
begin
	drop table GoodsInfo
end
create table GoodsInfo
(
	GoodsInfo_Id int identity primary key,	--商品信息编号
	GIName varchar(64) ,			--商品名称
	GoodsType_id int ,						--商品类型编号
	GoodsImgs_id int ,				--商品图片列表id
	GIPrice float ,					--商品价格
	GIItem varchar(64) ,			--商品型号
	GIShangShi datetime ,			--商品上市时间
	
	GICPU varchar(64),						--商品CPU
	GIPingMu varchar(64),					--商品屏幕大小
	GIFenBianLv varchar(64),				--商品分辨率
	GIHouDu varchar(64) ,					--商品厚度
	GIDianChi varchar(64),					--商品电池容量
	GINeiCun varchar(64),					--商品内存
	
	GIKuCun int ,					--商品库存
	CIXiaoLiang int ,						--商品销量
	IsNew int ,						--是否新品 0(否) 1(是)
	IsHot int ,						--是否热销 0(否) 1(是)
	IsDown int ,					--是否下架 0(否) 1(是)
	GIRemark varchar(256) ,					--商品备注
)


--===========================店家于商品的关联表
if  exists (select 1 from sys.objects where name='shangjia_X_GoodsInfo')
begin
	drop table Shangjia_X_GoodsInfo
end
create table Shangjia_X_GoodsInfo(
	SXG int PRIMARY KEY identity,	-- 店家于商品的编号  
	Store_Id int,					-- 商家店铺编号 
	GoodsInfo_Id int,				-- 商品Id 
	GIZheKou float ,				--商品折扣 （0.1-1）
)



--===========================订单信息表
if  exists (select 1 from sys.objects where name='OrderInfo')
begin
	drop table OrderInfo
end
create table OrderInfo
( 
  OrderInfo_Id int primary key identity,	--订单编号
  UserInfo_Id int,							--用户编号
  GoodsInfo_Id int,							--商品编号
  OrderState int,							--订单状态1（已签收），0（已发货），-1（待发货）
  ShouAddress varchar(256),					--收货地址
  UserRemark varchar(200),					--用户备注
  StoryRemark varchar(200)	,				--商家备注 
  SongHuoTime int,							--送货时间（0 不限） （1, 工作日） （-1 休息日）

 -----2017/10/23  更新数据库了
  is_tuikuan int ,					--是否退款1(退款) 0 （不退款）
  sp_numt int ,						--商品数量
  OrderInfo_time datetime ,			--下单时间
)


--===========================购物车表
if  exists (select 1 from sys.objects where name='ShopCartInfo')
begin
	drop table ShopCartInfo
end
create table ShopCartInfo
( 
	SC_Id int primary key identity,		--购物车ID
	GoodsInfo_Id int,					--商品编号
	UserInfo_Id int,					--用户编号
	SC_addtime date,					--添加时间
	SC_price float,						--商品单价
	SC_number int,						--商品数量
	Remark varchar(200)					--备注
)

--===========================收藏表
if  exists (select 1 from sys.objects where name='CollectInfo')
begin
	drop table CollectInfo
end
create table CollectInfo(
	CollectInfo_Id int PRIMARY KEY identity,	--编号
	GoodsInfo_Id int,							--商品id  
	UserInfo_Id int,							--用户id
	CI_time date,								--收藏时间
	CI_Remark varchar(200),						--备注
)

--===========================评价表
if  exists (select 1 from sys.objects where name='pingjia')
begin
	drop table pingjia
end
create table pingjia(
	PJ_Id int PRIMARY KEY identity, -- 评价id
	UserInfo_Id int, -- 评价人(外联用户表)
	PJ_GoodsInfo_Id int,--评价的商品
	PJ_etime date, -- 评价时间
	PJ_content text, -- 评价内容
	PJ_rcontent text, -- 回复内容
	PJ_rtime date, -- 回复时间
	SJ_Id int, -- 回复人(商家)
	PJ_rank int, -- 评价等级(1-5)
)



--===========================客服交流表
if  exists (select 1 from sys.objects where name='KeFu')
begin
	drop table KeFu
end
create table KeFu(
	KF_id int PRIMARY KEY identity, -- 交流id
	UserInfo_Id int,				-- 交流人(外联用户表)
	SJ_Id  int ,					--商家店铺编号 
	KF_GoodsInfo_Id int,		--交流的商品
	UserInfo_time datetime,			-- 发送时间
	UserInfo_rcontent text,		--消息的内容
	
	KF_rcontent text,			-- 回复内容
	KF_rtime datetime,				-- 回复时间
	
)


--===========================中间平台的转账表
if  exists (select 1 from sys.objects where name='Center_Money')
begin
	drop table Center_Money
end
create table Center_Money(
	CM_id int PRIMARY KEY identity, -- 转账表id
	
	
	CMMoney float ,					--转账金额（如果用户15天内未签收，就默认为用户已收货，钱自动转入商家账号）
	CMTime  datetime,					--用来记天数的时间
	UserInfo_Id int,				--用户ID
	SJ_Id  int 				--商家店铺编号 
)



--=======================创建首页表(用于刚进首页时访问 为了缓解商品信息表的压力)
if  exists (select 1 from sys.objects where name='DataList')
begin
	drop table DataList
end
create table DataList
(
	GoodsInfo_Id int identity primary key,	--商品信息编号
	GIName varchar(64) ,			--商品名称
	GoodsType_id int ,						--商品类型编号
	GoodsImgs_id int ,				--商品图片列表id
	GIPrice float ,					--商品价格
	GIItem varchar(64) ,			--商品型号
	GIShangShi datetime ,			--商品上市时间
	
	GICPU varchar(64),						--商品CPU
	GIPingMu varchar(64),					--商品屏幕大小
	GIFenBianLv varchar(64),				--商品分辨率
	GIHouDu varchar(64) ,					--商品厚度
	GIDianChi varchar(64),					--商品电池容量
	GINeiCun varchar(64),					--商品内存
	
	GIKuCun int ,					--商品库存
	CIXiaoLiang int  ,				--商品销量
	IsNew int ,						--是否新品 0(否) 1(是)
	IsHot int ,						--是否热销 0(否) 1(是)
	IsDown int ,					--是否下架 0(否) 1(是)
	GIRemark varchar(256) ,					--商品备注
)