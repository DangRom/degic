using System;
using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class PostViewModel{
       public int Id { get; set; }

       [Required(ErrorMessage = "không được bỏ trống")]
       [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
       public string Name { get; set; }

       [Required(ErrorMessage = "không được bỏ trống")]
       [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
       public string Alias { get; set; }

       [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
       public string Image { get; set; }

       [MaxLength(255, ErrorMessage = "không được dài quá 255 ký tự")]
       public string ShortDescription { get; set; }
       public string Content { get; set; }
       public bool Activated { get; set; }
       public bool HomePage { get; set; }
       public DateTime CreateDate { get; set; }
       
       [Required(ErrorMessage = "không được bỏ trống")]
       public int CategoryId { get; set; }
       public string CategoryName { get; set; }
       [Required(ErrorMessage = "không được bỏ trống")]
       public int Orders { get; set; }
    }
}