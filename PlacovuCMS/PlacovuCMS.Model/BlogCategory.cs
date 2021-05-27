using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PlacovuCMS.Model
{
    public partial class BlogCategory : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        public int Id { get; set; }
        public int? ParentId { get; set; }

        [Required]
        public string Name { get; set; }

        [Required]
        public string Url { get; set; }
        public string MetaTitle { get; set; }
        public string MetaKeyword { get; set; }
        public string MetaDescription { get; set; }

        [Required]
        public string Description { get; set; }
        public DateTime AddedOn { get; set; }

        [Required]
        public bool Status { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
