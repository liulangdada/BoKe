use B2CSystem
go
--=====================���û���Ϣ���������
insert UserInfo values('С�һ�','13415248659','123456')
insert UserInfo values('С����','15647589658','123456')
insert UserInfo values('�Ŵ仨','17548655965','123456')
insert UserInfo values('��С��','13245625874','123456')
insert UserInfo values('�����','14565845521','123456')
insert UserInfo values('��Ѽ�','12698548326','123456')
insert UserInfo values('��̫��','14585421563','123456')
insert UserInfo values('С�ٺ�','14758269621','123456')
insert UserInfo values('С����','15123216438','123456')


--=====================���û���ϸ��Ϣ���������
insert UserDetails values(1,'/IMG/TouXiang/1.jpg','С�һ�','��','500221199711247012','622865485214552256','123456','2017-10-17',null)
insert UserDetails values(2,'/IMG/TouXiang/2.jpg','С����','Ů','500221199711247011','622865485214552257','123456','2017-10-17',null)
insert UserDetails values(3,'/IMG/TouXiang/3.jpg','�Ŵ仨','Ů','500221199711247009','622865485214552258','123456','2017-10-17',null)
insert UserDetails values(4,'/IMG/TouXiang/4.jpg','��С��','��','500221199711247010','622865485214552259','123456','2017-10-17',null)
insert UserDetails values(5,'/IMG/TouXiang/5.jpg','�����','��','500221199711247013','622865485214552250','123456','2017-10-17',null)
insert UserDetails values(6,'/IMG/TouXiang/6.jpg','��Ѽ�','Ů','500221199711247014','622865485214552254','123456','2017-10-17',null)
insert UserDetails values(7,'/IMG/TouXiang/7.jpg','��̫��','��','500221199711247015','622865485214552253','123456','2017-10-17',null)
insert UserDetails values(8,'/IMG/TouXiang/8.jpg','С�ٺ�','��','500221199711247016','622865485214552252','123456','2017-10-17',null)

--�����Ա����Ӳ�������
insert into AdminInfo values('15123216438','123456','admin','/IMG/TouXiang/9.jpg',1)
insert into AdminInfo values('17725164241','111111','С��','/IMG/TouXiang/10.jpg',0)
insert into AdminInfo values('13017491703','222222','С��','/IMG/TouXiang/11.jpg',0)
insert into AdminInfo values('15120244145','233333','����','/IMG/TouXiang/3.jpg',0)
insert into AdminInfo values('13679234568','444444','����','/IMG/TouXiang/2.jpg',0)
insert into AdminInfo values('13945852458','555555','����','/IMG/TouXiang/1.jpg',0)

--�����̱���Ӳ�������
insert into StoreInfo values (2,'/IMG/TouXiang/12.jpg','С���콢��','56483485484321548','2017-7-7','522124199705173659','�����̼�,ͯ������')
insert into StoreInfo values (3,'/IMG/TouXiang/15.jpg','�����콢��','485621685465165215','2017-8-7','545454752316635416','�����̼�,ͯ������')
insert into StoreInfo values (4,'/IMG/TouXiang/14.jpg','vivo�콢��','5126306853185321352','2017-9-7','455125543254186554','�����̼�,ͯ������')
insert into StoreInfo values (5,'/IMG/TouXiang/13.jpg','ƻ���콢��','15215214585446454','2017-10-7','520230541654215232','�����̼�,ͯ������')
insert into StoreInfo values (6,'/IMG/TouXiang/17.jpg','��������','5466554836546562549','2017-11-7','522124190521241241','�����̼�,ͯ������')



--==========����Ʒ���ͱ��������
insert GoodType values('�ֻ�',null)
insert GoodType values('����',null)
insert GoodType values('�ֱ�',null)

--==========����ƷͼƬ���������

--==========����ƷͼƬ���������

--======================�ֻ�
--==HuaWei
insert GoodsImgs values('/IMG/PhoneIMG/HuaWei/honor_7X/1.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/2.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/3.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/4.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/HuaWei/honor_8/1.jpg','/IMG/PhoneIMG/HuaWei/honor_8/2.jpg','/IMG/PhoneIMG/HuaWei/honor_8/3.jpg','/IMG/PhoneIMG/HuaWei/honor_8/4.jpg','/IMG/PhoneIMG/HuaWei/honor_8/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/HuaWei/honor_9/1.jpg','/IMG/PhoneIMG/HuaWei/honor_9/2.jpg','/IMG/PhoneIMG/HuaWei/honor_9/3.jpg','/IMG/PhoneIMG/HuaWei/honor_9/4.jpg','/IMG/PhoneIMG/HuaWei/honor_9/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/HuaWei/honor_V9play/1.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/2.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/3.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/4.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/5.jpg')
--==meitu
insert GoodsImgs values('/IMG/PhoneIMG/meitu/Meitu_T8s/1.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/2.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/3.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/4.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/5.jpg')
--==MEIZU
insert GoodsImgs values('/IMG/PhoneIMG/MEIZU/MEIZU_Note5/1.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/2.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/3.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/4.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/MEIZU/MEIZU_Note6/1.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/2.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/3.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/4.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/5.jpg')
--==NuBiYa
insert GoodsImgs values('/IMG/PhoneIMG/NuBiYa/nubia_Z17S/1.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/2.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/3.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/4.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/5.jpg')
--==OPPO
insert GoodsImgs values('/IMG/PhoneIMG/OPPO/OPPO_A77/1.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/2.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/3.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/4.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/OPPO/OPPO_R11/1.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/2.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/3.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/4.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/5.jpg')
--==vivo
insert GoodsImgs values('/IMG/PhoneIMG/vivo/vivo_X20/1.jpg','/IMG/PhoneIMG/vivo/vivo_X20/2.jpg','/IMG/PhoneIMG/vivo/vivo_X20/3.jpg','/IMG/PhoneIMG/vivo/vivo_X20/4.jpg','/IMG/PhoneIMG/vivo/vivo_X20/5.jpg')
--==Xiaomi
insert GoodsImgs values('/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/1.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/3.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/4.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/Xiaomi/Xiaomi_6/1.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/3.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/4.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/5.jpg')
insert GoodsImgs values('/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/5.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/3.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/4.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/5.jpg')


