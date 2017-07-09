using System.Collections.Generic;

namespace DegicEducation.Models{
    public class FooterViewModel{
       public CompanyViewModel Company { get; set; }
       public IEnumerable<MenuLineViewModel> LastPost { get; set; }
       public IEnumerable<MenuLineViewModel> Course { get; set; }
    }
}