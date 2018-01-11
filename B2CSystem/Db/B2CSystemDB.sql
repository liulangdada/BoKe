use  master
---�������ݿ� B2CSystem
if exists(select 1 from sys.databases where name='B2CSystem')
begin
	drop database B2CSystem
end
create database B2CSystem
go
use B2CSystem
go

--========================��������Ա��
if  exists (select 1 from sys.objects where name='AdminInfo')
begin
	drop table AdminInfo
end
create table AdminInfo
(
	AdminInfo_Id int primary key identity,	--����Ա���
	AIAccount varchar(20),			--����Ա��½�˺�
	AIPwd varchar(20),				--����Ա��½����
	AIName varchar(10),			--����Ա��ʵ����
	AIImg varchar(64),				--����Աͷ��
	IsSa int,						--�Ƿ񳬼�����Ա 0(��) 1(��)
)

--========================�����û���
if  exists (select 1 from sys.objects where name='UserInfo')
begin
	drop table UserInfo
end
create table UserInfo
(
	UserInfo_Id int primary key identity,	--�û����
	UserName varchar(64),			--�û��ǳ�
	UserPhone varchar(11),			--���ֻ��ţ�
	UserPwd varchar(64)			--�û�����
)
 
--===========================�����û���ϸ��Ϣ��
if  exists (select 1 from sys.objects where name='UserDetails')
begin
	drop table UserDetails
end
create table UserDetails
(
	UserDetails_Id int primary key identity,
	UserInfo_Id int,					--�û���� 
	UDImg varchar(64),					--�û�ͷ��
	UDName varchar(10),				--�û���ʵ����
	UDSex char(2),						--�Ա�
	UDIDCard varchar(18),				--���֤
	UDBankcard varchar(64),			--���п�
	UDZF_password varchar(6),			--֧������
	UDAddTime datetime,				--�û�ע��ʱ��
	UDRemark varchar(64) 
)

--=========================�����ջ���ַ��
if  exists (select 1 from sys.objects where name='ShouAddress')
begin
	drop table ShouAddress
end
create table ShouAddress
(
	ShouAddress_Id  int primary key identity,	--�ջ���ַ���
	UserInfo_Id int,					--�û���� 
	SAName varchar(10),				--�ջ�������
	SAPhone varchar(11),				--�ջ��˵绰 
	SAAddress varchar(256),			--�ջ���ַ
	IsDefault int,						--�Ƿ�Ĭ�ϵ�ַ  0���� 1 (��)
)


 
--===========================�����̼ҵ�����Ϣ��
if  exists (select 1 from sys.objects where name='StoreInfo')
begin
	drop table StoreInfo
end
create table StoreInfo
(
	StoreInfo_Id int primary key identity,	--�̼ҵ��̱�� 
	AdminInfo_Id int,						--����Ա���
	SImg varchar(64),				--�̼ҵ���ͷ��
	SName varchar(32),				--�̼ҵ�������
	SBankcard varchar(64) ,			--�̼ҵ������п�
	SAddTime datetime ,				--����ע��ʱ��	
	
	SIDCard varchar(18) ,			--ע�������֤
	
	SRemark varchar(64) 
)


--=========================������Ʒ���ͱ�
if  exists (select 1 from sys.objects where name='GoodType')
begin
	drop table GoodType
end
create table GoodType
(
	GoodType_Id int identity primary key,	--��Ʒ���ͱ��
	GTName varchar(64)  ,			--��Ʒ��������
	GTRemark varchar(128)					--��Ʒ��ע
)

--===========================��ƷͼƬ�б�
if  exists (select 1 from sys.objects where name='GoodsImgs')
begin
	drop table GoodsImgs
end
create table GoodsImgs(
	GImgs_id int primary key identity,	-- ��ƷͼƬ���
	GImgs_thumbone varchar(256),			-- ��Ʒ��ϸͼ1  
	GImgs_thumbtwo varchar(256),			-- ��Ʒ��ϸͼ2  
	GImgs_thumbthree varchar(256),		-- ��Ʒ��ϸͼ3  
	GImgs_thumbfour varchar(256),		-- ��Ʒ��ϸͼ4  
	GImgs_text text,					-- ��Ʒ����ͼ(�����ԵĴ�ͼ)  
)