--==============================����
--======������
insert GoodsImgs values('/IMG/ComputerIMG/Association/5000-Association/1.jpg','/IMG/ComputerIMG/Association/5000-Association/2.jpg','/IMG/ComputerIMG/Association/5000-Association/3.jpg','/IMG/ComputerIMG/Association/5000-Association/4.jpg','/IMG/ComputerIMG/Association/5000-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/7000-Association/1.jpg','/IMG/ComputerIMG/Association/7000-Association/2.jpg','/IMG/ComputerIMG/Association/7000-Association/3.jpg','/IMG/ComputerIMG/Association/7000-Association/4.jpg','/IMG/ComputerIMG/Association/7000-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/R720-15IKB-Association/1.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/2.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/3.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/4.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/Y920-17IKB-Association/1.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/2.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/3.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/4.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/1.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/2.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/3.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/4.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/5.jpg')
--======����
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/5.jpg')
--======����
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/A580UR-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/FX63VD-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/GX701VI-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/5.jpg')


--==============================����
--======������
insert GoodsImgs values('/IMG/ComputerIMG/Association/5000-Association/1.jpg','/IMG/ComputerIMG/Association/5000-Association/2.jpg','/IMG/ComputerIMG/Association/5000-Association/3.jpg','/IMG/ComputerIMG/Association/5000-Association/4.jpg','/IMG/ComputerIMG/Association/5000-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/7000-Association/1.jpg','/IMG/ComputerIMG/Association/7000-Association/2.jpg','/IMG/ComputerIMG/Association/7000-Association/3.jpg','/IMG/ComputerIMG/Association/7000-Association/4.jpg','/IMG/ComputerIMG/Association/7000-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/R720-15IKB-Association/1.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/2.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/3.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/4.jpg','/IMG/ComputerIMG/Association/R720-15IKB-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/Y920-17IKB-Association/1.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/2.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/3.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/4.jpg','/IMG/ComputerIMG/Association/Y920-17IKB-Association/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/1.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/2.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/3.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/4.jpg','/IMG/ComputerIMG/Association/YOGA%205%20Pro-13IKB-Association/5.jpg')
--======����
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/500R4K-X03-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/8500GM-X02-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/2.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/900X3L-K01-Samsung/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/1.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/3.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/4.jpg','/IMG/ComputerIMG/Samsung/940X3L-K02-Samsung/5.jpg')
--======����
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/A580UR-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/A580UR-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/FX63VD-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/FX63VD-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/GX701VI-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/GX701VI-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/ROG%20GX700VO-Wharton/5.jpg')
insert GoodsImgs values('/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/1.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/2.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/3.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/4.jpg','/IMG/ComputerIMG/Wharton/Zenbook%203U-Wharton/5.jpg')


