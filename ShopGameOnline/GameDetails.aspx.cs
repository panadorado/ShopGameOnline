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
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Game> GetDetails([QueryString("gameID")] int? gameId)
        {
            var _db = new ShopGameOnline.Models.GameContext();
            IQueryable<Game> query = _db.Games;
            if (gameId.HasValue && gameId > 0)
            {
                query = query.Where(p => p.GameID == gameId);
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}