using DegicEducation.Services.IRepository;
using DegicEducation.Services.Repository;
using Microsoft.Extensions.DependencyInjection;

namespace DegicEducation.Commons{
    public static class DependenceConfig{
        public static void InitDependence(IServiceCollection service){
            service.AddSingleton<ICategoryRepository, CategoryRepository>();
            service.AddSingleton<ICompanyRepository, CompanyRepository>();
            service.AddSingleton<ICourseRepository, CourseRepository>();
            service.AddSingleton<IFeedbackRepository, FeedbackRepository>();
            service.AddSingleton<ISlideRepository, SlideRepository>();
            service.AddSingleton<IPostRepository, PostRepository>();
            service.AddSingleton<IUserRepository, UserRepository>();
            service.AddSingleton<IImageRepository, ImageRepository>();
        }
    }
}