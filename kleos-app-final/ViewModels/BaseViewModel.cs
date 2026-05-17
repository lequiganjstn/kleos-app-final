using CommunityToolkit.Mvvm.ComponentModel;

namespace kleos_app_final.ViewModels;

public partial class BaseViewModel : ObservableObject
{
    [ObservableProperty]
    private bool isLoading;

    [ObservableProperty]
    private string? errorMessage;

    public void ClearError()
    {
        ErrorMessage = null;
    }
}
