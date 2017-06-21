using System;

namespace DegicEducation.Services.Models{
    public class FeedbackModel{
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Avatar { get; set; }
        public string Content { get; set; }
        public DateTime CreateDate { get; set; }
        public int CourseId { get; set; }
        public string CourseName { get; set; }
    }
}