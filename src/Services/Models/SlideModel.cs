namespace DegicEducation.Services.Models{
    public class SlideModel{
        public int Id { get; set; }
        public string Name { get; set; }
        public string Alias { get; set; }
        public bool ButtonViewer { get; set; }
        public string LinkViewer { get; set; }
        public bool Activated { get; set; }
    }
}