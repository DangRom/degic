using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
        public class ChangePasswordViewModel{
        public string UserName { get; set; }
        [Required(ErrorMessage = "Không được bỏ trống")]
        [MaxLengthAttribute(100, ErrorMessage = "Không được dài quá 100 ký tự")]
        public string OldPassword { get; set; }
        [Required(ErrorMessage = "Không được bỏ trống")]
        [MaxLengthAttribute(100, ErrorMessage = "Không được dài quá 100 ký tự")]
        public string NewPassword { get; set; }
    }
}