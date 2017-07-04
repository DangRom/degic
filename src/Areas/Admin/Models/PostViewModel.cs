using System;
using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class PostViewModel{
       public int Id { get; set; }

       [Required(ErrorMessage = "khong duoc bo trong")]
       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string Name { get; set; }

       [Required(ErrorMessage = "khong duoc bo trong")]
       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string Alias { get; set; }

       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string Image { get; set; }

       [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
       public string ShortDescription { get; set; }
       public string Content { get; set; }
       public bool Activated { get; set; }
       public bool HomePage { get; set; }
       public DateTime CreateDate { get; set; }
       
       [Required(ErrorMessage = "khong duoc bo trong")]
       public int CategoryId { get; set; }
       public string CategoryName { get; set; }
    }
}