using SQLite;

namespace kleos_app_final.Models;

[Table("streaks")]
public class Streak
{
    [PrimaryKey, AutoIncrement]
    [Column("id")]
    public int Id { get; set; }

    [Column("user_id")]
    [Indexed("idx_streak_user_id", 1)]
    public int UserId { get; set; }

    [Column("date")]
    public DateTime Date { get; set; }

    [Column("tasks_completed_count")]
    public int TasksCompletedCount { get; set; }
}
