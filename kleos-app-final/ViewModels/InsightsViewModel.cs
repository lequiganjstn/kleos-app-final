using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

#pragma warning disable MVVMTK0045
public partial class InsightsViewModel : BaseViewModel
{
    private const double MinimumBarHeight = 8;
    private const double MaximumBarHeight = 64;

    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;
    private readonly StreakService _streakService;

    [ObservableProperty]
    private int tasksCompletedThisWeek = 0;

    [ObservableProperty]
    private int tasksCompletedLastWeek = 0;

    [ObservableProperty]
    private string weekComparisonText = string.Empty;

    [ObservableProperty]
    private Dictionary<DateTime, int> lastSevenDaysTasks = new();

    [ObservableProperty]
    private ObservableCollection<DailyTaskInsight> lastSevenDaysInsights = new();

    public InsightsViewModel(DatabaseService database, AuthenticationService authService, StreakService streakService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _streakService = streakService ?? throw new ArgumentNullException(nameof(streakService));
    }

    [RelayCommand]
    public async Task LoadInsightsAsync()
    {
        if (IsLoading || _authService.CurrentUserId <= 0)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            var today = DateTime.UtcNow.Date;
            var weekStart = today.AddDays(-(int)today.DayOfWeek);
            var lastWeekStart = weekStart.AddDays(-7);

            LastSevenDaysTasks = await GetCompletedTasksByDayAsync(today.AddDays(-6), today);
            LastSevenDaysInsights = BuildLastSevenDaysInsights(LastSevenDaysTasks, today);

            TasksCompletedThisWeek = SumCompletedTasks(LastSevenDaysTasks, weekStart, today);

            var previousWeekTasks = await GetCompletedTasksByDayAsync(lastWeekStart, weekStart.AddDays(-1));
            TasksCompletedLastWeek = SumCompletedTasks(previousWeekTasks, lastWeekStart, weekStart.AddDays(-1));

            await _streakService.UpdateStreakForTodayAsync(_authService.CurrentUserId);
            UpdateWeekComparisonText();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load insights: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    private async Task<Dictionary<DateTime, int>> GetCompletedTasksByDayAsync(DateTime startDate, DateTime endDate)
    {
        var result = new Dictionary<DateTime, int>();

        for (var date = startDate.Date; date <= endDate.Date; date = date.AddDays(1))
        {
            result[date] = await _database.GetCompletedTodosCountForDateAsync(_authService.CurrentUserId, date);
        }

        return result;
    }

    private static int SumCompletedTasks(Dictionary<DateTime, int> tasksByDay, DateTime startDate, DateTime endDate)
    {
        var total = 0;

        for (var date = startDate.Date; date <= endDate.Date; date = date.AddDays(1))
        {
            total += tasksByDay.GetValueOrDefault(date, 0);
        }

        return total;
    }

    private static ObservableCollection<DailyTaskInsight> BuildLastSevenDaysInsights(Dictionary<DateTime, int> tasksByDay, DateTime today)
    {
        var maxTasks = Math.Max(1, tasksByDay.Values.DefaultIfEmpty(0).Max());
        var insights = new ObservableCollection<DailyTaskInsight>();

        for (var date = today.AddDays(-6); date <= today; date = date.AddDays(1))
        {
            var tasksCompleted = tasksByDay.GetValueOrDefault(date, 0);
            var barHeight = tasksCompleted == 0
                ? MinimumBarHeight
                : MinimumBarHeight + ((MaximumBarHeight - MinimumBarHeight) * tasksCompleted / maxTasks);

            insights.Add(new DailyTaskInsight
            {
                DayLabel = date == today ? "Today" : date.ToString("ddd"),
                TasksCompleted = tasksCompleted,
                BarHeight = barHeight,
                BarColor = tasksCompleted > 0 ? "#000000" : "#e2e2e2"
            });
        }

        return insights;
    }

    private void UpdateWeekComparisonText()
    {
        if (TasksCompletedThisWeek == 0 && TasksCompletedLastWeek == 0)
        {
            WeekComparisonText = "No task data available yet.";
        }
        else if (TasksCompletedLastWeek == 0)
        {
            WeekComparisonText = $"You've completed {TasksCompletedThisWeek} tasks this week.";
        }
        else
        {
            int difference = TasksCompletedThisWeek - TasksCompletedLastWeek;
            if (difference > 0)
            {
                WeekComparisonText = $"This week: {TasksCompletedThisWeek} tasks (+{difference} vs last week)";
            }
            else if (difference < 0)
            {
                WeekComparisonText = $"This week: {TasksCompletedThisWeek} tasks ({difference} vs last week)";
            }
            else
            {
                WeekComparisonText = $"This week: {TasksCompletedThisWeek} tasks (same as last week)";
            }
        }
    }

    public async Task OnAppearingAsync()
    {
        await LoadInsightsAsync();
    }
}

public class DailyTaskInsight
{
    public string DayLabel { get; init; } = string.Empty;

    public int TasksCompleted { get; init; }

    public double BarHeight { get; init; }

    public string BarColor { get; init; } = "#e2e2e2";
}
#pragma warning restore MVVMTK0045
