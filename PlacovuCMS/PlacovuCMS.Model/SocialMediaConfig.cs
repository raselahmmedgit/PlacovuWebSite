using System;
using System.ComponentModel.DataAnnotations;

namespace PlacovuCMS.Model
{
    public partial class SocialMediaConfig : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        [Key]
        public int Id { get; set; }

        public string FacebookUrl { get; set; }

        public string LinkedInUrl { get; set; }

        public string InstagramUrl { get; set; }

        public string TwitterUrl { get; set; }

        public string TumblrUrl { get; set; }

        public string YouTubeUrl { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
