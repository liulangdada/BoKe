using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B2CSystem.DTO_models
{
    public class DTO_OrderInfo_GoodsInfo
    {
        public string  sp_name { get; set; }
        public string sp_img_str{ get; set; }
        public int? OrderState { get; set; }
        public string name { get; set; }
        public int? id { get; set; }
        public int? is_new { get; set; }
        public int? is_hot { get; set; }
        public int? ku_cun { get; set; }
        public double?  price { get; set; }
    }
}