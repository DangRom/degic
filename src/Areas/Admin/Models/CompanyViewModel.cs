using System.ComponentModel.DataAnnotations;

namespace DegicEducation.Areas.Admin.Models{
    public class CompanyViewModel{
        [Required(ErrorMessage = "khong duoc bo trong")]
        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Name { get; set; }

        [Required(ErrorMessage = "khong duoc bo trong")]
        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Address { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Email { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Hotline { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Phone { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string TaxCode { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Google { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Tweeter { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Facebook { get; set; }

        [MaxLength(255, ErrorMessage = "khong duoc dai qua 255 ky tu")]
        public string Description { get; set; }
        public string About { get; set; }
    }
}