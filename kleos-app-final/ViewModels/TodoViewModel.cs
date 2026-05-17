using System.Collections.ObjectModel;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Models;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class TodoViewModel : BaseViewModel
{
    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;
    private readonly StreakService _streakService;

    [ObservableProperty]
    private ObservableCollection<Todo> todos = new();

    [ObservableProperty]
    private bool hasNoTodos = true;

    [ObservableProperty]
    private string newTodoTitle = string.Empty;

    [ObservableProperty]
    private string newTodoDescription = string.Empty;

    [ObservableProperty]
    private bool showAddTodoSheet = false;

    public TodoViewModel(DatabaseService database, AuthenticationService authService, StreakService streakService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
        _streakService = streakService ?? throw new ArgumentNullException(nameof(streakService));
    }

    [RelayCommand]
    public async Task LoadTodosAsync()
    {
        if (IsLoading || _authService.CurrentUserId <= 0)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            await RefreshTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load todos: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public void OpenAddTodoModal()
    {
        ShowAddTodoSheet = true;
        NewTodoTitle = string.Empty;
        NewTodoDescription = string.Empty;
    }

    [RelayCommand]
    public void CloseAddTodoModal()
    {
        ShowAddTodoSheet = false;
    }

    [RelayCommand]
    public async Task AddTodoAsync()
    {
        var title = NewTodoTitle.Trim();
        var description = NewTodoDescription.Trim();

        if (string.IsNullOrWhiteSpace(title))
        {
            ErrorMessage = "Please enter a task title.";
            return;
        }

        if (_authService.CurrentUserId <= 0)
        {
            ErrorMessage = "User not authenticated.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            var todo = new Todo
            {
                UserId = _authService.CurrentUserId,
                Title = title,
                Description = string.IsNullOrWhiteSpace(description) ? null : description,
                IsCompleted = false,
                CreatedAt = DateTime.UtcNow
            };

            await _database.CreateTodoAsync(todo);
            NewTodoTitle = string.Empty;
            NewTodoDescription = string.Empty;
            ShowAddTodoSheet = false;

            await RefreshTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to add task: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task CompleteTodoAsync(int todoId)
    {
        try
        {
            await _database.CompleteTodoAsync(todoId);
            await _streakService.UpdateStreakForTodayAsync(_authService.CurrentUserId);
            await LoadTodosAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to complete task: {ex.Message}";
        }
    }

    [RelayCommand]
    public async Task SwipedCompletedAsync(Todo todo)
    {
        await CompleteTodoAsync(todo.Id);
    }

    [RelayCommand]
    public async Task EditTaskAsync(Todo todo)
    {
        if (todo?.Id > 0)
        {
            await Shell.Current.GoToAsync($"///edittask?taskId={todo.Id}");
        }
    }

    private async Task RefreshTodosAsync()
    {
        var todos = await _database.GetIncompleteTodosForUserAsync(_authService.CurrentUserId);
        Todos.Clear();
        foreach (var todo in todos)
        {
            Todos.Add(todo);
        }
        HasNoTodos = Todos.Count == 0;
    }

    public async Task OnAppearingAsync()
    {
        await LoadTodosAsync();
    }
}