--����Ʒ�������ͼƬ
--=====�ֻ�
--==HuaWei
insert GoodsDetailsIMG values(1,'/IMG/PhoneIMG/HuaWei/honor_7X/honor_7X-1.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/honor_7X-2.jpg','/IMG/PhoneIMG/HuaWei/honor_7X/honor_7X-3.jpg')
insert GoodsDetailsIMG values(2,'/IMG/PhoneIMG/HuaWei/honor_8/honor_8-1.jpg','/IMG/PhoneIMG/HuaWei/honor_8/honor_8-2.jpg','/IMG/PhoneIMG/HuaWei/honor_8/honor_8-3.jpg')
insert GoodsDetailsIMG values(3,'/IMG/PhoneIMG/HuaWei/honor_9/honor_9-1.jpg','/IMG/PhoneIMG/HuaWei/honor_9/honor_9-2.jpg','/IMG/PhoneIMG/HuaWei/honor_9/honor_9-3.jpg')
insert GoodsDetailsIMG values(4,'/IMG/PhoneIMG/HuaWei/honor_V9play/honor_V9play-1.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/honor_V9play-2.jpg','/IMG/PhoneIMG/HuaWei/honor_V9play/honor_V9play-3.jpg')
--==meitu
insert GoodsDetailsIMG values(5,'/IMG/PhoneIMG/meitu/Meitu_T8s/Meitu_T8s-1.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/Meitu_T8s-2.jpg','/IMG/PhoneIMG/meitu/Meitu_T8s/Meitu_T8s-3.jpg')
--==MEIZU
insert GoodsDetailsIMG values(6,'/IMG/PhoneIMG/MEIZU/MEIZU_Note5/MEIZU_Note5-1.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/MEIZU_Note5-2.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note5/MEIZU_Note5-3.jpg')
insert GoodsDetailsIMG values(7,'/IMG/PhoneIMG/MEIZU/MEIZU_Note6/MEIZU_Note6-1.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/MEIZU_Note6-2.jpg','/IMG/PhoneIMG/MEIZU/MEIZU_Note6/MEIZU_Note6-3.jpg')
--==NuBiYa
insert GoodsDetailsIMG values(8,'/IMG/PhoneIMG/NuBiYa/nubia_Z17S/nubia_Z17S-1.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/nubia_Z17S-2.jpg','/IMG/PhoneIMG/NuBiYa/nubia_Z17S/nubia_Z17S-3.jpg')
--==OPPO
insert GoodsDetailsIMG values(9,'/IMG/PhoneIMG/OPPO/OPPO_A77/OPPO_A77-1.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/OPPO_A77-2.jpg','/IMG/PhoneIMG/OPPO/OPPO_A77/OPPO_A77-3.jpg')
insert GoodsDetailsIMG values(10,'/IMG/PhoneIMG/OPPO/OPPO_R11/OPPO_R11-1.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/OPPO_R11-2.jpg','/IMG/PhoneIMG/OPPO/OPPO_R11/OPPO_R11-3.jpg')
--==vivo
insert GoodsDetailsIMG values(11,'/IMG/PhoneIMG/vivo/vivo_X20/vivo_X20-1.jpg','/IMG/PhoneIMG/vivo/vivo_X20/vivo_X20-2.jpg','/IMG/PhoneIMG/vivo/vivo_X20/vivo_X20-3.jpg')
--==Xiaomi
insert GoodsDetailsIMG values(12,'/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/Xiaomi_4X-1.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/Xiaomi_4X-2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_4X/Xiaomi_4X-3.jpg')
insert GoodsDetailsIMG values(13,'/IMG/PhoneIMG/Xiaomi/Xiaomi_6/Xiaomi_6-1.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/Xiaomi_6-2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_6/Xiaomi_6-3.jpg')
insert GoodsDetailsIMG values(14,'/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/Xiaomi_Max2-1.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/Xiaomi_Max2-2.jpg','/IMG/PhoneIMG/Xiaomi/Xiaomi_Max2/Xiaomi_Max2-3.jpg')
--=====����
--==Association
insert GoodsDetailsIMG values(15,'/IMG/Computer/Association/5000-Association/5000-Association-1.jpg','/IMG/Computer/Association/5000-Association/5000-Association-2.jpg','/IMG/Computer/Association/5000-Association/5000-Association-3.jpg')
insert GoodsDetailsIMG values(16,'/IMG/Computer/Association/7000-Association/7000-Association-1.jpg','/IMG/Computer/Association/7000-Association/7000-Association-2.jpg','/IMG/Computer/Association/7000-Association/7000-Association-3.jpg')
insert GoodsDetailsIMG values(17,'/IMG/Computer/Association/R720-15IKB-Association/R720-15IKB-Association-1.jpg','/IMG/Computer/Association/R720-15IKB-Association/R720-15IKB-Association-2.jpg','/IMG/Computer/Association/R720-15IKB-Association/R720-15IKB-Association-3.jpg')
insert GoodsDetailsIMG values(18,'/IMG/Computer/Association/Y920-17IKB-Association/Y920-17IKB-Association-1.jpg','/IMG/Computer/Association/Y920-17IKB-Association/Y920-17IKB-Association-2.jpg','/IMG/Computer/Association/Y920-17IKB-Association/Y920-17IKB-Association-3.jpg')
insert GoodsDetailsIMG values(19,'/IMG/Computer/Association/YOGA%205%20Pro-13IKB-Association/YOGA%205%20Pro-13IKB-Association-1.jpg','/IMG/Computer/Association/YOGA%205%20Pro-13IKB-Association/YOGA%205%20Pro-13IKB-Association-2.jpg','/IMG/Computer/Association/YOGA%205%20Pro-13IKB-Association/YOGA%205%20Pro-13IKB-Association-3.jpg')
--==Samsung
insert GoodsDetailsIMG values(20,'/IMG/Computer/Samsung/500R4K-X03-Samsung/500R4K-X03-Samsung-1.jpg','/IMG/Computer/Samsung/500R4K-X03-Samsung/500R4K-X03-Samsung-2.jpg','/IMG/Computer/Samsung/500R4K-X03-Samsung/500R4K-X03-Samsung-3.jpg')
insert GoodsDetailsIMG values(21,'/IMG/Computer/Samsung/8500GM-X02-Samsung/8500GM-X02-Samsung-1.jpg','/IMG/Computer/Samsung/8500GM-X02-Samsung/8500GM-X02-Samsung-2.jpg','/IMG/Computer/Samsung/8500GM-X02-Samsung/8500GM-X02-Samsung-3.jpg')
insert GoodsDetailsIMG values(22,'/IMG/Computer/Samsung/900X3L-K01-Samsung/900X3L-K01-Samsung-1.jpg','/IMG/Computer/Samsung/900X3L-K01-Samsung/900X3L-K01-Samsung-2.jpg','/IMG/Computer/Samsung/900X3L-K01-Samsung/900X3L-K01-Samsung-3.jpg')
insert GoodsDetailsIMG values(23,'/IMG/Computer/Samsung/940X3L-K02-Samsung/940X3L-K02-Samsung-1.jpg','/IMG/Computer/Samsung/940X3L-K02-Samsung/940X3L-K02-Samsung-2.jpg','/IMG/Computer/Samsung/940X3L-K02-Samsung/940X3L-K02-Samsung-3.jpg')
--==Wharton
insert GoodsDetailsIMG values(24,'/IMG/Computer/Wharton/A580UR-Wharton/A580UR-Wharton-1.jpg','/IMG/Computer/Wharton/A580UR-Wharton/A580UR-Wharton-2.jpg','/IMG/Computer/Wharton/A580UR-Wharton/A580UR-Wharton-3.jpg')
insert GoodsDetailsIMG values(25,'/IMG/Computer/Wharton/FX63VD-Wharton/FX63VD-Wharton-1.jpg','/IMG/Computer/Wharton/FX63VD-Wharton/FX63VD-Wharton-2.jpg','/IMG/Computer/Wharton/FX63VD-Wharton/FX63VD-Wharton-3.jpg')
insert GoodsDetailsIMG values(26,'/IMG/Computer/Wharton/GX701VI-Wharton/GX701VI-Wharton-1.jpg','/IMG/Computer/Wharton/GX701VI-Wharton/GX701VI-Wharton-2.jpg','/IMG/Computer/Wharton/GX701VI-Wharton/GX701VI-Wharton-3.jpg')
insert GoodsDetailsIMG values(27,'/IMG/Computer/Wharton/ROG%20GX700VO-Wharton/ROG%20GX700VO-Wharton-1.jpg','/IMG/Computer/Wharton/ROG%20GX700VO-Wharton/ROG%20GX700VO-Wharton-2.jpg','/IMG/Computer/Wharton/ROG%20GX700VO-Wharton/ROG%20GX700VO-Wharton-3.jpg')
insert GoodsDetailsIMG values(28,'/IMG/Computer/Wharton/Zenbook%203U-Wharton/Zenbook%203U-Wharton-1.jpg','/IMG/Computer/Wharton/Zenbook%203U-Wharton/Zenbook%203U-Wharton-2.jpg','/IMG/Computer/Wharton/Zenbook%203U-Wharton/Zenbook%203U-Wharton-3.jpg')




