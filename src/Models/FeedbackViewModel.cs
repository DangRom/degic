namespace DegicEducation.Models{
    public class FeedbackViewModel{
       public int Id { get; set; }
        public string FullName { get; set; }
        public string Avatar { get; set; }
        public string Content { get; set; }
        public int CourseId { get; set; }
        public string CourseName { get; set; }
    }
}