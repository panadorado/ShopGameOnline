using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopGameOnline.Models;
using System.Web.ModelBinding;

namespace ShopGameOnline
{
    public partial class GameList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Game> GetGames([QueryString("id")] int? categoryId)
        {
            var _db = new ShopGameOnline.Models.GameContext();
            IQueryable<Game> query = _db.Games;
            if (categoryId.HasValue && categoryId > 0)
            {
                query = query.Where(p => p.CategoryID == categoryId);
            }
            return query;
        }
    }
}