using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class StreaksViewModel : BaseViewModel
{
    private readonly AuthenticationService _authService;
    private readonly StreakService _streakService;

    [ObservableProperty]
    private int currentStreak = 0;

    [ObservableProperty]
    private int longestStreak = 0;

    [ObservableProperty]
    private string streakStatusMessage = string.Empty;

    public StreaksViewModel(AuthenticationService authService, StreakService streakService)
    {
        _authService = authService;
        _streakService = streakService;
    }

    [RelayCommand]
    public async Task LoadStreaksAsync()
    {
        if (IsLoading || _authService.CurrentUserId <= 0)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            var (current, longest) = await _streakService.RecalculateStreakAsync(_authService.CurrentUserId);
            CurrentStreak = current;
            LongestStreak = longest;

            UpdateStreakStatusMessage();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load streaks: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    private void UpdateStreakStatusMessage()
    {
        if (CurrentStreak == 0)
        {
            StreakStatusMessage = "No active streak. Complete a task today to start one!";
        }
        else if (CurrentStreak == 1)
        {
            StreakStatusMessage = "You have a 1-day streak going! Keep it up!";
        }
        else
        {
            StreakStatusMessage = $"Amazing! You're on a {CurrentStreak}-day streak!";
        }
    }

    public async Task OnAppearingAsync()
    {
        await LoadStreaksAsync();
    }
}
