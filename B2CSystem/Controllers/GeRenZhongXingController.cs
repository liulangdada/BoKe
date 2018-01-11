using B2CSystem.DTO_models;
using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace B2CSystem.Controllers
{
    public class GeRenZhongXingController : Controller
    {
        //
        // GET: /GeRenZhongXing/

        B2CSystemEntities1 b2cs = new B2CSystemEntities1();

        /// <summary>
        /// 个人中心
        /// </summary>
        /// <returns></returns>
        public ActionResult GeRenZhongXing()
        {
            //这里我们得到登录的用户
            UserInfo user = Session["user"] as UserInfo;
            int user_id = user.UserInfo_Id;
            //根据用户id得到我们用户头像
            //string img_str = b2cs.UserDetails.Where(a => a.UserInfo_Id == user.UserInfo_Id).FirstOrDefault().UDImg;
            string img_str = "/IMG/TouXiang/11.jpg";
            //我们要查询我们的商品名称和图片,时间,和右边的按钮的变化

            //如果是签收的话我们要查询我们签收人的名字,得到我们签收时候的时间
            //如果是商品还没发出的话我们要把右边的按钮变为催发
            //如果是已发货,按钮变没
            ////我们把商品物流状态给存入了我们的DTO中去啦  

            //我们先把商品和商品图像表联查
            //然后我们在把三个表给联查一下     订单表,用户详细表,上一个联查的结果表
            var quer = from f in b2cs.GoodsImgs
                       join i in b2cs.GoodsInfo on f.GImgs_id equals i.GoodsImgs_id into joinss
                       from joinss1 in joinss.DefaultIfEmpty()
                       select new
                       {
                           id = joinss1.GoodsInfo_Id,
                           img = f.GImgs_thumbone,
                           price = joinss1.GIPrice,
                           sp_name = joinss1.GIName,
                           is_new = joinss1.IsNew,
                           is_hot = joinss1.IsHot,
                           kucun = joinss1.GIKuCun,
                           price1 = joinss1.GIPrice,

                       };

            var queray = from f in b2cs.OrderInfo
                         join i in quer on f.GoodsInfo_Id equals i.id into joins
                         from joins1 in joins.DefaultIfEmpty()
                         join j in b2cs.UserDetails on f.UserInfo_Id equals j.UserInfo_Id into join_ud_oi
                         from joins2 in join_ud_oi.DefaultIfEmpty()
                         select new DTO_models.DTO_OrderInfo_GoodsInfo
                         {
                             OrderState = f.OrderState,
                             sp_name = joins1.sp_name,
                             name = joins2.UDName,
                             id = joins1.id,
                             sp_img_str = joins1.img,
                             is_hot = joins1.is_hot,
                             is_new = joins1.is_new,
                             ku_cun = joins1.kucun,
                             price = joins1.price1


                         };

            List<DTO_OrderInfo_GoodsInfo> DTO_og = queray.Where(a => a.id == user_id).ToList();

            List<DTO_OrderInfo_GoodsInfo> DTO_is_new = queray.Where(a => a.is_new == 1).ToList();

            List<DTO_OrderInfo_GoodsInfo> DTO_is_hot = queray.Where(a => a.is_hot == 1).ToList();


            //我收藏的商品   根据我们用户id要得到我们收藏到图片和名字,价格   商品信息表,商品图片表,收藏表:我们根据我们用户的id查询我们商品id
            var queray1 = from f in b2cs.CollectInfo
                          join i in b2cs.GoodsInfo on f.GoodsInfo_Id equals i.GoodsInfo_Id into joins
                          from joins1 in joins.DefaultIfEmpty()
                          join j in b2cs.GoodsImgs on joins1.GoodsImgs_id equals j.GImgs_id into join_ud_oi
                          from joins2 in join_ud_oi.DefaultIfEmpty()
                          select new DTO_CollectInfo_GoodsInfo_GoodsImgs
                         {
                             id = f.UserInfo_Id,
                             sp_id = joins1.GoodsInfo_Id,
                             sp_img_str = joins2.GImgs_thumbone,
                             sp_name = joins1.GIName,
                             price = joins1.GIPrice
                         };

            List<DTO_CollectInfo_GoodsInfo_GoodsImgs> dto_list = queray1.Where(a => a.id == user_id).ToList();


            //我们得到时间
            int int_day = DateTime.Now.Day;
            string xingqi = DateTime.Now.DayOfWeek.ToString();
            string str = DateTime.Now.ToShortDateString();
            string str_time = str.Substring(0, str.LastIndexOf("/"));



            ViewBag.user = user;
            ViewBag.img_str = img_str;
            ViewBag.DTO_og = DTO_og;
            ViewBag.dto_list = dto_list;

            //我们传出时间
            ViewBag.xingqi = xingqi;
            ViewBag.str_time = str_time;
            ViewBag.int_day = int_day;

            //今日新品   热销
            ViewBag.DTO_is_new = DTO_is_new;
            ViewBag.DTO_is_hot = DTO_is_hot;


            return View();
        }

        /// <summary>
        /// 订单管理
        /// </summary>
        /// <returns></returns>
        public ActionResult order()
        {
            //这里我们得到登录的用户
            UserInfo user = Session["user"] as UserInfo;
            int user_id = user.UserInfo_Id;


            //查询我所有的订单   商品名字，商品图像，一些简单的介绍，价格，运费，交易状态，交易提示，右边按钮的提示，订单编号，订单时间
            //三表联查   商品详细表    商品图像表  订单表
            //得到   商品id,商品名字，图像，介绍(内存，分辨率)，价格，运费   
            //   订单表得到： 是否退货，商品数量，下单时间
            var quer = from f in b2cs.GoodsImgs
                       join i in b2cs.GoodsInfo on f.GImgs_id equals i.GoodsImgs_id into joinss
                       from joinss1 in joinss.DefaultIfEmpty()
                       join j in b2cs.OrderInfo on joinss1.GoodsInfo_Id equals j.OrderInfo_Id into join_oi
                       from joinss2 in join_oi.DefaultIfEmpty()
                       select new DTOgoods_orderinfo
                       {
                           sp_id = joinss1.GoodsInfo_Id,
                           user_id = joinss2.UserInfo_Id,
                           fenbianlv = joinss1.GIFenBianLv,
                           istuihuo = joinss2.is_tuikuan,
                           neicun = joinss1.GINeiCun,
                           OrderInfo_time = joinss2.OrderInfo_time,
                           price = joinss1.GIPrice,
                           sp_imgs = f.GImgs_thumbone,
                           sp_name = joinss1.GIName,
                           sp_num = joinss2.sp_numt,
                           OrderState = joinss2.OrderState,
                           OrderInfo_Id = joinss2.OrderInfo_Id

                       }; //得到我们全部的商品
            List<DTOgoods_orderinfo> dto_list = quer.Where(a => a.user_id == user_id).ToList();

            //得到我们已发货的东东
            List<DTOgoods_orderinfo> dto_yifahuo_list = dto_list.Where(a => a.OrderState == 0).ToList();

            //待发货
            List<DTOgoods_orderinfo> dto_daifahuo_list = dto_list.Where(a => a.OrderState == -1).ToList();
            //已签收  待评价
            List<DTOgoods_orderinfo> dto_yiqianhuo_list = dto_list.Where(a => a.OrderState == 1).ToList();
            //退货
            List<DTOgoods_orderinfo> dto_shibai_list = dto_list.Where(a => a.OrderState == -2).ToList();


            //只要是不签收的
            List<DTOgoods_orderinfo> dto_unyiqianhuo_list = dto_list.Where(a => a.OrderState != 1).ToList();


            ViewBag.dto_list = dto_list;
            ViewBag.dto_shibai_list = dto_shibai_list;
            ViewBag.dto_unyiqianhuo_list = dto_unyiqianhuo_list;

            ViewBag.dto_yifahuo_list = dto_yifahuo_list;
            ViewBag.dto_daifahuo_list = dto_daifahuo_list;
            ViewBag.dto_yiqianhuo_list = dto_yiqianhuo_list;

            return View();

        }
        /// <summary>
        /// 我们修改状态  把已发货改为以签收
        /// </summary>
        /// <returns></returns>
        public ActionResult OrderStates(int OrderInfo_Id, int OrderState)
        {
            B2CSystemEntities1 b2cs1 = new B2CSystemEntities1();
            OrderInfo oi = b2cs1.OrderInfo.Where(a => a.OrderInfo_Id == OrderInfo_Id).FirstOrDefault();
            oi.OrderState = OrderState;
            int row = b2cs1.SaveChanges();
            Response.Write(row);
            Response.End();

            return RedirectToAction("/GeRenZhongXing/order");
        }
        /// <summary>
        /// 我们删除订单状态  
        /// </summary>
        /// <returns></returns>
        public void OrderStatedelete(int OrderInfo_Id, int OrderState)
        {
            B2CSystemEntities1 b2cs1 = new B2CSystemEntities1();
            OrderInfo oi = b2cs1.OrderInfo.Where(a => a.OrderInfo_Id == OrderInfo_Id).FirstOrDefault();
            b2cs1.Entry(oi).State = System.Data.EntityState.Deleted;

            int row = b2cs1.SaveChanges();
            Response.Write(row);
            Response.End();

            // return RedirectToAction("/GeRenZhongXing/order");
        }




        /// <summary>
        /// 个人信息
        /// </summary>
        /// <returns></returns>
        public ActionResult information()
        {


            //这里我们得到登录的用户
            UserInfo user = Session["user"] as UserInfo;
            int user_id = user.UserInfo_Id;

            //查询出个人详细信息
            UserDetails ud = b2cs.UserDetails.Where(a => a.UserInfo_Id == user_id).FirstOrDefault(); ;
            //查询出昵称
            string name = b2cs.UserInfo.Where(a => a.UserInfo_Id == user_id).FirstOrDefault().UserName;

            //得到电话
            string iphone = b2cs.UserInfo.Where(a => a.UserInfo_Id == user_id).FirstOrDefault().UserPhone;

            //利用身份证得到出生日期
            string sfz = ud.UDIDCard;
            string year = sfz.Substring(6, 4);
            string month = sfz.Substring(10, 2);
            string day = sfz.Substring(12, 2);
            string brithday = year + "-" + month + "-" + day;
            //判断安全指数

            ViewBag.ud = ud;

            ViewBag.brithday = brithday;
            ViewBag.name = name;
            ViewBag.iphone = iphone;

            return View();

        }
        /// <summary>
        /// 保存修改的个人信息
        /// </summary>
        /// <returns></returns>
        public ActionResult information1()
        {
            //这里我们得到登录的用户
            UserInfo user = Session["user"] as UserInfo;
            int user_id = user.UserInfo_Id;

            string json = Request["jsonstr"];
            string[] jsonarr = json.Split(',');

            //修改数据库
            UserInfo ui = b2cs.UserInfo.Where(a => a.UserInfo_Id == user_id).FirstOrDefault();
            ui.UserName = jsonarr[0];
            ui.UserPhone = jsonarr[3];

            UserDetails ud = b2cs.UserDetails.Where(a => a.UserInfo_Id == user_id).FirstOrDefault();
            ud.UDName = jsonarr[1];
            ud.UDSex = jsonarr[2];

            int row = 0;
            row = b2cs.SaveChanges();

            Response.Write(row);
            Response.End();

            return RedirectToAction("/GeRenZhongXing/gerenzhongxing");

        }


        /// <summary>
        /// 修改的个人的图像
        /// </summary>
        /// <returns></returns>
        public ActionResult information2()
        {
            //这里我们得到登录的用户
            UserInfo user = Session["user"] as UserInfo;
            int user_id = user.UserInfo_Id;
            int row = 0;
            string url = "";
            string path = "";
            string msg = string.Empty;

            string filename = Request.Files[0].FileName;
            msg = "成功，此文件大小为：" + Request.Files[0].ContentLength;
            url = Server.MapPath("/IMG/TouXiang/" + Guid.NewGuid() + filename);
            path = "/IMG/TouXiang/" + Guid.NewGuid() + filename;
            //存储    
            Request.Files[0].SaveAs(url);

            //往数据库中修改
            B2CSystemEntities1 b2cs1 = new B2CSystemEntities1();
            UserDetails ud = b2cs1.UserDetails.Where(a => a.UserInfo_Id == user_id).FirstOrDefault();
            ud.UDImg = path;
            row = b2cs1.SaveChanges();


            return Json(new { row = row, msg = msg, imgpath = path }, "text/html", JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// 安全设置
        /// </summary>
        /// <returns></returns>
        public ActionResult safety()
        {

            return View();

        }

        
        /// <summary>
        /// 打开收货地址页面
        /// </summary>
        /// <returns></returns>
        public ActionResult address()
        {
            B2CSystemEntities1 b = new B2CSystemEntities1();
            //得到当前登陆的用户信息
            UserInfo user = Session["user"] as UserInfo;
            //得到登陆用户所有收货地址
            List<ShouAddress> shou = b.ShouAddress.Where(a => a.UserInfo_Id == user.UserInfo_Id).ToList();
            ViewBag.shou = shou;
            return View();
        }



        public ActionResult sindex()
        {

            return View();

        }


    }
}
