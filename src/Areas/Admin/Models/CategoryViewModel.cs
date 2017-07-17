using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class CategoryViewModel{
      public int Id { get; set; }

      [Required(ErrorMessage = "không được bỏ trống")]
      [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
      public string Name { get; set; }

      [Required(ErrorMessage = "không được bỏ trống")]
      [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
      public string Alias { get; set; }

      public string Image { get; set; }

      public string Description { get; set; }
      public string Content { get; set; }
      public bool Activated { get; set; }
      public bool ClassType { get; set; }
      public int Orders { get; set; }
    }
}