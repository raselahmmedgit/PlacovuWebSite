using System;
using System.ComponentModel.DataAnnotations;

namespace PlacovuCMS.Model
{
    public partial class ContactUsConfig : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        public int Id { get; set; }
        public string ContactUsConfigType { get; set; }
        [Required]
        public string ToEmailAddress { get; set; }
        [Required]
        public string FromEmailAddress { get; set; }
        public string FromEmailAddressDisplayName { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        public string PhoneNumberDisplayName { get; set; }
        public string TestEmailAddress { get; set; }
        public int DisplayOrder { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
