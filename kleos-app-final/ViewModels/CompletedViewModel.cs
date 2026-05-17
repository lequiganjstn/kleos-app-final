using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Models;
using kleos_app_final.Services;
using kleos_app_final.Views;

namespace kleos_app_final.ViewModels;

public partial class CompletedViewModel : BaseViewModel
{
    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;
    private readonly StreakService _streakService;

    [ObservableProperty]
    private ObservableCollection<Todo> completedTodos = new();

    [ObservableProperty]
    private bool hasNoCompletedTodos = true;

    public CompletedViewModel(DatabaseService database, AuthenticationService authService, StreakService streakService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _streakService = streakService ?? throw new ArgumentNullException(nameof(streakService));
    }

    [RelayCommand]
    public async Task LoadCompletedTodosAsync()
    {
        if (IsLoading || _authService.CurrentUserId <= 0)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            var todos = await _database.GetCompletedTodosForUserAsync(_authService.CurrentUserId);
            CompletedTodos.Clear();
            foreach (var todo in todos)
            {
                CompletedTodos.Add(todo);
            }
            HasNoCompletedTodos = CompletedTodos.Count == 0;
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load completed tasks: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task EditCompletedTodoAsync(Todo todo)
    {
        if (todo?.Id > 0)
        {
            await Shell.Current.GoToAsync($"{nameof(EditTaskPage)}?taskId={todo.Id}");
        }
    }

    [RelayCommand]
    public async Task UncompleteTodoAsync(Todo todo)
    {
        if (todo?.Id <= 0)
            return;

        try
        {
            var completedAt = todo.CompletedAt;
            await _database.UncompleteTodoAsync(todo.Id);

            if (completedAt.HasValue)
            {
                await _streakService.UpdateStreakForDateAsync(_authService.CurrentUserId, completedAt.Value);
            }

            await LoadCompletedTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to mark task incomplete: {ex.Message}";
        }
    }

    [RelayCommand]
    public async Task DeleteTodoAsync(Todo todo)
    {
        if (todo?.Id <= 0)
            return;

        try
        {
            var completedAt = todo.CompletedAt;
            await _database.DeleteTodoAsync(todo.Id);

            if (todo.IsCompleted && completedAt.HasValue)
            {
                await _streakService.UpdateStreakForDateAsync(_authService.CurrentUserId, completedAt.Value);
            }

            await LoadCompletedTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to delete task: {ex.Message}";
        }
    }

    [RelayCommand]
    public async Task SwipedUncompleteAsync(Todo todo)
    {
        await UncompleteTodoAsync(todo);
    }

    [RelayCommand]
    public async Task SwipedDeleteAsync(Todo todo)
    {
        await DeleteTodoAsync(todo);
    }

    public async Task OnAppearingAsync()
    {
        await LoadCompletedTodosAsync();
    }
}
