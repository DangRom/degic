using System;

namespace DegicEducation.Services.Models{
    public class PostModel{
       public int Id { get; set; }
       public string Name { get; set; }
       public string Alias { get; set; }
       public string Image { get; set; }
       public string ShortDescriptions { get; set; }
       public int Orders { get; set; }
       public string Content { get; set; }
       public bool Activated { get; set; }
       public bool HomePage { get; set; }
       public DateTime CreateDate { get; set; }
       public int CategoryId { get; set; }
       public string CategoryName { get; set; }
    }
}