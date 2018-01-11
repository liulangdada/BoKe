using B2CSystem.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Security.Cryptography;
using System.Web;
using System.Web.Mvc;

namespace B2CSystem.Controllers
{
    public class LoginAndRegisterController : Controller
    {
        //
        // GET: /LoginAndRegister/
        /// <summary>
        /// 用户登陆
        /// </summary>
        /// <returns></returns>
        public ActionResult Login()
        {
            //string state = Request["state"];
            //if (state == null)
            //{
            //    state = "";
            //}
            //string goodsid = Request["goodsid"];

            //Session["goodsid"] = goodsid;
            //Session["state"] = state;
            //得到URL中的func和goodsid
            string func = Request["func"];
            if (!string.IsNullOrEmpty(func))
            {
                string goodsid = Request["goodsid"];
                Session["func"] = func;
                Session["goodsid"] = goodsid;
                Session["num"] = Request["num"];
            }

            return View();
        }
        /// <summary>
        /// 用户注册
        /// </summary>
        /// <returns></returns>
        public ActionResult Zhuce()
        {
            return View();
        }

        /// <summary>
        /// 判断验证码是否正确
        /// </summary>
        public void PDYZM()
        {
            string yzm = Request["yzm"];
            object obj = Session["yzm"];
            if (obj != null)
            {
                if (yzm != obj.ToString())
                {
                    Response.Write("0");
                    Response.End();
                }
                else
                {
                    Response.Write("1");
                    Response.End();
                }
            }
            else
            {
                Response.Write("0");
                Response.End();
            }
        }
        /// <summary>
        /// 通过手机号发送验证码
        /// </summary>
        /// <returns></returns>
        public void sendYZM()
        {
            //得到手机号与验证码
            string phone = Request["phone"];

            string num = Request["num"];
            Session["yzm"] = num;
            //得到当前时间
            string time = DateTime.Now.ToString("yyyyMMddHHmmss");
            List<KeyValuePair<string, string>> kvList = new List<KeyValuePair<string, string>>();
            kvList.Add(new KeyValuePair<string, string>("accountSid", "43c278d2194b431da405a6abdf10d547"));
            kvList.Add(new KeyValuePair<string, string>("templateid", "88873483"));
            kvList.Add(new KeyValuePair<string, string>("param", num));
            kvList.Add(new KeyValuePair<string, string>("to", phone));
            kvList.Add(new KeyValuePair<string, string>("timestamp", time));
            kvList.Add(new KeyValuePair<string, string>("sig", MD5JS("43c278d2194b431da405a6abdf10d547e562e43141ed4db48cc0d48d14c71f4f" + time)));


            HttpContent content = new FormUrlEncodedContent(kvList);
            HttpClient hc = new HttpClient();
            HttpResponseMessage hrm = hc.PostAsync("https://api.miaodiyun.com/20150822/industrySMS/sendSMS", content).Result;
            string result = hrm.Content.ReadAsStringAsync().Result;
            Response.Write(result);
            Response.End();
        }

        /// <summary>
        /// 计算MD5值
        /// </summary>
        /// <param name="str">传入的数据</param>
        /// <returns></returns>
        public static string MD5JS(string str)
        {
            byte[] jmq = System.Text.Encoding.Default.GetBytes(str);
            MD5 md5 = new MD5CryptoServiceProvider();
            byte[] jmBehind = md5.ComputeHash(jmq);
            return BitConverter.ToString(jmBehind).Replace("-", "").ToLower();
        }

        /// <summary>
        /// 点击登录 判断账号密码是否正确 参数 url地址 （可空）
        /// </summary>
        /// <returns></returns>
        public ActionResult UserLogin()
        {
            //得到存在session中的商品编号 如果goodsId不等于0 说明是从收藏页面重定向到登陆页面 所以要记录要收藏的商品
            object funcs = Session["func"];
            string func = "";
            if (funcs != null)
            {
                func = funcs.ToString();
            }
            //得到用户名与密码
            string username = Request["username"];
            string password = Request["password"];
            //实例化数据库对象模型
            B2CSystemEntities1 b2cDb = new B2CSystemEntities1();
            //根据用户名与密码 查询数据 
            UserInfo user = b2cDb.UserInfo.Where(a => a.UserPhone == username && a.UserPwd == password).FirstOrDefault();
            //如果查询到相应的对象 说明用户名与密码正确
            if (user != null)
            {
                //将该用户存到session中
                Session["user"] = user;
                //如果goodsId不等于0 说明是从收藏页面重定向到登陆页面 所以要记录要收藏的商品
                if (func == "add_car" || func == "shoucang")
                {
                    //得到商品编号
                    int goodsid = Convert.ToInt32(Session["goodsid"]);
                    //登录成功后 跳转到收藏页面 并把要收藏的商品添6加到收藏表
                    //return RedirectToAction(");
                    Response.Redirect("../XiangXi/XiangXi?sp_id=" + goodsid);
                    Response.End();
                }
                else if (func == "huiyuan")
                {
                    //进入个人中心
                    Response.Redirect("../GeRenZhongXing/GeRenZhongXing");
                    Response.End();

                }
                else if (func == "buy")
                {
                    //得到要购买的数量
                    int num = Convert.ToInt32(Session["num"]);
                    //得到商品编号
                    int goodsid = Convert.ToInt32(Session["goodsid"]);
                    //进入个人中心
                    Response.Redirect("../Cart/Confirm?goodsids=" + goodsid + "&num=" + num);
                    Response.End();

                }
                else if (func == "car")
                {
                    //进入购物车
                    Response.Redirect("../Cart/Cart");
                    Response.End();
                }
                else if (func == "kf")
                {
                    //进入客服交流
                    Response.Redirect("../Chat/Chat");
                    Response.End();
                }
                else
                {
                    //如果goodsId等于0  说明该用户是先点的登陆 那就可以直接跳转到网站首页
                    return RedirectToAction("Index", "Home");
                }
            }
            else
            {
                //密码输入是错的 重新回到登陆界面
                return RedirectToAction("/Login");
            };
            return View();
        }

        /// <summary>
        /// 判断是否已经存在当前输入的用户名
        /// </summary>
        public void UserNameIsREV()
        {
            //实例化数据库对象模型
            B2CSystemEntities1 b2cDb = new B2CSystemEntities1();
            //得到用户输入的用户名 判断该用户名是否已经存在
            string name = Request["username"];
            UserInfo u = b2cDb.UserInfo.Where(a => a.UserName == name).FirstOrDefault();
            if (u != null)
            {
                Response.Write("false");
                Response.End();
            }
        }


        public ActionResult UserZhuce(UserInfo u)
        {
            B2CSystemEntities1 b = new B2CSystemEntities1();
            b.Entry(u).State = System.Data.EntityState.Added;
            int c = b.SaveChanges();
            if (c > 0)
            {
                Session["UserPhone"] = u.UserPhone;
                return RedirectToAction("Login", "LoginAndRegister");
            }
            else
            {
                Response.Write("0");
                Response.End();
            }

            return View();
        }


    }
}
