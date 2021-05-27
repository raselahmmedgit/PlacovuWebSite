using System;

namespace PlacovuCMS.Model
{
    public partial class EmailSmsConfig : IChangeTrackerEntity, IDeleteTrackerEntity
    {
        public int Id { get; set; }
        public string FromEmailAddress { get; set; }
        public string FromEmailAddressDisplayName { get; set; }
        public string Password { get; set; }
        public string Host { get; set; }
        public string Port { get; set; }
        public bool AllowSsl { get; set; }
        public string SendGridFromEmailAddress { get; set; }
        public string SendGridFromEmailAddressDisplayName { get; set; }
        public string SendGridApiKey { get; set; }
        public string TestEmailAddress { get; set; }
        public string SmsFromNumber { get; set; }
        public string SmsAccountSid { get; set; }
        public string SmsAuthToken { get; set; }
        public bool AllowSms { get; set; }
        public bool AllowEmail { get; set; }

        public DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? DeletedDate { get; set; }
        public string DeletedBy { get; set; }
    }
}
