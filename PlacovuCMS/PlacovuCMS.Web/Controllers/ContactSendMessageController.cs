﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using PlacovuCMS.Core.Helper;
using PlacovuCMS.Core.Helpers;
using PlacovuCMS.Core.Models;
using PlacovuCMS.Manager;
using System;
using System.Threading.Tasks;

namespace PlacovuCMS.Web.Controllers
{
    public class ContactSendMessageController : BaseController
    {
        #region Global Variable Declaration
        private readonly ILogger<ContactSendMessageController> _logger;
        private static IEmailSenderManager _iEmailSenderManager;
        #endregion

        #region Constructor
        public ContactSendMessageController(ILogger<ContactSendMessageController> logger, IEmailSenderManager iEmailSenderManager)
        {
            _iEmailSenderManager = iEmailSenderManager;
            _logger = logger;
        }
        #endregion
        
        [HttpPost]
        [Route("ContactSendMessage/SendContactMessage")]
        public async Task<IActionResult> SendContactMessage(ContactSendMessage model)
        {
            try
            {
                if (!CaptchaHelper.IsValidCaptcha(model.CaptchaToken, model.CaptchaId, model.CaptchaText))
                {
                    _result = Result.Fail(MessageHelper.CaptchaSecurityCode);
                    var jsonCaptcha = new { success = _result.Success, errortype = _result.ErrorType, error = _result.Error };
                    return new JsonResult(jsonCaptcha);
                }

                var emailSentResult = await _iEmailSenderManager.ContactSendEmailToAdmin(model);
                if (emailSentResult.Success)
                {
                    _result = Result.Ok(MessageHelper.SentMessage);
                }
                else
                {
                    _result = Result.Fail(MessageHelper.SentMessageFail);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError(LogMessageHelper.FormateMessageForException(ex, "SendContactMessage"));
                _result = Result.Fail(MessageHelper.SentMessageFail);
            }
            var json = new { success = _result.Success, errortype = _result.ErrorType, error = _result.Error };
            return new JsonResult(json);
        }
    }
}
