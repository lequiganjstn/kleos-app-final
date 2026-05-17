using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Models;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class CompletedViewModel : BaseViewModel
{
    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;

    [ObservableProperty]
    private ObservableCollection<Todo> completedTodos = new();

    [ObservableProperty]
    private bool hasNoCompletedTodos = true;

    public CompletedViewModel(DatabaseService database, AuthenticationService authService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
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
    public async Task DeleteTodoAsync(int todoId)
    {
        try
        {
            await _database.DeleteTodoAsync(todoId);
            await LoadCompletedTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to delete task: {ex.Message}";
        }
    }

    [RelayCommand]
    public async Task SwipedDeleteAsync(Todo todo)
    {
        await DeleteTodoAsync(todo.Id);
    }

    public async Task OnAppearingAsync()
    {
        await LoadCompletedTodosAsync();
    }
}
