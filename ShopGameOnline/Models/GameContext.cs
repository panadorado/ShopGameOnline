using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ShopGameOnline.Models
{
    public class GameContext : DbContext
    {
        public GameContext() : base("ShopGameOnline")
        { }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Game> Games { get; set; }
    }
}