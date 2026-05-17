using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class RegisterViewModel : BaseViewModel
{
    private readonly AuthenticationService _authService;

    [ObservableProperty]
    private string name = string.Empty;

    [ObservableProperty]
    private string email = string.Empty;

    [ObservableProperty]
    private string password = string.Empty;

    [ObservableProperty]
    private string confirmPassword = string.Empty;

    public RegisterViewModel(AuthenticationService authService)
    {
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
    }

    [RelayCommand]
    public async Task RegisterAsync()
    {
        if (string.IsNullOrWhiteSpace(Name))
        {
            ErrorMessage = "Please enter your name.";
            return;
        }

        if (string.IsNullOrWhiteSpace(Email))
        {
            ErrorMessage = "Please enter your email.";
            return;
        }

        if (string.IsNullOrWhiteSpace(Password))
        {
            ErrorMessage = "Please enter a password.";
            return;
        }

        if (string.IsNullOrWhiteSpace(ConfirmPassword))
        {
            ErrorMessage = "Please confirm your password.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            var (success, message) = await _authService.RegisterAsync(Email, Password, ConfirmPassword, Name);

            if (success)
            {
                // Navigate to Todo screen
                await Shell.Current.GoToAsync("//todo");
            }
            else
            {
                ErrorMessage = message;
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"An error occurred: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task GoToLoginAsync()
    {
        await Shell.Current.GoToAsync("///login");
    }
}
