﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ShopGameOnline.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string CategoryName { get; set; }
        public virtual ICollection<Game> Games { get; set; }
    }
}