using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using kleos_app_final.Models;
using kleos_app_final.Services;

namespace kleos_app_final.ViewModels;

public partial class ProfileViewModel : BaseViewModel
{
    private readonly DatabaseService _database;
    private readonly AuthenticationService _authService;

    [ObservableProperty]
    private string userName = string.Empty;

    [ObservableProperty]
    private string userEmail = string.Empty;

    [ObservableProperty]
    private string? avatarPath;

    [ObservableProperty]
    private string initialsText = string.Empty;

    [ObservableProperty]
    private bool hasAvatar = false;

    public ProfileViewModel(DatabaseService database, AuthenticationService authService)
    {
        _database = database ?? throw new ArgumentNullException(nameof(database));
        _authService = authService ?? throw new ArgumentNullException(nameof(authService));
    }

    [RelayCommand]
    public async Task LoadProfileAsync()
    {
        if (IsLoading || _authService.CurrentUserId <= 0)
            return;

        IsLoading = true;
        ClearError();

        try
        {
            var user = await _database.GetUserByIdAsync(_authService.CurrentUserId);
            if (user != null)
            {
                UserName = user.Name;
                UserEmail = user.Email;
                AvatarPath = user.AvatarPath;
                HasAvatar = !string.IsNullOrEmpty(user.AvatarPath);

                // Generate initials
                var names = user.Name.Split(' ');
                InitialsText = string.Empty;
                foreach (var name in names)
                {
                    if (!string.IsNullOrEmpty(name))
                    {
                        InitialsText += name[0];
                    }
                }
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to load profile: {ex.Message}";
        }
        finally
        {
            IsLoading = false;
        }
    }

    [RelayCommand]
    public async Task PickAvatarAsync()
    {
        try
        {
            var result = await FilePicker.PickAsync(new PickOptions
            {
                PickerTitle = "Pick an avatar image",
                FileTypes = FilePickerFileType.Images
            });

            if (result != null)
            {
                // Copy image to app data directory
                var fileName = Path.GetFileName(result.FullPath);
                var targetPath = Path.Combine(FileSystem.AppDataDirectory, "avatars", fileName);

                Directory.CreateDirectory(Path.GetDirectoryName(targetPath));
                File.Copy(result.FullPath, targetPath, true);

                // Update user avatar path
                var user = await _database.GetUserByIdAsync(_authService.CurrentUserId);
                if (user != null)
                {
                    user.AvatarPath = targetPath;
                    await _database.UpdateUserAsync(user);
                    AvatarPath = targetPath;
                    HasAvatar = true;
                }
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to pick avatar: {ex.Message}";
        }
    }

    [RelayCommand]
    public async Task LogoutAsync()
    {
        try
        {
            await _authService.LogoutAsync();
            await Shell.Current.GoToAsync("//login");
        }
        catch (Exception ex)
        {
            ErrorMessage = $"Failed to logout: {ex.Message}";
        }
    }

    public async Task OnAppearingAsync()
    {
        await LoadProfileAsync();
    }
}