--==========����Ʒ��ϸ��Ϣ���������
--======�ֻ�
insert GoodsInfo values('��Ϊ��ҫ7X',1,1,1999,'����7X','2017-05-12','Kirin 659','5.93Ӣ��','2160*1080','168mm*108mm*75mm','4200hm','4G + 128GB',300,0,0,0,0,null)
insert GoodsInfo values('��Ϊ��ҫ8�ഺ��',1,2,1399,'��ҫ8�ഺ��','2017-07-12','����655','5.20Ӣ��','1920*1080','158mm*100mm*75mm','3800hm','4G + 64GB',300,0,0,0,0,null)
insert GoodsInfo values('��Ϊ��ҫ9',1,3,2999,'��ҫ9','2017-09-12','����960','5.15Ӣ��','1920*1080','158mm*108mm*60mm','3900hm','6G + 128G',300,0,0,1,0,null)
insert GoodsInfo values('��Ϊ��ҫV9 play',1,4,999,'��ҫV9 play','2017-10-12','MT6750','5.2Ӣ��','720x1280','158mm*100mm*75mm','3600hm','3G + 32GB',300,0,0,0,0,null)
insert GoodsInfo values('Meitu/��ͼ',1,5,3399,'T8s','2017-10-01','������','5.2Ӣ��','1920*1080','158mm*100mm*75mm','3600hm','4G + 128GB',300,0,0,0,0,null)
insert GoodsInfo values('Meizu/����',1,6,1399,'����Note5ȫ��ͨ','2017-07-01','������Helio P10','5.2Ӣ��','1920*1080','158mm*100mm*75mm','3600hm','4G + 64GB',300,0,0,0,0,null)
insert GoodsInfo values('Meizu/����',1,7,1699,'����Note6','2017-08-01','��ͨ����625','5.5Ӣ��','1920*1080','168mm*100mm*80mm','3900hm','4G + 64GB',300,0,0,0,0,null)
insert GoodsInfo values('nubia/Ŭ����',1,8,2999,'z17s','2017-10-01','��ͨ����835','5.73Ӣ��','2040*1080','168mm*108mm*70mm','3600hm','6G + 64GB',300,0,0,1,0,null)
insert GoodsInfo values('OPPO',1,9,1799,'A77','2017-09-01','��ͨMSM8953','5.5Ӣ��','1920*1080','168mm*108mm*70mm','3400hm','3G + 32GB',300,0,0,0,0,null)
insert GoodsInfo values('OPPO',1,10,2799,'R11','2017-10-01','��ͨSDM660','5.5Ӣ��','1920*1080','168mm*108mm*70mm','3400hm','6G + 64GB',300,0,0,1,0,null)
insert GoodsInfo values('vivo',1,11,3398,'X20','2017-10-01','��ͨSDM660','6.0Ӣ��','2160*1080','168mm*108mm*70mm','3600hm','6G + 128GB',300,0,0,1,0,null)
insert GoodsInfo values('Xiaomi/С��',1,12,899,'�����ֻ�4X','2017-09-01','��ͨ����435','5.0Ӣ��','1920*1080','168mm*108mm*70mm','3000hm','3GB + 32GB',300,0,0,0,0,null)
insert GoodsInfo values('Xiaomi/С��',1,13,2999,'С���ֻ�6','2017-08-01','��ͨ����835','5.15Ӣ��','1920*1080','168mm*108mm*70mm','3200hm','6G + 128GB',300,0,0,1,0,null)
insert GoodsInfo values('Xiaomi/С��',1,14,2499,'С���ֻ�Max2','2017-08-01','��ͨ����821','6.50Ӣ��','1920*1080','168mm*108mm*70mm','4200hm','6G + 64GB',300,0,0,1,0,null)

