using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PhilosophyLearnAppAPI.Models;

namespace PhilosophyLearnAppAPI.Data
{
    public class PhilosophyLearnAppAPIContext : DbContext
    {
        public PhilosophyLearnAppAPIContext (DbContextOptions<PhilosophyLearnAppAPIContext> options)
            : base(options)
        {
        }

        public DbSet<PhilosophyLearnAppAPI.Models.Site> Site { get; set; } = default!;
        public DbSet<PhilosophyLearnAppAPI.Models.Topic> Topic { get; set; } = default!;
        public DbSet<PhilosophyLearnAppAPI.Models.Quiz> Quiz { get; set; } = default!;
        public DbSet<PhilosophyLearnAppAPI.Models.Statistics> Statistics { get; set; } = default!;
        public DbSet<PhilosophyLearnAppAPI.Models.User> User { get; set; } = default!;
        public DbSet<PhilosophyLearnAppAPI.Models.Question> Question { get; set; } = default!;
    }
}
