namespace DegicEducation.Services.Models{
    public class CourseModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public string Image { get; set; }
        public string Status { get; set; }
        public int Price { get; set; }
        public string ShortDesciptions { get; set; }
        public string Content { get; set; }
        public bool Activated { get; set; }
        public int Orders { get; set; }
        public int CourseId { get; set; }
    }
}