if  exists (select 1 from sys.objects where name='GoodsDetailsIMG')
begin
	drop table GoodsDetailsIMG
end
create table GoodsDetailsIMG(
	GoodsDetailsIMG int primary key identity,		-- ��ƷͼƬ���
	GoodsInfo_id int,								-- ��Ʒ���
	GoodsDetailsIMG_thumbone varchar(256),			-- ��Ʒ��ϸͼ1  
	GoodsDetailsIMG_thumbtwo varchar(256),			-- ��Ʒ��ϸͼ2  
	GoodsDetailsIMG_thumbthree varchar(256),		-- ��Ʒ��ϸͼ3  
)


--=========================������Ʒ��Ϣ��
if  exists (select 1 from sys.objects where name='GoodsInfo')
begin
	drop table GoodsInfo
end
create table GoodsInfo
(
	GoodsInfo_Id int identity primary key,	--��Ʒ��Ϣ���
	GIName varchar(64) ,			--��Ʒ����
	GoodsType_id int ,						--��Ʒ���ͱ��
	GoodsImgs_id int ,				--��ƷͼƬ�б�id
	GIPrice float ,					--��Ʒ�۸�
	GIItem varchar(64) ,			--��Ʒ�ͺ�
	GIShangShi datetime ,			--��Ʒ����ʱ��
	
	GICPU varchar(64),						--��ƷCPU
	GIPingMu varchar(64),					--��Ʒ��Ļ��С
	GIFenBianLv varchar(64),				--��Ʒ�ֱ���
	GIHouDu varchar(64) ,					--��Ʒ���
	GIDianChi varchar(64),					--��Ʒ�������
	GINeiCun varchar(64),					--��Ʒ�ڴ�
	
	GIKuCun int ,					--��Ʒ���
	CIXiaoLiang int ,						--��Ʒ����
	IsNew int ,						--�Ƿ���Ʒ 0(��) 1(��)
	IsHot int ,						--�Ƿ����� 0(��) 1(��)
	IsDown int ,					--�Ƿ��¼� 0(��) 1(��)
	GIRemark varchar(256) ,					--��Ʒ��ע
)


--===========================�������Ʒ�Ĺ�����
if  exists (select 1 from sys.objects where name='shangjia_X_GoodsInfo')
begin
	drop table Shangjia_X_GoodsInfo
end
create table Shangjia_X_GoodsInfo(
	SXG int PRIMARY KEY identity,	-- �������Ʒ�ı��  
	Store_Id int,					-- �̼ҵ��̱�� 
	GoodsInfo_Id int,				-- ��ƷId 
	GIZheKou float ,				--��Ʒ�ۿ� ��0.1-1��
)



--===========================������Ϣ��
if  exists (select 1 from sys.objects where name='OrderInfo')
begin
	drop table OrderInfo
end
create table OrderInfo
( 
  OrderInfo_Id int primary key identity,	--�������
  UserInfo_Id int,							--�û����
  GoodsInfo_Id int,							--��Ʒ���
  OrderState int,							--����״̬1����ǩ�գ���0���ѷ�������-1����������
  ShouAddress varchar(256),					--�ջ���ַ
  UserRemark varchar(200),					--�û���ע
  StoryRemark varchar(200)	,				--�̼ұ�ע 
  SongHuoTime int,							--�ͻ�ʱ�䣨0 ���ޣ� ��1, �����գ� ��-1 ��Ϣ�գ�

 -----2017/10/23  �������ݿ���
  is_tuikuan int ,					--�Ƿ��˿�1(�˿�) 0 �����˿
  sp_numt int ,						--��Ʒ����
  OrderInfo_time datetime ,			--�µ�ʱ��
)


--===========================���ﳵ��
if  exists (select 1 from sys.objects where name='ShopCartInfo')
begin
	drop table ShopCartInfo
