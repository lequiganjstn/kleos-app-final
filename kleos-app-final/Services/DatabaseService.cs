using SQLite;
using kleos_app_final.Models;

namespace kleos_app_final.Services;

public class DatabaseService
{
    private SQLiteAsyncConnection? _connection;
    private static readonly string DatabaseFileName = "kleos.db";
    private static readonly string DatabasePath = Path.Combine(FileSystem.AppDataDirectory, DatabaseFileName);

    public async Task InitializeAsync()
    {
        if (_connection != null)
            return;

        _connection = new SQLiteAsyncConnection(DatabasePath, SQLiteOpenFlags.ReadWrite | SQLiteOpenFlags.Create | SQLiteOpenFlags.SharedCache);

        // Create tables
        await _connection.CreateTableAsync<User>();
        await _connection.CreateTableAsync<Todo>();
        await _connection.CreateTableAsync<Streak>();

        await _connection.ExecuteAsync("PRAGMA foreign_keys = ON");
    }

    private SQLiteAsyncConnection GetConnection()
    {
        if (_connection == null)
            throw new InvalidOperationException("Database is not initialized. Call InitializeAsync first.");
        return _connection;
    }

    // ==================== User Operations ====================

    public async Task<User?> GetUserByEmailAsync(string email)
    {
        var db = GetConnection();
        return await db.Table<User>().Where(u => u.Email == email).FirstOrDefaultAsync();
    }

    public async Task<User?> GetUserByIdAsync(int userId)
    {
        var db = GetConnection();
        return await db.FindAsync<User>(userId);
    }

    public async Task<int> CreateUserAsync(User user)
    {
        var db = GetConnection();
        return await db.InsertAsync(user);
    }

    public async Task<int> UpdateUserAsync(User user)
    {
        var db = GetConnection();
        return await db.UpdateAsync(user);
    }

    // ==================== Todo Operations ====================

    public async Task<List<Todo>> GetTodosForUserAsync(int userId, bool? isCompleted = null)
    {
        var db = GetConnection();
        var query = db.Table<Todo>().Where(t => t.UserId == userId);

        if (isCompleted.HasValue)
        {
            query = query.Where(t => t.IsCompleted == isCompleted.Value);
        }

        return await query.OrderByDescending(t => t.CreatedAt).ToListAsync();
    }

    public async Task<List<Todo>> GetIncompleteTodosForUserAsync(int userId)
    {
        return await GetTodosForUserAsync(userId, false);
    }

    public async Task<List<Todo>> GetCompletedTodosForUserAsync(int userId)
    {
        var db = GetConnection();
        return await db.Table<Todo>()
            .Where(t => t.UserId == userId && t.IsCompleted)
            .OrderByDescending(t => t.CompletedAt)
            .ToListAsync();
    }

    public async Task<Todo?> GetTodoByIdAsync(int todoId)
    {
        var db = GetConnection();
        return await db.FindAsync<Todo>(todoId);
    }

    public async Task<int> CreateTodoAsync(Todo todo)
    {
        var db = GetConnection();
        return await db.InsertAsync(todo);
    }

    public async Task<int> UpdateTodoAsync(Todo todo)
    {
        var db = GetConnection();
        return await db.UpdateAsync(todo);
    }

    public async Task<int> DeleteTodoAsync(int todoId)
    {
        var db = GetConnection();
        return await db.DeleteAsync<Todo>(todoId);
    }

    public async Task<int> CompleteTodoAsync(int todoId)
    {
        var db = GetConnection();
        var todo = await GetTodoByIdAsync(todoId);
        if (todo == null)
            return 0;

        todo.IsCompleted = true;
        todo.CompletedAt = DateTime.UtcNow;
        return await UpdateTodoAsync(todo);
    }

    public async Task<int> UncompleteTodoAsync(int todoId)
    {
        var db = GetConnection();
        var todo = await GetTodoByIdAsync(todoId);
        if (todo == null)
            return 0;

        todo.IsCompleted = false;
        todo.CompletedAt = null;
        return await UpdateTodoAsync(todo);
    }

    // ==================== Streak Operations ====================

    public async Task<Streak?> GetStreakForDateAsync(int userId, DateTime date)
    {
        var db = GetConnection();
        var startOfDay = date.Date;
        var startOfNextDay = startOfDay.AddDays(1);

        return await db.Table<Streak>()
            .Where(s => s.UserId == userId &&
                        s.Date >= startOfDay &&
                        s.Date < startOfNextDay)
            .FirstOrDefaultAsync();
    }

    public async Task<List<Streak>> GetStreaksForUserAsync(int userId)
    {
        var db = GetConnection();
        return await db.Table<Streak>()
            .Where(s => s.UserId == userId)
            .OrderByDescending(s => s.Date)
            .ToListAsync();
    }

    public async Task<List<Streak>> GetStreaksLastNDaysAsync(int userId, int days)
    {
        var db = GetConnection();
        var startDate = DateTime.UtcNow.Date.AddDays(-days);

        return await db.Table<Streak>()
            .Where(s => s.UserId == userId && s.Date >= startDate)
            .OrderByDescending(s => s.Date)
            .ToListAsync();
    }

    public async Task<int> CreateStreakAsync(Streak streak)
    {
        var db = GetConnection();
        return await db.InsertAsync(streak);
    }

    public async Task<int> UpdateStreakAsync(Streak streak)
    {
        var db = GetConnection();
        return await db.UpdateAsync(streak);
    }

    // ==================== Utility Operations ====================

    public async Task<int> GetCompletedTodosCountForDateAsync(int userId, DateTime date)
    {
        var db = GetConnection();
        var startOfDay = date.Date;
        var startOfNextDay = startOfDay.AddDays(1);

        return await db.Table<Todo>()
            .Where(t => t.UserId == userId &&
                        t.IsCompleted &&
                        t.CompletedAt >= startOfDay &&
                        t.CompletedAt < startOfNextDay)
            .CountAsync();
    }

    public async Task<int> GetTotalCompletedTodosAsync(int userId)
    {
        var db = GetConnection();
        return await db.Table<Todo>()
            .Where(t => t.UserId == userId && t.IsCompleted)
            .CountAsync();
    }

    public async Task DeleteAllUserDataAsync(int userId)
    {
        var db = GetConnection();
        await db.ExecuteAsync("DELETE FROM todos WHERE user_id = ?", userId);
        await db.ExecuteAsync("DELETE FROM streaks WHERE user_id = ?", userId);
        await db.ExecuteAsync("DELETE FROM users WHERE id = ?", userId);
    }

    public async Task CloseAsync()
    {
        if (_connection != null)
        {
            await _connection.CloseAsync();
            _connection = null;
        }
    }
}
