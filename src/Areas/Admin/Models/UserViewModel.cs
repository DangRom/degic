using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class UserViewModel{
        public string Id { get; set; }

       [Required(ErrorMessage = "khong duoc bo trong")]
       [MaxLength(25, ErrorMessage = "khong duoc dai qua 25 ky tu")]
       public string UserName { get; set; }

       [Required(ErrorMessage = "khong duoc bo trong")]
       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string Password { get; set; }

       [Required(ErrorMessage = "khong duoc bo trong")]
       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string FullName { get; set; }
       public bool Activated { get; set; }
    }
}