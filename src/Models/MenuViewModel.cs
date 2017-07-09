using System.Collections.Generic;

namespace DegicEducation.Models{
    public class MenuViewModel{
       public IEnumerable<MenuHeadViewModel> MenuHead {get;set;}
       public IEnumerable<MenuLineViewModel> MenuLine {get;set;}
    }
}