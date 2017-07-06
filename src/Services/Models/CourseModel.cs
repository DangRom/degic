namespace DegicEducation.Services.Models{
    public class CourseModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public string Image { get; set; }
        public string Status { get; set; }
        public string ShortDesciptions { get; set; }
        public string Content { get; set; }
        public bool Activated { get; set; }
    }
}