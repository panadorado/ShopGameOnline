using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ShopGameOnline.Models
{
    public class Game
    {
        [ScaffoldColumn(false)]
        public int GameID { get; set; }
        [Required, StringLength(100), Display(Name = "Name")]
        public string GameName { get; set; }
        [Required, StringLength(1000), Display(Name = "Game Description"),
        DataType(DataType.MultilineText)]
        public string Description { get; set; }
        public string ImagePath { get; set; }
        [Display(Name = "Price")]
        public float? UnitPrice { get; set; }
        public int? CategoryID { get; set; }
        public virtual Category Category { get; set; }
    }
}