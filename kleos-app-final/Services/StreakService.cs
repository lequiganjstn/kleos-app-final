using kleos_app_final.Models;

namespace kleos_app_final.Services;

public class StreakService
{
    private readonly DatabaseService _database;

    public StreakService(DatabaseService database)
    {
        _database = database;
    }

    /// <summary>
    /// Recalculate the streak for a user based on their completed tasks.
    /// Returns tuple: (currentStreak, longestStreak)
    /// </summary>
    public async Task<(int CurrentStreak, int LongestStreak)> RecalculateStreakAsync(int userId)
    {
        var streaks = await _database.GetStreaksForUserAsync(userId);
        if (streaks.Count == 0)
            return (0, 0);

        // Sort by date descending
        var sortedStreaks = streaks.OrderByDescending(s => s.Date).ToList();

        int currentStreak = 0;
        int longestStreak = 0;
        int tempStreak = 0;

        var today = DateTime.UtcNow.Date;
        var yesterday = today.AddDays(-1);

        // Check if there's a streak entry for today
        var todayStreak = sortedStreaks.FirstOrDefault(s => s.Date.Date == today);
        if (todayStreak != null)
        {
            currentStreak = 1;
        }
        else
        {
            // Check if there's a streak entry for yesterday
            var yesterdayStreak = sortedStreaks.FirstOrDefault(s => s.Date.Date == yesterday);
            if (yesterdayStreak == null)
            {
                // Streak is broken
                currentStreak = 0;
            }
        }

        // Calculate longest streak
        for (int i = 0; i < sortedStreaks.Count; i++)
        {
            tempStreak++;

            if (i + 1 < sortedStreaks.Count)
            {
                var currentDate = sortedStreaks[i].Date.Date;
                var nextDate = sortedStreaks[i + 1].Date.Date;
                var dayDifference = (currentDate - nextDate).TotalDays;

                if (dayDifference != 1)
                {
                    longestStreak = Math.Max(longestStreak, tempStreak);
                    tempStreak = 0;
                }
            }
            else
            {
                longestStreak = Math.Max(longestStreak, tempStreak);
            }
        }

        // If current streak wasn't calculated, compute it from the end
        if (currentStreak == 0 && sortedStreaks.Count > 0)
        {
            var firstDate = sortedStreaks[0].Date.Date;
            if (firstDate == today || firstDate == yesterday)
            {
                currentStreak = 1;
                for (int i = 0; i < sortedStreaks.Count - 1; i++)
                {
                    var currentDate = sortedStreaks[i].Date.Date;
                    var nextDate = sortedStreaks[i + 1].Date.Date;
                    if ((currentDate - nextDate).TotalDays == 1)
                    {
                        currentStreak++;
                    }
                    else
                    {
                        break;
                    }
                }
            }
        }

        return (currentStreak, longestStreak);
    }

    /// <summary>
    /// Update streak for today if user completed at least 1 task.
    /// </summary>
    public async Task UpdateStreakForTodayAsync(int userId)
    {
        var today = DateTime.UtcNow.Date;
        var completedCount = await _database.GetCompletedTodosCountForDateAsync(userId, today);

        if (completedCount > 0)
        {
            var existingStreak = await _database.GetStreakForDateAsync(userId, today);
            if (existingStreak != null)
            {
                existingStreak.TasksCompletedCount = completedCount;
                await _database.UpdateStreakAsync(existingStreak);
            }
            else
            {
                var newStreak = new Streak
                {
                    UserId = userId,
                    Date = today,
                    TasksCompletedCount = completedCount
                };
                await _database.CreateStreakAsync(newStreak);
            }
        }
    }

    /// <summary>
    /// Get tasks completed for each day in the last N days.
    /// </summary>
    public async Task<Dictionary<DateTime, int>> GetCompletedTasksLastNDaysAsync(int userId, int days)
    {
        var streaks = await _database.GetStreaksLastNDaysAsync(userId, days);
        var result = new Dictionary<DateTime, int>();

        for (int i = 0; i < days; i++)
        {
            var date = DateTime.UtcNow.Date.AddDays(-i);
            var streak = streaks.FirstOrDefault(s => s.Date.Date == date);
            result[date] = streak?.TasksCompletedCount ?? 0;
        }

        return result;
    }
}
