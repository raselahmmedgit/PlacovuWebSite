using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;

namespace PlacovuCMS.Model
{
    public partial class Media : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Url { get; set; }
        public string Title { get; set; }
        public string Alt { get; set; }
        public string Description { get; set; }

        public string ThumbUrl { get; set; }
        public List<SelectListItem> MediaDate { get; set; }
        public string Result { get; set; }
        public string DisplayUrl { get; set; }
        public string FileSize { get; set; }
        public string FileType { get; set; }
        public string Dimension { get; set; }

        public int? ParentId { get; set; }
        public DateTime AddedOn { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