--=====����
--==����
insert GoodsInfo values('С�� ��5000',2,15,8000,'i5-7200U','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i5','15.6Ӣ��','1920*1080','378*260*22.9mm','4200hm','4G + 1T',300,0,1,1,0,null)
insert GoodsInfo values('С�� ��7000',2,16,9000,'i5-8250U','2017-05-12','�ڰ˴�Kabylake����Ӣ�ض�? ���? i5','14.0Ӣ��','1920x1080','378*260*22.9mm','4300hm','8GB/1T+128G',300,0,0,1,0,null)
insert GoodsInfo values('������ R720-15IKB',2,17,13000,'i7-7700HQ','2017-05-12','CPU���ߴ�����Ӣ�ض�? ���? i5','15.6Ӣ��','1920x1080','���25.8mm','4400hm','8GB/1T+128G',300,0,1,1,0,null)
insert GoodsInfo values('������ Y920-17IKB',2,18,15000,'i7-7820HK','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i7','17.3Ӣ��','1920x1080','425.4x315.2x 36.2mm','4500hm','64G + ˫512',300,0,1,1,0,null)
insert GoodsInfo values('YOGA 5 Pro-13IKB',2,19,5000,'i5-7200U','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i5','13.9Ӣ��','1920x1080','���14.3mm','4600hm','8G + 256GB',300,0,0,0,0,null)
--==����
insert GoodsInfo values('���ǣ�SAMSUNG��500R4K',2,20,3000,'500R4K-X03','2017-05-12','Intel Core i5-5200U(2.2GHz/L3 3M)','14Ӣ��','1366��768','null','4700hm','4G + 500GB',300,0,1,0,0,null)
insert GoodsInfo values('���ǣ�SAMSUNG��900X3L������',2,21,8000,'900X3L-K01','2017-05-12','Intel Core i7-6500U(2.5GHz/L3 4M)','13.3Ӣ��','1920��1080','313.8��218.5��13.4mm','4800hm','8G + 256GB',300,0,0,1,0,null)
insert GoodsInfo values('���ǣ�SAMSUNG��940X3L-K02',2,22,10000,'940X3L-K02','2017-05-12','Intel Core i7-6500U(2.5GHz/L3 4M)','13.3Ӣ��','3200��1800','314.6��220.6��14.9mm','4900m','8G + 256GB',300,0,1,0,0,null)
insert GoodsInfo values('���ǣ�SAMSUNG��������ʿ 8500GM��Ϸ��',2,23,5000,'i5-7200U','2017-05-12','CPU���ߴ�����Ӣ�ض�? ���? i5','23.0Ӣ��','1920��1080','null','5200hm','8G + 1T',300,0,0,0,0,null)
--==��˶
insert GoodsInfo values('A580UR-�칫���ֱʼǱ�',2,24,5000,'A580UR','2017-05-12','Ӣ�ض�? ���? ','15.6Ӣ��','1366X768','Լ380 x 251 x 23.2mm','4200hm','4G + 500GB',300,0,1,1,0,null)
insert GoodsInfo values('FX63VD-���б���4����Ϸ��',2,25,10000,'FX63VD','2017-05-12','Ӣ�ض�? ���? i7-7700HQ','15.6Ӣ��','1920*1080','380x256mmx19.2mm','6200hm','8G + 128G SSD+1TB HDD',300,0,0,1,0,null)
insert GoodsInfo values('GX701VI-��ҹ�����Ϸ��',2,26,15000,'ROG GX701VI','2017-05-12','���ߴ� Intel? Core','17.3Ӣ��','FHD(1920*1080)','429x309x35mm','4500hm','32G + 1T',300,0,1,0,0,null)
insert GoodsInfo values('ROG GX700VO�ʼǱ�',2,27,8000,'GX700VO','2017-05-12','Ӣ�ض�? ���? I7-6820HK','17.3Ӣ��','1920x1080','429(��) x 309(��) x 3335 (��) mm','6200hm','32G + 256GB PCI-E SSD x 2',300,0,0,1,0,null)
insert GoodsInfo values('Zenbook 3U-��ҫ3ϵ���ᱡ�ʼǱ�',2,28,7000,'FX63VD','2017-05-12','Ӣ�ض�? ���? i7-7700HQ','15.6Ӣ��','1920X1080','296*191.2*12.05mm','3200hm','8G + 256GB',300,0,1,0,0,null)





--�����۱���Ӳ�������
insert into pingjia values(1,2,'2017-10-10','����ܺ��ã������٣���ϲ����','лл������ۣ�ϣ�������ٴι��١�','2017-10-11',2,5)
insert into pingjia values(2,14,'2017-10-13','�۸��Ż�,����ϷҲ���ԣ�','лл������ۣ������´λ����ĸ��á�','2017-10-15',3,5)
insert into pingjia values(4,5,'2017-10-12','����ֻ��������������������Զ���ͼ��','лл������ۣ���ӭ�´ι��١�','2017-10-14',4,5)
insert into pingjia values(5,9,'2017-10-11','�����ֻ��ǲ���ģ�������Ϸ���е㿨','лл������ۣ����ǻ�Ľ��ġ�','2017-10-15',3,4)
insert into pingjia values(3,12,'2017-10-10','����Ϸ�����ԣ����Ǵ�һ��ͻ���ȡ�','лл������ۣ�������Ƶġ�','2017-10-11',2,4)
insert into pingjia values(7,16,'2017-10-13','���������ۺܺÿ�������������','лл������ۣ�ϣ���´�������','2017-10-14',6,5)
insert into pingjia values(6,1,'2017-10-10','������Ļ������Ϸ���ио�','лл������ۣ�������������ǵ�������','2017-10-11',5,5)
insert into pingjia values(4,19,'2017-9-13','����û���⣬�͵����    ','лл������ۣ������´λ����ĸ��á�','2017-9-15',3,5)
insert into pingjia values(4,6,'2017-10-10','����ܺ��ã������٣���ϲ����','лл������ۣ�ϣ�������ٴι��١�','2017-10-11',2,5)
insert into pingjia values(2,18,'2017-8-13','�۸��Ż�,����ϷҲ���ԣ�','лл������ۣ������´λ����ĸ��á�','2017-8-15',3,5)

