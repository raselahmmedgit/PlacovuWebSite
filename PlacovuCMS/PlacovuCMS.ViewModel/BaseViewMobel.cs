﻿using System;

namespace PlacovuCMS.ViewModel
{
    public class BaseViewMobel
    {
        public BaseViewMobel()
        {
            CreatedDate = DateTime.Now;
        }
        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
