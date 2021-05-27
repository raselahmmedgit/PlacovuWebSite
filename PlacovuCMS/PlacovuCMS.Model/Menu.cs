using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace PlacovuCMS.Model
{
    public partial class Menu : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        [Key]
        public int Id { get; set; }
        [Required]
        public string Name { get; set; }
        public string Item { get; set; }
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
