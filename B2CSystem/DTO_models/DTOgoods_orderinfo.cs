using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace B2CSystem.DTO_models
{
    public class DTOgoods_orderinfo
    {
        public int? sp_id { get; set; }
        public int? user_id { get; set; }
        public string  sp_name { get; set; }
        public string  sp_imgs { get; set; }
        public string  neicun { get; set; }
        public string  fenbianlv { get; set; }
        public double? price { get; set; }
        public int? istuihuo { get; set; }
        public int? sp_num { get; set; }
        public int?  OrderState{ get; set; }

        public int? OrderInfo_Id { get; set; }
        public DateTime? OrderInfo_time { get; set; }





    }
}