--���ջ���ַ����Ӳ�������

insert into ShouAddress values(1,'С�һ�','13415248659','������ɳƺ���������������ѧԺ',1)
insert into ShouAddress values(2,'С����','15647589658','������ɳƺ���������Ž��',0)
insert into ShouAddress values(3,'�Ŵ仨','17548655965','������ɳƺ���������Ͻ�',1)
insert into ShouAddress values(4,'��С��','13245625874','������ɳƺ���������������ѧԺ',1)
insert into ShouAddress values(5,'�����','14565845521','������ɳƺ���������������ѧԺ',1)
insert into ShouAddress values(6,'��Ѽ�','12698548326','������ɳƺ���������������ѧԺ',0)
insert into ShouAddress values(7,'��̫��','14585421563','������ɳƺ���������������ѧԺ',0)
insert into ShouAddress values(1,'С�һ�','13415248659','������ɳƺ���������������ѧԺ',0)
insert into ShouAddress values(8,'С�ٺ�','14758269621','������ɳƺ���������������ѧԺ',1)
insert into ShouAddress values(3,'�Ŵ仨','17548655965','������ɳƺ���������Ͻ�',0)
insert into ShouAddress values(5,'�����','14565845521','������ɳƺ���������������ѧԺ',1)

--��Ʒ��������Ӳ�������
insert into Shangjia_X_GoodsInfo values(1,12,0.8)
insert into Shangjia_X_GoodsInfo values(1,13,0.8)
insert into Shangjia_X_GoodsInfo values(1,9,0.8)
insert into Shangjia_X_GoodsInfo values(1,10,0.8)
insert into Shangjia_X_GoodsInfo values(2,14,0.8)
insert into Shangjia_X_GoodsInfo values(2,15,0.8)
insert into Shangjia_X_GoodsInfo values(2,16,0.8)
insert into Shangjia_X_GoodsInfo values(2,17,0.8)
insert into Shangjia_X_GoodsInfo values(2,14,0.8)
insert into Shangjia_X_GoodsInfo values(2,18,0.8)
insert into Shangjia_X_GoodsInfo values(3,11,0.8)
insert into Shangjia_X_GoodsInfo values(4,1,0.8)
insert into Shangjia_X_GoodsInfo values(4,2,0.8)
insert into Shangjia_X_GoodsInfo values(4,3,0.8)
insert into Shangjia_X_GoodsInfo values(4,4,0.8)
insert into Shangjia_X_GoodsInfo values(5,5,0.8)
insert into Shangjia_X_GoodsInfo values(5,6,0.8)
insert into Shangjia_X_GoodsInfo values(5,7,0.8)
insert into Shangjia_X_GoodsInfo values(5,8,0.8)

insert into Shangjia_X_GoodsInfo values(4,19,0.8)
insert into Shangjia_X_GoodsInfo values(4,20,0.8)
insert into Shangjia_X_GoodsInfo values(4,21,0.8)
insert into Shangjia_X_GoodsInfo values(4,22,0.8)
insert into Shangjia_X_GoodsInfo values(5,23,0.8)
insert into Shangjia_X_GoodsInfo values(5,24,0.8)
insert into Shangjia_X_GoodsInfo values(5,25,0.8)
insert into Shangjia_X_GoodsInfo values(5,26,0.8)
insert into Shangjia_X_GoodsInfo values(5,27,0.8)
insert into Shangjia_X_GoodsInfo values(5,28,0.8)



--���ﳵ��Ӳ�����Ϣ

insert into ShopCartInfo values(4,1,'2017-10-1',999,1,'�۸��Ż�')
insert into ShopCartInfo values(8,2,'2017-10-11',2999,1,'����')
insert into ShopCartInfo values(9,3,'2017-11-1',1799,1,'�����ֺ�')
insert into ShopCartInfo values(12,4,'2017-10-15',699,2,'������')
insert into ShopCartInfo values(14,5,'2017-10-12',8000,1,'���κÿ�')
insert into ShopCartInfo values(16,6,'2017-10-18',13000,1,'�е��')
insert into ShopCartInfo values(19,7,'2017-10-10',3000,1,'������')
insert into ShopCartInfo values(23,8,'2017-10-16',5000,1,'������')
insert into ShopCartInfo values(25,1,'2017-10-8',15000,1,'̫����')

--���ղر��������
insert into CollectInfo values(2,1,'2017-10-10','��ʾ����')
insert into CollectInfo values(5,2,'2017-8-11','��ʾ����')
insert into CollectInfo values(7,3,'2017-7-6','��ʾ����')
insert into CollectInfo values(10,4,'2017-9-12','��ʾ����')
insert into CollectInfo values(11,5,'2017-3-10','��ʾ����')
insert into CollectInfo values(14,6,'2017-10-15','��ʾ����')
insert into CollectInfo values(16,7,'2017-8-25','��ʾ����')
insert into CollectInfo values(18,8,'2017-9-16','��ʾ����')
insert into CollectInfo values(22,5,'2017-5-20','��ʾ����')
insert into CollectInfo values(25,1,'2017-8-18','��ʾ����')

