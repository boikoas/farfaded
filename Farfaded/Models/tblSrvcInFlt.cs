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
    
    public partial class tblSrvcInFlt
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tblSrvcInFlt()
        {
            this.tblPayments = new HashSet<tblPayment>();
        }
    
        public int IdSrvcInFlt { get; set; }
        public int IdFlt { get; set; }
        public int IdSrvc { get; set; }
        public int Val { get; set; }
        public int tlbServiceIdSrvc { get; set; }
    
        public virtual tblFlt tblFlt { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tblPayment> tblPayments { get; set; }
        public virtual tlbService tlbService { get; set; }
    }
}