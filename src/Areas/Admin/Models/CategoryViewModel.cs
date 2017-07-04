using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class CategoryViewModel{
      public int Id { get; set; }

      [Required(ErrorMessage = "khong duoc bo trong")]
      [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
      public string Name { get; set; }

      [Required(ErrorMessage = "khong duoc bo trong")]
      [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
      public string Alias { get; set; }

      [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
      public string Image { get; set; }

      [Required(ErrorMessage = "khong duoc bo trong")]
      [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
      public string Description { get; set; }
      public string Content { get; set; }
      public bool Activated { get; set; }
      public bool ClassType { get; set; }
      public int Orders { get; set; }
    }
}