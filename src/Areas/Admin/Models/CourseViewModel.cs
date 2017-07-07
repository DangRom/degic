using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class CourseViewModel{
        public int Id { get; set; }

        [Required(ErrorMessage = "không được bỏ trống")]
        [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
        public string Name { get; set; }

        [Required(ErrorMessage = "không được bỏ trống")]
        [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
        public string Alias { get; set; }

        [Required(ErrorMessage = "không dược bỏ trống")]
        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public string Image { get; set; }

        [Required(ErrorMessage = "không dược bỏ trống")]
        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public string Status { get; set; }

        [RegularExpression("([0-9]+)", ErrorMessage = "chỉ được nhập ký tự số.")]
        public int Price { get; set; }
        public string ShortDescription { get; set; }
        public string Content { get; set; }
        public bool Activated { get; set; }
    }
}