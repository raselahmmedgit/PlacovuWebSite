using System;
using System.ComponentModel.DataAnnotations;

namespace PlacovuCMS.Model
{
    public partial class News : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        [Key]
        public int Id { get; set; }
        public string NewsTitle { get; set; }
        public string NewsDetails { get; set; }
        public string NewsKeywords { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
