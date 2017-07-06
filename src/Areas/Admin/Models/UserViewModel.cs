using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class UserViewModel{
        public string Id { get; set; }

       [Required(ErrorMessage = "không được bỏ trống")]
       [MaxLength(25, ErrorMessage = "không được dài quá 25 ký tự")]
       public string UserName { get; set; }

       [Required(ErrorMessage = "không được bỏ trống")]
       [MaxLength(100, ErrorMessage = "không được dài quá 100 ký tự")]
       public string Password { get; set; }

       [Required(ErrorMessage = "không được bỏ trống")]
       [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
       public string FullName { get; set; }
       public bool Activated { get; set; }
    }
}