--���м�ƽ̨��ת�˱��������
 insert into Center_Money values('999','2017-10-1',1,2)
 insert into Center_Money values('3999','2017-10-11',2,3)
 insert into Center_Money values('13000','2017-8-1',3,2)
 insert into Center_Money values('3399','2017-9-13',4,1)
 insert into Center_Money values('1799','2017-10-25',5,2)
 insert into Center_Money values('2799','2017-7-18',6,3)
 insert into Center_Money values('8000','2017-8-13',2,4)
 insert into Center_Money values('5000','2017-10-15',7,2)
 insert into Center_Money values('3000','2017-11-18',5,1)
 insert into Center_Money values('7000','2017-6-26',8,3)
 insert into Center_Money values('9000','2017-9-24',3,5)









































--====================================================����ҳ���ݱ��������=======================================

--==========����Ʒ��ϸ��Ϣ���������
--======�ֻ�
insert DataList values('��Ϊ��ҫ7X',1,1,1999,'����7X','2017-05-12','Kirin 659','5.93Ӣ��','2160*1080','168mm*108mm*75mm','4200hm','4G + 128GB',300,0,0,0,0,null)
insert DataList values('��Ϊ��ҫ8�ഺ��',1,2,1599,'��ҫ8�ഺ��','2017-07-12','����655','5.20Ӣ��','1920*1080','158mm*100mm*75mm','3800hm','4G + 64GB',300,0,0,0,0,null)
insert DataList values('��Ϊ��ҫ9',1,3,2299,'��ҫ9','2017-09-12','����960','5.15Ӣ��','1920*1080','158mm*108mm*60mm','3900hm','6G + 128G',300,0,0,1,0,null)
insert DataList values('��Ϊ��ҫV9 play',1,4,999,'��ҫV9 play','2017-10-12','MT6750','5.2Ӣ��','720x1280','158mm*100mm*75mm','3600hm','3G + 32GB',300,0,0,0,0,null)
insert DataList values('Meitu/��ͼ',1,5,3399,'T8s','2017-10-01','������','5.2Ӣ��','1920*1080','158mm*100mm*75mm','3600hm','4G + 128GB',300,0,0,0,0,null)
insert DataList values('Meizu/����',1,6,1399,'����Note5ȫ��ͨ','2017-07-01','������Helio P10','5.2Ӣ��','1920*1080','158mm*100mm*75mm','3600hm','4G + 64GB',300,0,0,0,0,null)
insert DataList values('Meizu/����',1,7,1699,'����Note6','2017-08-01','��ͨ����625','5.5Ӣ��','1920*1080','168mm*100mm*80mm','3900hm','4G + 64GB',300,0,0,0,0,null)
insert DataList values('nubia/Ŭ����',1,8,2999,'z17s','2017-10-01','��ͨ����835','5.73Ӣ��','2040*1080','168mm*108mm*70mm','3600hm','6G + 64GB',300,0,0,1,0,null)
insert DataList values('OPPO',1,9,1799,'A77','2017-09-01','��ͨMSM8953','5.5Ӣ��','1920*1080','168mm*108mm*70mm','3400hm','3G + 32GB',300,0,0,0,0,null)
insert DataList values('OPPO',1,10,2799,'R11','2017-10-01','��ͨSDM660','5.5Ӣ��','1920*1080','168mm*108mm*70mm','3400hm','6G + 64GB',300,0,0,1,0,null)
insert DataList values('vivo',1,11,3398,'X20','2017-10-01','��ͨSDM660','6.0Ӣ��','2160*1080','168mm*108mm*70mm','3600hm','6G + 128GB',300,0,0,1,0,null)
insert DataList values('Xiaomi/С��',1,12,899,'�����ֻ�4X','2017-09-01','��ͨ����435','5.0Ӣ��','1920*1080','168mm*108mm*70mm','3000hm','3GB + 32GB',300,0,0,0,0,null)
insert DataList values('Xiaomi/С��',1,13,2999,'С���ֻ�6','2017-08-01','��ͨ����835','5.15Ӣ��','1920*1080','168mm*108mm*70mm','3200hm','6G + 128GB',300,0,0,1,0,null)
insert DataList values('Xiaomi/С��',1,14,2499,'С���ֻ�Max2','2017-08-01','��ͨ����821','6.50Ӣ��','1920*1080','168mm*108mm*70mm','4200hm','6G + 64GB',300,0,0,1,0,null)

