using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace FAQs.Models
{
    public class FAQs
    {
        // EF will instruct the database to automatically generate this value
        public int QuestionId { get; set; }

        public string CategoryId { get; set; } //foreign key 

        public string CategoryName { get; set; }

        public string TopicId { get; set; } //foreign key

        public string TopicName { get; set; }

        public string Question { get; set; }

        public string Answer { get; set; }
    }
}
