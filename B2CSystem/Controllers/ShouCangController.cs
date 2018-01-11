using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace B2CSystem.Controllers
{
    public class ShouCangController : Controller
    {

        public JsonResult IsSC()
        {



            return Json(1);

        }


        //
        // GET: /ShouCang/

        public ActionResult AddShouCang()
        {
            //得到要收藏的商品id 
            int GoodsId = Convert.ToInt32(Request["goodsId"]);
            if (GoodsId == 0)
            {
                //得到请求的路径
                string url = Request.Url.ToString();
                //得到请求的路径的最后一个 /
                int index = url.LastIndexOf('/');

                //根据index 得到传输过来的goodsId
                GoodsId = Convert.ToInt32(url.Substring(index + 1));
            }
            //判断当前操作者是否登陆
            UserInfo user = Session["user"] as UserInfo;
            if (user == null)
            {
                //如果用户没有登陆 重定向到登陆页面  并把商品记录在session中

                Response.Write("WeiDL");
                Response.End();
                //Response.Redirect("/LoginAndRegister/Login");
            }
            else
            {
                B2CSystemEntities1 b2c = new B2CSystemEntities1();
                //用户已经登陆了
                //得到用户id 商品id 当前时间
                int UserId = user.UserInfo_Id;
                //根据当前登陆的用户 查看他之前是否已经收藏了该商品
                CollectInfo co = b2c.CollectInfo.Where(a => a.UserInfo_Id == UserId && a.GoodsInfo_Id == GoodsId).FirstOrDefault();
                if (co != null)
                {
                    //说明登陆者已经收藏了该商品
                    //                    Response.Write(@"<script>$(function () {
                    //                                                                layer.open({
                    //                                                                title: '温馨提示',
                    //                                                                content: '您已经收藏了该商品!',
                    //                                                                btn: ['确定'],
                    //                                                                btn1: function () {
                    //                                                                        layer.close();
                    //                                                                }})})</script>");
                    //Response.Write("<script>alert('您已经收藏了');</script>");
                    //Response.End();
                }
                else
                {
                    //说明登陆者还没有收藏该商品 所以要添加到收藏表

                    //得到当前时间
                    DateTime time = DateTime.Now.ToLocalTime();
                    //将收藏信息添加到对象中
                    CollectInfo collect = new CollectInfo() { UserInfo_Id = UserId, CI_time = time, GoodsInfo_Id = GoodsId };
                    //将对象添加到数据库
                    b2c.CollectInfo.Add(collect);
                    int d = b2c.SaveChanges();
                    //判断是否收藏成功
                    if (d > 0)
                    {
                        //跳转到收藏
                        //                        Response.Write(@"<script>layer.open({
                        //                        title: '温馨提示',
                        //                        content: '收藏成功!',
                        //                        btn: ['确定'],
                        //                        btn1: function () {
                        //                             layer.close();
                        //                        }})</script>");

                        Response.Write("yes");
                        Response.End();
                    }
                }
            }
            return View();
        }

    }
}
