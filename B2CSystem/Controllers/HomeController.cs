using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace B2CSystem.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/


        //public void IsPass()
        //{ 
        //    string pwd = Request["pwd"];
        //    Session[]
        //}
        public ActionResult Index()
        {

            //B2CSystemEntities1 b3 = new B2CSystemEntities1();
            //DateTime dt1 = DateTime.Now.ToLocalTime();
            //for (int i = 0; i < 10000000; i++)
            //{
            //    b3.GoodType.Add(new GoodType { GTName = "hah", GTRemark = "" });
            //}
            //DateTime dt2 = DateTime.Now.ToLocalTime();

            //int count = b3.SaveChanges();
            //TimeSpan num = dt2 - dt1;



            //得到application中的数据
            //MvcApplication ac = new MvcApplication();
            //List<DataList> dList = ac.Application["list"] as List<DataList>;
            //实例化数据库对象模型
            B2CSystemEntities1 b2cDb = new B2CSystemEntities1();
            //查询热销的所有手机 
            List<DataList> SJsList = b2cDb.DataList.Where(a => a.GoodsType_id == 1).Take(20).ToList();
            ViewBag.SJList = SJsList;
            //查询所有热销电脑
            List<DataList> DNList = b2cDb.DataList.Where(a => a.GoodsType_id == 2).Take(20).ToList();
            ViewBag.DNList = DNList;
            //查询销量前十的手机
            List<DataList> XXSJList = b2cDb.DataList.Where(a => a.GoodsType_id == 1).OrderByDescending(b => b.CIXiaoLiang).Take(20).ToList();
            ViewBag.XXSJList = XXSJList;
            //查询销量前十的电脑
            List<DataList> XXDNList = b2cDb.DataList.Where(a => a.GoodsType_id == 2).OrderByDescending(b => b.CIXiaoLiang).Take(20).ToList();
            ViewBag.XXDNList = XXDNList;
            //得到新品手机
            List<DataList> XPSJList = b2cDb.DataList.Where(a => a.GoodsType_id == 1 && a.IsNew == 1).Take(20).ToList();
            ViewBag.XPSJList = XPSJList;
            //得到新品电脑
            List<DataList> XPDNList = b2cDb.DataList.Where(a => a.GoodsType_id == 2 && a.IsNew == 1).Take(20).ToList();
            ViewBag.XPDNList = XPDNList;
            //得到登陆用户收藏的商品编号
            UserInfo user = Session["user"] as UserInfo;
            if (user != null)
            {
                int userid = user.UserInfo_Id;
                List<CollectInfo> IList = b2cDb.CollectInfo.Where(a => a.UserInfo_Id == userid).ToList();

                //定义一个空的int集合 存放登陆用户收藏的商品编号
                List<int?> List = new List<int?>();
                foreach (var item in IList)
                {
                    List.Add(item.GoodsInfo_Id);
                }
                ViewBag.List = List;
            }
            //查询所有商品图片
            List<GoodsImgs> GI = b2cDb.GoodsImgs.ToList();
            ViewBag.GI = GI;




            //查询所有商品分类 
            List<GoodType> typeList = b2cDb.GoodType.Take(5).ToList();
            ViewBag.typeList = typeList;
            //查询出所有商品信息
            List<GoodsInfo> goodsList = b2cDb.GoodsInfo.ToList();
            ViewBag.goodsList = goodsList;
            //得到前4个商铺
            List<StoreInfo> storeList = b2cDb.StoreInfo.Take(4).ToList();
            ViewBag.storeList = storeList;











            return View();
        }

    }
}
