using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class LoginViewModel : BaseViewModel
{
    private readonly AuthenticationService _authService;

    [ObservableProperty]
    private string email = string.Empty;

    [ObservableProperty]
    private string password = string.Empty;

    public LoginViewModel(AuthenticationService authService)
    {
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
    }

    [RelayCommand]
    public async Task LoginAsync()
    {
        if (string.IsNullOrWhiteSpace(Email))
        {
            ErrorMessage = "Please enter your email.";
            return;
        }

        if (string.IsNullOrWhiteSpace(Password))
        {
            ErrorMessage = "Please enter your password.";
            return;
        }

        IsLoading = true;
        ClearError();

        try
        {
            var (success, message) = await _authService.LoginAsync(Email, Password);

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
    public async Task GoToRegisterAsync()
    {
        await Shell.Current.GoToAsync("///register");
    }
}
