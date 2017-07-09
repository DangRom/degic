using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Models{
    public class CourseViewModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public string Image { get; set; }
        public string Status { get; set; }

        [DisplayFormat(DataFormatString="{0:#.####}")]
        public int Price { get; set; }
        public string ShortDesciptions { get; set; }
        public string Content { get; set; }

    }
}