--=====����
--==����
insert DataList values('С�� ��5000',2,15,8000,'i5-7200U','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i5','15.6Ӣ��','1920*1080','378*260*22.9mm','4200hm','4G + 1T',300,0,1,1,0,null)
insert DataList values('С�� ��7000',2,16,9000,'i5-8250U','2017-05-12','�ڰ˴�Kabylake����Ӣ�ض�? ���? i5','14.0Ӣ��','1920x1080','378*260*22.9mm','4300hm','8GB/1T+128G',300,0,0,1,0,null)
insert DataList values('������ R720-15IKB',2,17,13000,'i7-7700HQ','2017-05-12','CPU���ߴ�����Ӣ�ض�? ���? i5','15.6Ӣ��','1920x1080','���25.8mm','4400hm','8GB/1T+128G',300,0,1,1,0,null)
insert DataList values('������ Y920-17IKB',2,18,15000,'i7-7820HK','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i7','17.3Ӣ��','1920x1080','425.4x315.2x 36.2mm','4500hm','64G + ˫512',300,0,1,1,0,null)
insert DataList values('YOGA 5 Pro-13IKB',2,19,5000,'i5-7200U','2017-05-12','���ߴ�Kabylake����Ӣ�ض�? ���? i5','13.9Ӣ��','1920x1080','���14.3mm','4600hm','8G + 256GB',300,0,0,0,0,null)
--==����
insert DataList values('���ǣ�SAMSUNG��500R4K',2,20,3000,'500R4K-X03','2017-05-12','Intel Core i5-5200U(2.2GHz/L3 3M)','14Ӣ��','1366��768','null','4700hm','4G + 500GB',300,0,1,0,0,null)
insert DataList values('���ǣ�SAMSUNG��900X3L������',2,21,8000,'900X3L-K01','2017-05-12','Intel Core i7-6500U(2.5GHz/L3 4M)','13.3Ӣ��','1920��1080','313.8��218.5��13.4mm','4800hm','8G + 256GB',300,0,0,1,0,null)
insert DataList values('���ǣ�SAMSUNG��940X3L-K02',2,22,10000,'940X3L-K02','2017-05-12','Intel Core i7-6500U(2.5GHz/L3 4M)','13.3Ӣ��','3200��1800','314.6��220.6��14.9mm','4900m','8G + 256GB',300,0,1,0,0,null)
insert DataList values('���ǣ�SAMSUNG��������ʿ 8500GM��Ϸ��',2,23,5000,'i5-7200U','2017-05-12','CPU���ߴ�����Ӣ�ض�? ���? i5','23.0Ӣ��','1920��1080','null','5200hm','8G + 1T',300,0,0,0,0,null)
--==��˶
insert DataList values('A580UR-�칫���ֱʼǱ�',2,24,5000,'A580UR','2017-05-12','Ӣ�ض�? ���? ','15.6Ӣ��','1366X768','Լ380 x 251 x 23.2mm','4200hm','4G + 500GB',300,0,1,1,0,null)
insert DataList values('FX63VD-���б���4����Ϸ��',2,25,10000,'FX63VD','2017-05-12','Ӣ�ض�? ���? i7-7700HQ','15.6Ӣ��','1920*1080','380x256mmx19.2mm','6200hm','8G + 128G SSD+1TB HDD',300,0,0,1,0,null)
insert DataList values('GX701VI-��ҹ�����Ϸ��',2,26,15000,'ROG GX701VI','2017-05-12','���ߴ� Intel? Core','17.3Ӣ��','FHD(1920*1080)','429x309x35mm','4500hm','32G + 1T',300,0,1,0,0,null)
insert DataList values('ROG GX700VO�ʼǱ�',2,27,8000,'GX700VO','2017-05-12','Ӣ�ض�? ���? I7-6820HK','17.3Ӣ��','1920x1080','429(��) x 309(��) x 3335 (��) mm','6200hm','32G + 256GB PCI-E SSD x 2',300,0,0,1,0,null)
insert DataList values('Zenbook 3U-��ҫ3ϵ���ᱡ�ʼǱ�',2,28,7000,'FX63VD','2017-05-12','Ӣ�ض�? ���? i7-7700HQ','15.6Ӣ��','1920X1080','296*191.2*12.05mm','3200hm','8G + 256GB',300,0,1,0,0,null)



--�򶩵��������Ϣ
insert into OrderInfo values(1,2,-1,'������ɳƺ���������ֵ������������ѧԺ','ϣ���ܿ�㵽��','�ᾡ���',0,0,10,GETDATE())
insert into OrderInfo values(2,11,1,'������ɳƺ���������ֵ������������ѧԺ','������','лл�ǵ�5�Ǻ���',0,0,10,GETDATE())
insert into OrderInfo values(3,5,0,'������ɳƺ���������ֵ������������ѧԺ','�ܺ�ԭͼһ���ͺ�','�϶��ǵ�',0,0,10,GETDATE())
insert into OrderInfo values(4,8,-1,'������ɳƺ���������ֵ������������ѧԺ','���쵽��','�ᾡ���',0,0,10,GETDATE())
insert into OrderInfo values(5,16,-1,'������ɳƺ���������ֵ������������ѧԺ','ϣ�������Ǽٻ�','���ǲ��ܵ�',0,0,10,GETDATE())
insert into OrderInfo values(6,7,0,'������ɳƺ���������ֵ������������ѧԺ','��С��Ʒ��','���е�',0,0,10,GETDATE())
insert into OrderInfo values(7,14,-1,'������ɳƺ���������ֵ������������ѧԺ','ϣ���ܿ�㵽��','�ᾡ���',0,0,10,GETDATE())
insert into OrderInfo values(8,13,1,'������ɳƺ���������ֵ������������ѧԺ','���β���','лл',0,0,10,GETDATE())



select * from DataList


select * from Shangjia_X_GoodsInfo
select * from GoodsInfo
select * from AdminInfo
select * from UserInfo
select * from UserDetails
select * from AdminInfo
select * from StoreInfo
select * from GoodType
select * from Shangjia_X_GoodsInfo where GoodsInfo_Id in (
select GoodsInfo_Id from GoodsInfo where GoodsType_id=1)
select GIName from DataList where GoodsType_id = 1 group by GIName
select * from GoodsImgs
select * from GoodsInfo
select * from GoodsDetailsIMG
--select * from OrderInfo
--select COUNT(*) from ShopCartInfo where UserInfo_Id=7
--select * from OrderInfo
--select * from KeFu where UserInfo_Id=7

--declare @i int=0
--while(@i<10000000)
--begin
--	insert into GoodType values('hh',null)
--	set @i += 1 
--end


