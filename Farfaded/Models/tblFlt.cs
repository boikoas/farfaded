//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Farfaded.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblFlt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblFlt()
        {
            this.AspNetUsers = new HashSet<AspNetUser>();
            this.tblSrvcInFlts = new HashSet<tblSrvcInFlt>();
            this.tblSrvcInFltHstrs = new HashSet<tblSrvcInFltHstr>();
            this.tblControls = new HashSet<tblControl>();
            this.tblPayments = new HashSet<tblPayment>();
            this.tlbTarifs = new HashSet<tlbTarif>();
            this.tblTarifHstrs = new HashSet<tblTarifHstr>();
        }
    
        public int IdFlt { get; set; }
        public int IdBlckOfFlt { get; set; }
        public string FltName { get; set; }
        public string AspNetUserId { get; set; }
    
        public virtual tblBlckOfFlt tblBlckOfFlt { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AspNetUser> AspNetUsers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblSrvcInFlt> tblSrvcInFlts { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblSrvcInFltHstr> tblSrvcInFltHstrs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblControl> tblControls { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblPayment> tblPayments { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tlbTarif> tlbTarifs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblTarifHstr> tblTarifHstrs { get; set; }
    }
}
