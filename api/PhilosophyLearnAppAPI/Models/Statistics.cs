using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace PhilosophyLearnAppAPI.Models
{
    public class Statistics
    {
        [Key, ForeignKey("User")]
        public Guid UserId { get; set; }
        public int QuizzesTaken { get; set; }
        public int QuizzesPassed { get; set; }
        public float PercentOfQuizzes => QuizzesTaken == 0 ? 0 : QuizzesPassed / QuizzesTaken * 100;
        public int TopicsFinished { get; set; }
        public int TotalQuestionsAnswered { get; set; }
    }
}
