using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace B2CSystem.Controllers
{
    public class XiangXiController : Controller
    {
        B2CSystemEntities1 b2cse = new B2CSystemEntities1();
        //
        // GET: /XiangXi/

        public ActionResult XiangXi(int sp_id)
        {
            //热门机型的总页数jx_count_page      评价的总页数 pj_count_page
            int jx_count_page = 0;
            int pj_count_page = 0;

            //我们传入我们的商品id
            //商品的详细信息
            //查询我们商品的图片,
            GoodsInfo goodsinfo = b2cse.GoodsInfo.Where(a => a.GoodsInfo_Id == sp_id).FirstOrDefault();

            int? sp_img_id = goodsinfo.GoodsImgs_id;
            List<GoodsImgs> sp_img_Glist = b2cse.GoodsImgs.Where(a => a.GImgs_id == sp_img_id).ToList();
            List<string> sp_img_slist = new List<string>();
            foreach (var item in sp_img_Glist)
            {
                sp_img_slist.Add(item.GImgs_thumbone);
                sp_img_slist.Add(item.GImgs_thumbtwo);
                sp_img_slist.Add(item.GImgs_thumbthree);
                sp_img_slist.Add(item.GImgs_thumbfour);
                sp_img_slist.Add(item.GImgs_text);
            }

            //根据商品id查询我们产品的类型
            int? sp_type_id = goodsinfo.GoodsType_id;
            string sp_type = b2cse.GoodType.Where(a => a.GoodType_Id == sp_type_id).FirstOrDefault().GTName.ToString();

            //得到评价
            //得到评价人的详细信息
            List<pingjia> plist = b2cse.pingjia.Where(a => a.PJ_GoodsInfo_Id == sp_id).ToList();

            List<UserDetails> pj_imgs_str = new List<UserDetails>();
            foreach (var item in plist)
            {
                int? pj_peoleo_id = item.UserInfo_Id;
                pj_imgs_str.Add(b2cse.UserDetails.Where(a => a.UserInfo_Id == pj_peoleo_id).FirstOrDefault());
            }

            //得到我们的总页数   用查询出来的总条数除以每页有10条  除不尽的话加一
            int counttiao1 = b2cse.pingjia.Where(a => a.PJ_GoodsInfo_Id == sp_id).Count();
            pj_count_page = counttiao1 / 5;
            if (counttiao1 % 5 != 0)
            {
                pj_count_page++;
            }



            //查询我们热门机型
            //得到我们商品的信息
            List<GoodsInfo> hotgoodsinfo = b2cse.GoodsInfo.Where(a => a.IsHot == 1).ToList();

            List<GoodsImgs> sphot_img_slist = new List<GoodsImgs>();
            foreach (var item in hotgoodsinfo)
            {
                int? sphot_img_id = item.GoodsImgs_id;
                sphot_img_slist.Add(b2cse.GoodsImgs.Where(a => a.GImgs_id == sphot_img_id).FirstOrDefault());
            }

            //得到我们的总页数   用查询出来的总条数除以每页有10条  除不尽的话加一
            int counttiao = b2cse.GoodsInfo.Where(a => a.IsHot == 1).Count();
            jx_count_page = counttiao / 10;
            if (counttiao % 10 != 0)
            {
                jx_count_page++;
            }

            //我们传值
            ViewBag.goodsinfo = goodsinfo;
            ViewBag.sp_img_slist = sp_img_slist;
            ViewBag.plist = plist;
            ViewBag.sp_type = sp_type;
            ViewBag.pj_imgs_str = pj_imgs_str;
            ViewBag.hotgoodsinfo = hotgoodsinfo;
            ViewBag.sphot_img_slist = sphot_img_slist;
            ViewBag.jx_count_page = jx_count_page;
            ViewBag.pj_count_page = pj_count_page;

            return View();
        }



        public ActionResult jx_fenye(int dq_page)
        {
            //当前页数dq_page  
            dq_page = 1;
            List<GoodsInfo> hotgoodsinfo = b2cse.GoodsInfo.Where(a => a.IsHot == 1).Skip((dq_page - 1) * 10).Take(10).ToList();

            return View();

        }

        public ActionResult jx_fenye(int sp_id,int dq_page)
        {
            //当前页数dq_page
            dq_page = 1;
          
            List<pingjia> plist = b2cse.pingjia.Where(a => a.PJ_GoodsInfo_Id == sp_id).Skip((dq_page - 1) * 10).Take(10).ToList();

           
            return View();

        }

    }
}
