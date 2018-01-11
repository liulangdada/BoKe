using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace jQueryGwc.Controllers
{
    public class CartController : Controller
    {
        //
        // GET: /SubCart/

        /// <summary>
        /// 购物车
        /// </summary>
        /// <returns></returns>
        public ActionResult Cart()
        {
            B2CSystemEntities1 b2c = new B2CSystemEntities1();
            //根据当前登陆者 查看他的购物车
            UserInfo user = Session["user"] as UserInfo;

            if (user != null)
            {
                //说明已经登陆了
                //得到用户id
                int userid = user.UserInfo_Id;
                //得到该用户的所有加入购物车的商品
                List<ShopCartInfo> coll = b2c.ShopCartInfo.Where(a => a.UserInfo_Id == userid).ToList();

                //实例化商品信息集合
                List<GoodsInfo> goodsList = new List<GoodsInfo>();
                //实例化string集合 存放商铺名字
                List<string> sList = new List<string>();
                foreach (var item in coll)
                {
                    //根据商品编号 得到商品的详细信息 并添加到商品集合里面
                    goodsList.Add(b2c.GoodsInfo.Where(a => a.GoodsInfo_Id == item.GoodsInfo_Id).FirstOrDefault());
                    //根据商品编号 得到商铺编号 
                    int? storyId = b2c.Shangjia_X_GoodsInfo.Where(a => a.GoodsInfo_Id == item.GoodsInfo_Id).FirstOrDefault().Store_Id;
                    //根据商铺编号 得到商铺名字 放在集合里面
                    if (!sList.Contains(b2c.StoreInfo.Where(a => a.StoreInfo_Id == storyId).FirstOrDefault().SName))
                    {
                        sList.Add(b2c.StoreInfo.Where(a => a.StoreInfo_Id == storyId).FirstOrDefault().SName);
                    }
                }
                //把所有商品信息放到ViewBag里面
                ViewBag.GoodsList = goodsList;
                //把该用户下所有购物车的商品的店铺名字存放在viewbag里面
                ViewBag.sList = sList;
            }
            return View();
        }

        /// <summary>
        /// 确认订单
        /// </summary>
        /// <returns></returns>
        public ActionResult Confirm()
        {
            //得到要购买的商品编号
            string goodsids = Request["goodsids"];
            //得到要购买的数量
            string nums = Request["num"];
            //将商品编号分割成数组
            string[] goodsid = goodsids.Split(',');
            //将要购买的数量分割成数组
            string[] num = nums.Split(',');

            //将商品编号数组放在viewbag
            ViewBag.goodsid = goodsid;
            //将商品数量放在viewbag
            ViewBag.num = num;
            return View();
        }

        /// <summary>
        /// 支付
        /// </summary>
        /// <returns></returns>
        public ActionResult PayFor()
        {
            return View();
        }
        /// <summary>
        /// 得到当前登陆用户购物车里的总数
        /// </summary>
        /// <returns></returns>
        public ActionResult getCarCount()
        {
            //得到当前登陆的用户
            UserInfo user = Session["user"] as UserInfo;
            int num = 0;
            if (user != null)
            {
                B2CSystemEntities1 b2c = new B2CSystemEntities1();
                //根据用户编号 得到他购物车不同商品的总数
                num = b2c.ShopCartInfo.Where(a => a.UserInfo_Id == user.UserInfo_Id).ToList().Count;
            }
            Response.Write(num);
            Response.End();
            return View();
        }


        /// <summary>
        /// 添加商品到购物车
        /// </summary>
        /// <returns></returns>
        public ActionResult Add_Car()
        {
            B2CSystemEntities1 b2c = new B2CSystemEntities1();
            //得到要添加的商品编号
            int goodsid = Convert.ToInt32(Request["goodsid"]);
            //得到当前登陆的用户
            UserInfo user = Session["user"] as UserInfo;
            if (user != null)
            {
                //说明用户已经登陆了
                //得到用户编号
                int userid = user.UserInfo_Id;
                //判断该用户是否已经收藏了该物品
                ShopCartInfo cart = b2c.ShopCartInfo.Where(a => a.GoodsInfo_Id == goodsid && a.UserInfo_Id == userid).FirstOrDefault();
                if (cart != null)
                {
                    //说明已经添加过该物品啦  那就修改添加的数量
                    int? num = cart.SC_number;
                    //在原有的基础上加1
                    cart.SC_number = num + 1;
                }
                else
                {
                    //否则 说明该用户还没有加入过该物品
                    //得到当前时间
                    DateTime dt = DateTime.Now.ToLocalTime();
                    //实例化ShopCartInfo
                    ShopCartInfo c = new ShopCartInfo();
                    //默认添加数量为1
                    c.SC_number = 1;
                    c.SC_addtime = dt;
                    c.GoodsInfo_Id = goodsid;
                    c.UserInfo_Id = userid;
                    //根据商品编号 得到商品价格 再赋值给ShopCartInfo
                    c.SC_price = b2c.GoodsInfo.Where(a => a.GoodsInfo_Id == goodsid).FirstOrDefault().GIPrice;
                    b2c.ShopCartInfo.Add(c);


                }

                int count = b2c.SaveChanges();
                Response.Write(count);
                Response.End();
            }
            else {
                Response.Write(-1);
                Response.End();
            }
            return View();
        }
    }
}
