using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace ShopGameOnline.Models
{
    public class GameDatabaseInitializer : DropCreateDatabaseAlways<GameContext>
    {
        protected override void Seed(GameContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetGames().ForEach(p => context.Games.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category { CategoryID = 1, CategoryName = "Action" },
                new Category { CategoryID = 2, CategoryName = "Action and Adventure" },
                new Category { CategoryID = 3, CategoryName = "RPG" },
                new Category { CategoryID = 4, CategoryName = "Sports" }
            };
            return categories;
        }

        private static List<Game> GetGames()
        {
            var games = new List<Game>
            {
                //book 1
                new Game
                {
                    GameID = 1,
                    GameName = "Counter-Strike: Global Offensive",
                    Description = "Counter-Strike: Global Offensive (CS: GO) expands upon the team-based action gameplay " +
                    "that it pioneered when it was launched 19 years ago.",
                    ImagePath ="csgo.png",
                    UnitPrice = 14.18f,
                    CategoryID = 1
                },

                //book 2                 
                new Game
                {
                    GameID = 2,
                    GameName = "PlayerUnknown's Battlegrounds",
                    Description = "PlayerUnknown's Battlegrounds: The arena of life and death. Is an open world survival game, " +
                    "where 100 players are placed to shoot and kill each other until the last one remains." +
                    "PUBG has grown rapidly to become the most played game on Steam and is being nominated for the Game Of The Year 2017 title.",
                    ImagePath ="pubg.png",
                    UnitPrice = 14.65f,
                    CategoryID = 2
                },

                //book 3                 
                new Game
                {
                    GameID = 3,
                    GameName = "Counter-Strike: Source",
                    Description = "THE NEXT INSTALLMENT OF THE WORLD'S # 1 ONLINE ACTION GAME " +
                    "Counter-Strike: Source blends Counter-Strike's award-winning teamplay action" +
                    "with the advanced technology of Source™ technology. Featuring state of the art graphics, " +
                    "all new sounds, and introducing physics, Counter-Strike: Source is a must-have for every action gamer.",
                    ImagePath ="css.png",
                    UnitPrice = 4.96f,
                    CategoryID = 1
                },

                //book 4                 
                new Game
                {
                    GameID = 4,
                    GameName = "DEAD OR ALIVE 6",
                    Description = "DEAD OR ALIVE 6",
                    ImagePath ="doal.png",
                    UnitPrice = 13.96f,
                    CategoryID = 1
                },

                //book 5                 
                new Game
                {
                    GameID = 5,
                    GameName = "RIDE 2",
                    Description = "Welcome to the temple of motorcycles, the only digital garage that will allow you to discover," +
                    "transform and test the world’s fastest, most iconic and original vehicles." +
                    "The top of the range of the most famous brands will await you to compete against each" +
                    "other in a unique videogame and show the world their full potential!",
                    ImagePath ="ride.png",
                    UnitPrice = 12.89f,
                    CategoryID = 4
                },

                //book 6                 
                new Game
                {
                    GameID = 6,
                    GameName = "Operation Babel: New Tokyo Legacy",
                    Description = "Welcome to the temple of motorcycles, the only digital garage that will allow you to discover," +
                    "transform and test the world’s fastest, most iconic and original vehicles." +
                    "The top of the range of the most famous brands will await you to compete against each" +
                    "other in a unique videogame and show the world their full potential!",
                    ImagePath ="obntl.png",
                    UnitPrice = 7.80f,
                    CategoryID = 3
                },
            };
            return games;
        }
    }
}