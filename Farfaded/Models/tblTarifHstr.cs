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
    
    public partial class tblTarifHstr
    {
        public int IdTarifHstr { get; set; }
        public int IdFlt { get; set; }
        public int IdSrvc { get; set; }
        public int Val { get; set; }
        public System.DateTime Data { get; set; }
    
        public virtual tblFlt tblFlt { get; set; }
        public virtual tlbService tlbService { get; set; }
    }
}