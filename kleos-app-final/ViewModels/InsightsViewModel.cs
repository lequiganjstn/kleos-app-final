using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Services;
using kleos_app_final.Utilities;

namespace kleos_app_final.ViewModels;

#pragma warning disable MVVMTK0045
public partial class InsightsViewModel : BaseViewModel
{
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
            // Get last 7 days data
            var lastSevenDays = await _streakService.GetCompletedTasksLastNDaysAsync(_authService.CurrentUserId, 7);
            LastSevenDaysTasks = lastSevenDays;

            // Calculate this week vs last week
            var today = DateTime.UtcNow.Date;
            var weekStart = today.AddDays(-(int)today.DayOfWeek);

            TasksCompletedThisWeek = 0;
            for (int i = 0; i < 7; i++)
            {
                var date = weekStart.AddDays(i);
                if (lastSevenDays.ContainsKey(date))
                {
                    TasksCompletedThisWeek += lastSevenDays[date];
                }
            }

            // Get last week data (requires database query)
            var lastWeekData = await _streakService.GetCompletedTasksLastNDaysAsync(_authService.CurrentUserId, 14);
            TasksCompletedLastWeek = 0;
            for (int i = 7; i < 14; i++)
            {
                var date = DateTime.UtcNow.Date.AddDays(-i);
                if (lastWeekData.ContainsKey(date))
                {
                    TasksCompletedLastWeek += lastWeekData[date];
                }
            }

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
#pragma warning restore MVVMTK0045
