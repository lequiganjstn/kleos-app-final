using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Models;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

[QueryProperty(nameof(TaskId), "taskId")]
public partial class EditTaskViewModel : BaseViewModel
{
    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;
    private readonly StreakService _streakService;
    private int _loadedTaskId;

    [ObservableProperty]
    private int taskId = 0;

    [ObservableProperty]
    private string taskTitle = string.Empty;

    [ObservableProperty]
    private string taskDescription = string.Empty;

    [ObservableProperty]
    private Todo? currentTask;

    public bool IsCurrentTaskCompleted => CurrentTask?.IsCompleted == true;

    public string CompletionButtonText => IsCurrentTaskCompleted ? "Mark Incomplete" : "Complete";

    public EditTaskViewModel(DatabaseService database, AuthenticationService authService, StreakService streakService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _streakService = streakService ?? throw new ArgumentNullException(nameof(streakService));
    }

    partial void OnCurrentTaskChanged(Todo? value)
    {
        OnPropertyChanged(nameof(IsCurrentTaskCompleted));
        OnPropertyChanged(nameof(CompletionButtonText));
    }

    partial void OnTaskIdChanged(int value)
    {
        if (value > 0 && value != _loadedTaskId)
        {
            _ = LoadTaskAsync();
        }
    }

    [RelayCommand]
    public async Task LoadTaskAsync()
    {
        if (TaskId <= 0)
        {
            CurrentTask = null;
            _loadedTaskId = 0;
            ErrorMessage = "Invalid task ID.";
            return;
        }

        if (IsLoading)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            var todo = await _database.GetTodoByIdAsync(TaskId);
            if (todo == null || todo.UserId != _authService.CurrentUserId)
            {
                CurrentTask = null;
                _loadedTaskId = 0;
                ErrorMessage = "Task not found.";
                return;
            }

            CurrentTask = todo;
            _loadedTaskId = todo.Id;
            TaskTitle = todo.Title;
            TaskDescription = todo.Description ?? string.Empty;
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load task: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task UpdateTaskAsync()
    {
        var title = TaskTitle.Trim();
        var description = TaskDescription.Trim();

        if (string.IsNullOrWhiteSpace(title))
        {
            ErrorMessage = "Please enter a task title.";
            return;
        }

        if (CurrentTask == null)
        {
            ErrorMessage = "Task not found.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            CurrentTask.Title = title;
            CurrentTask.Description = string.IsNullOrWhiteSpace(description) ? null : description;

            await _database.UpdateTodoAsync(CurrentTask);

            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to update task: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task ToggleCompletionAsync()
    {
        if (CurrentTask == null)
        {
            ErrorMessage = "Task not found.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            if (CurrentTask.IsCompleted)
            {
                var completedAt = CurrentTask.CompletedAt;
                await _database.UncompleteTodoAsync(CurrentTask.Id);

                if (completedAt.HasValue)
                {
                    await _streakService.UpdateStreakForDateAsync(_authService.CurrentUserId, completedAt.Value);
                }
            }
            else
            {
                await _database.CompleteTodoAsync(CurrentTask.Id);
                await _streakService.UpdateStreakForTodayAsync(_authService.CurrentUserId);
            }

            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            ErrorMessage = CurrentTask.IsCompleted
                ? $"Failed to mark task incomplete: {ex.Message}"
                : $"Failed to complete task: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task DeleteTaskAsync()
    {
        if (CurrentTask == null)
        {
            ErrorMessage = "Task not found.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            var wasCompleted = CurrentTask.IsCompleted;
            var completedAt = CurrentTask.CompletedAt;

            await _database.DeleteTodoAsync(CurrentTask.Id);

            if (wasCompleted && completedAt.HasValue)
            {
                await _streakService.UpdateStreakForDateAsync(_authService.CurrentUserId, completedAt.Value);
            }

            await Shell.Current.GoToAsync("..");
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to delete task: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task CancelAsync()
    {
        await Shell.Current.GoToAsync("..");
    }

    public async Task OnAppearingAsync()
    {
        if (TaskId > 0 && TaskId != _loadedTaskId)
        {
            await LoadTaskAsync();
        }
    }
}
