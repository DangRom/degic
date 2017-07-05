using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class SlideViewModel{
        public int Id { get; set; }

        [Required(ErrorMessage = "không dược bỏ trống")]
        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public string Name { get; set; }

        [Required(ErrorMessage = "không dược bỏ trống")]
        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public string Alias { get; set; }

        [Required(ErrorMessage = "không dược bỏ trống")]
        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public string Image { get; set; }

        [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
        public bool ButtonViewer { get; set; }
        public string LinkViewer { get; set; }
        public bool Activated { get; set; }
    }
}