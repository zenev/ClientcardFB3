namespace ClientcardFB3.ClientcardORM
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class parm_IncomeProcessID
    {
        public short Id { get; set; }

        [StringLength(30)]
        public string Type { get; set; }

        public int? SortOrder { get; set; }

        [StringLength(5)]
        public string ShortName { get; set; }
    }
}