end
create table ShopCartInfo
( 
	SC_Id int primary key identity,		--���ﳵID
	GoodsInfo_Id int,					--��Ʒ���
	UserInfo_Id int,					--�û����
	SC_addtime date,					--���ʱ��
	SC_price float,						--��Ʒ����
	SC_number int,						--��Ʒ����
	Remark varchar(200)					--��ע
)

--===========================�ղر�
if  exists (select 1 from sys.objects where name='CollectInfo')
begin
	drop table CollectInfo
end
create table CollectInfo(
	CollectInfo_Id int PRIMARY KEY identity,	--���
	GoodsInfo_Id int,							--��Ʒid  
	UserInfo_Id int,							--�û�id
	CI_time date,								--�ղ�ʱ��
	CI_Remark varchar(200),						--��ע
)

--===========================���۱�
if  exists (select 1 from sys.objects where name='pingjia')
begin
	drop table pingjia
end
create table pingjia(
	PJ_Id int PRIMARY KEY identity, -- ����id
	UserInfo_Id int, -- ������(�����û���)
	PJ_GoodsInfo_Id int,--���۵���Ʒ
	PJ_etime date, -- ����ʱ��
	PJ_content text, -- ��������
	PJ_rcontent text, -- �ظ�����
	PJ_rtime date, -- �ظ�ʱ��
	SJ_Id int, -- �ظ���(�̼�)
	PJ_rank int, -- ���۵ȼ�(1-5)
)



--===========================�ͷ�������
if  exists (select 1 from sys.objects where name='KeFu')
begin
	drop table KeFu
end
create table KeFu(
	KF_id int PRIMARY KEY identity, -- ����id
	UserInfo_Id int,				-- ������(�����û���)
	SJ_Id  int ,					--�̼ҵ��̱�� 
	KF_GoodsInfo_Id int,		--��������Ʒ
	UserInfo_time datetime,			-- ����ʱ��
	UserInfo_rcontent text,		--��Ϣ������
	
	KF_rcontent text,			-- �ظ�����
	KF_rtime datetime,				-- �ظ�ʱ��
	
)


--===========================�м�ƽ̨��ת�˱�
if  exists (select 1 from sys.objects where name='Center_Money')
begin
	drop table Center_Money
end
create table Center_Money(
	CM_id int PRIMARY KEY identity, -- ת�˱�id
	
	
	CMMoney float ,					--ת�˽�����û�15����δǩ�գ���Ĭ��Ϊ�û����ջ���Ǯ�Զ�ת���̼��˺ţ�
	CMTime  datetime,					--������������ʱ��
	UserInfo_Id int,				--�û�ID
	SJ_Id  int 				--�̼ҵ��̱�� 
)



--=======================������ҳ��(���ڸս���ҳʱ���� Ϊ�˻�����Ʒ��Ϣ���ѹ��)
if  exists (select 1 from sys.objects where name='DataList')
begin
	drop table DataList
end
create table DataList
(
	GoodsInfo_Id int identity primary key,	--��Ʒ��Ϣ���
	GIName varchar(64) ,			--��Ʒ����
	GoodsType_id int ,						--��Ʒ���ͱ��
	GoodsImgs_id int ,				--��ƷͼƬ�б�id
	GIPrice float ,					--��Ʒ�۸�
	GIItem varchar(64) ,			--��Ʒ�ͺ�
	GIShangShi datetime ,			--��Ʒ����ʱ��
	
	GICPU varchar(64),						--��ƷCPU
	GIPingMu varchar(64),					--��Ʒ��Ļ��С
	GIFenBianLv varchar(64),				--��Ʒ�ֱ���
	GIHouDu varchar(64) ,					--��Ʒ���
	GIDianChi varchar(64),					--��Ʒ�������
	GINeiCun varchar(64),					--��Ʒ�ڴ�
	
	GIKuCun int ,					--��Ʒ���
	CIXiaoLiang int  ,				--��Ʒ����
	IsNew int ,						--�Ƿ���Ʒ 0(��) 1(��)
	IsHot int ,						--�Ƿ����� 0(��) 1(��)
	IsDown int ,					--�Ƿ��¼� 0(��) 1(��)
	GIRemark varchar(256) ,					--��Ʒ��ע
)