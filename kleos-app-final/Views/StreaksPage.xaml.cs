using kleos_app_final.ViewModels;

namespace kleos_app_final.Views;

public partial class StreaksPage : ContentPage
{
    private readonly StreaksViewModel _viewModel;

    public StreaksPage(StreaksViewModel viewModel)
    {
        InitializeComponent();
        _viewModel = viewModel;
        BindingContext = _viewModel;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await _viewModel.OnAppearingAsync();
    }
}
