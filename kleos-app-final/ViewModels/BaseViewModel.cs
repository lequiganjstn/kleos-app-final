using System.ComponentModel;
using CommunityToolkit.Mvvm.ComponentModel;

namespace kleos_app_final.ViewModels;

public partial class BaseViewModel : ObservableObject
{
    [ObservableProperty]
    private bool isLoading;

    [ObservableProperty]
    private string? errorMessage;

    /// <summary>
    /// Returns true if there is an error message to display.
    /// </summary>
    public bool HasError => !string.IsNullOrWhiteSpace(ErrorMessage);

    /// <summary>
    /// Returns true if the view model is not currently loading.
    /// </summary>
    public bool IsNotLoading => !IsLoading;

    public void ClearError()
    {
        ErrorMessage = null;
    }

    /// <summary>
    /// Override OnPropertyChanged to notify dependents when computed properties change.
    /// </summary>
    protected override void OnPropertyChanged(PropertyChangedEventArgs e)
    {
        base.OnPropertyChanged(e);

        // Notify HasError when ErrorMessage changes
        if (e.PropertyName == nameof(ErrorMessage))
        {
            OnPropertyChanged(nameof(HasError));
        }

        // Notify IsNotLoading when IsLoading changes
        if (e.PropertyName == nameof(IsLoading))
        {
            OnPropertyChanged(nameof(IsNotLoading));
        }
    }
}
