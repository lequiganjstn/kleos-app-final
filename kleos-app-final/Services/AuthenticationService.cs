using BC = BCrypt.Net.BCrypt;
using kleos_app_final.Models;

namespace kleos_app_final.Services;

public class AuthenticationService
{
    private readonly DatabaseService _database;
    private int _currentUserId;

    public event EventHandler? AuthStateChanged;

    public AuthenticationService(DatabaseService database)
    {
        _database = database;
        _currentUserId = 0;
    }

    public int CurrentUserId => _currentUserId;

    public bool IsAuthenticated => _currentUserId > 0;

    public async Task<bool> InitializeAsync()
    {
        // Check if user was previously logged in
        var savedUserId = Preferences.Get("current_user_id", 0);
        if (savedUserId > 0)
        {
            var user = await _database.GetUserByIdAsync(savedUserId);
            if (user != null)
            {
                _currentUserId = savedUserId;
                return true;
            }
        }

        return false;
    }

    public async Task<(bool Success, string Message)> LoginAsync(string email, string password)
    {
        try
        {
            // Validate input
            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
            {
                return (false, "Email and password are required.");
            }

            // Find user
            var user = await _database.GetUserByEmailAsync(email);
            if (user == null)
            {
                return (false, "User not found. Please check your email.");
            }

            // Verify password
            if (!BC.Verify(password, user.PasswordHash))
            {
                return (false, "Password is incorrect.");
            }

            // Set current user
            _currentUserId = user.Id;
            Preferences.Set("current_user_id", user.Id);
            AuthStateChanged?.Invoke(this, EventArgs.Empty);

            return (true, "Login successful.");
        }
        catch (Exception ex)
        {
            return (false, $"Login failed: {ex.Message}");
        }
    }

    public async Task<(bool Success, string Message)> RegisterAsync(string email, string password, string confirmPassword, string name)
    {
        try
        {
            // Validate input
            if (string.IsNullOrWhiteSpace(email))
                return (false, "Email is required.");

            if (string.IsNullOrWhiteSpace(name))
                return (false, "Name is required.");

            if (string.IsNullOrWhiteSpace(password))
                return (false, "Password is required.");

            if (password.Length < 8)
                return (false, "Password must be at least 8 characters.");

            if (password != confirmPassword)
                return (false, "Passwords do not match.");

            if (!IsValidEmail(email))
                return (false, "Please enter a valid email address.");

            // Check if user already exists
            var existingUser = await _database.GetUserByEmailAsync(email);
            if (existingUser != null)
            {
                return (false, "An account with this email already exists.");
            }

            // Hash password
            var passwordHash = BC.HashPassword(password);

            // Create user
            var newUser = new User
            {
                Name = name,
                Email = email,
                PasswordHash = passwordHash,
                CreatedAt = DateTime.UtcNow
            };

            var userId = await _database.CreateUserAsync(newUser);

            // Auto-login
            _currentUserId = userId;
            Preferences.Set("current_user_id", userId);
            AuthStateChanged?.Invoke(this, EventArgs.Empty);

            return (true, "Registration successful.");
        }
        catch (Exception ex)
        {
            return (false, $"Registration failed: {ex.Message}");
        }
    }

    public async Task LogoutAsync()
    {
        _currentUserId = 0;
        Preferences.Remove("current_user_id");
        AuthStateChanged?.Invoke(this, EventArgs.Empty);
        await Task.CompletedTask;
    }

    public async Task<User?> GetCurrentUserAsync()
    {
        if (_currentUserId <= 0)
            return null;

        return await _database.GetUserByIdAsync(_currentUserId);
    }

    private bool IsValidEmail(string email)
    {
        try
        {
            var addr = new System.Net.Mail.MailAddress(email);
            return addr.Address == email;
        }
        catch
        {
            return false;
        }
    }
}
