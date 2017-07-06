using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace DegicEducation.Areas.Admin.Models
{
    public class LoginViewModel{

        [Required(ErrorMessage = "không được bỏ trống")]
        [MaxLength(100, ErrorMessage = "không được dài quá 255 ký tự")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "khong duoc bo trong")]
        [MaxLengthAttribute(100, ErrorMessage = "khong duoc dai qua 255 ky tu")]        
        public string Password { get; set; }
    }
}
