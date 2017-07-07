using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class ImageViewModel{
       public int Id { get; set; }

       [Required(ErrorMessage = "không dược bỏ trống")]
       [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
       public string iName { get; set; }

       [Required(ErrorMessage = "không dược bỏ trống")]
       [MaxLength(255, ErrorMessage = "không dược dài quá 255 ký tự")]
       public string iImage { get; set; }
       public bool iCustomer { get; set; }
       public bool iGallery { get; set; }
    }
}