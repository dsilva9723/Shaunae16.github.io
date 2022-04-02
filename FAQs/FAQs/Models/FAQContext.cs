using Microsoft.EntityFrameworkCore;

namespace FAQs.Models
{
    public class FAQContext : DbContext 
    {
        public FAQContext(DbContextOptions<FAQContext> options)
           : base(options)
        {
            ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
        }

        public DbSet<FAQs> FAQ { get; set; }
        public DbSet<FAQCategory> FAQCategories { get; set; }
        public DbSet<FAQTopic> FAQTopics { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<FAQCategory>().HasData(
                new FAQCategory { CategoryId = "A", CategoryName = "About Us" },
                new FAQCategory { CategoryId = "B", CategoryName = "Membership" },
                new FAQCategory { CategoryId = "C", CategoryName = "COVID Restrictions" }
                 );

            modelBuilder.Entity<FAQTopic>().HasData(
                new FAQTopic { TopicId = "i", TopicName = "Founding Members" },
                new FAQTopic { TopicId = "ii", TopicName = "Meeting Schedule" },
                new FAQTopic { TopicId = "iii", TopicName = "Face Covering" }
                );

            modelBuilder.Entity<FAQs>().HasData(
                new FAQs
                {
                    QuestionId = 1,
                    CategoryId = "A",
                    TopicId = "i",
                    CategoryName = "About Us",
                    TopicName = "Founding Members",
                    Question = "Who are the founding members?",
                    Answer = "Chevroen Washington and Damien Silva"
                }, 
                new FAQs
                {
                    QuestionId = 2,
                    CategoryId = "B",
                    TopicId = "ii",
                    CategoryName = "Membership",
                    TopicName = "Meeting Schedule",
                    Question = "When are the meetings?",
                    Answer = "Every 2nd Tuesday of the month"
                },
                new FAQs
                {
                    QuestionId = 3,
                    CategoryId = "C",
                    TopicId = "iii",
                    CategoryName = "COVID Restrictions",
                    TopicName = "Face Covering",
                    Question = "Are masks required?",
                    Answer = "Mask are not required"
                },
                new FAQs
                {
                    QuestionId = 4,
                    CategoryId = "B",
                    TopicId = "ii",
                    CategoryName = "Membership",
                    TopicName = "Meeting Schedule",
                    Question = "Are the meetings in the evening?",
                    Answer = "The meetings are held in the evening"
                }
                );

        }
    }
}
