using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Chat.Controllers
{
    public class ChatController : Controller
    {
        //
        // GET: /Chat/
        B2CSystemEntities1 BE = new B2CSystemEntities1();
        public ActionResult Chat()
        {
            Session["nm"] = Request["username"];
            List<KeFu> list = BE.KeFu.Where(a => a.UserInfo_Id == 1).ToList();

            return View(list);
        }
        public void king()
        {
            //获取聊天记录
            string nr = Request["nr"];
            //添加到KeFu
            if (Session["nm"].ToString() == "李佳洋")
            {
                BE.KeFu.Add(new KeFu() { UserInfo_Id = 1, SJ_Id = 1, KF_GoodsInfo_Id = 1, UserInfo_time = DateTime.Now, UserInfo_rcontent = nr });
            }
            else if (Session["nm"].ToString() == "刘浪")
            {
                BE.KeFu.Add(new KeFu() { UserInfo_Id = 2, SJ_Id = 1, KF_GoodsInfo_Id = 1, KF_rtime = DateTime.Now, KF_rcontent = nr });
            }

            //添加到数据库
            int row = BE.SaveChanges();



        }
        public JsonResult DUI()
        {
            string str = "";
            //查询关于登陆用户的全部聊天记录
            List<KeFu> list = BE.KeFu.Where(a => a.SJ_Id == 1).ToList();
            //判断list是否为空
            if (list == null)
            {
                return null;
            }
            foreach (var item in list)
            {
                if (Session["nm"].ToString() == "刘浪")
                {
                    if (item.UserInfo_rcontent != null)
                    {
                        str += "<li>" +
                        "<div class='trDiv'><div class=\"answerHead\"><img src=\"../IMG/thumbs/15.jpg\"/></div>" +
                        "<div class=\"answers\"><img class=\"jiao\" src=\"../IMG/thumbs/1.jpg\">" + item.UserInfo_rcontent +
                        "<br /><span class=\"time\">" + item.UserInfo_time + "</span></div>" +
                        "</div></li>";
                    }
                    else
                    {
                        str += "<li>" +
                        "<div class='trDiv'>class=\"nesHead\"><img src=\"../IMG/thumbs/10.jpg\"/></div>" +
                        "<div class=\"news\"><img class=\"jiao\" src=\"../IMG/thumbs/1.jpg\">" + item.KF_rcontent +
                        "<br /><span class=\"time\">" + item.KF_rtime + "</span></div>" +
                        "</div></li>";
                    }


                }





                else
                {
                    if (item.KF_rcontent != null)
                    {
                        str += "<li>" +
                  "<div class='trDiv'><div class=\"answerHead\"><img src=\"../IMG/thumbs/15.jpg\"/></div>" +
                  "<div class=\"answers\"><img class=\"jiao\" src=\"../IMG/thumbs/1.jpg\">" + item.KF_rcontent +
                  "<br /><span class=\"time\">" + item.KF_rtime + "</span></div>" +
                  "</div></li>";
                    }

                    else
                    {
                        str += "<li>" +
                         "<div class='trDiv'><div class=\"nesHead\"><img src=\"../IMG/thumbs/10.jpg\"/></div>" +
                         "<div class=\"news\"><img class=\"jiao\" src=\"../IMG/thumbs/1.jpg\">" + item.UserInfo_rcontent +
                         "<br /><span class=\"time\">" + item.UserInfo_time + "</span></div>" +
                         "</div></li>";
                    }
                }



            }
            //返回Json值
            return Json(str);
        }
    }
}
