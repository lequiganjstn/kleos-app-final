using kleos_app_final.ViewModels;

namespace kleos_app_final.Views;

public partial class CompletedPage : ContentPage
{
    private readonly CompletedViewModel _viewModel;

    public CompletedPage(CompletedViewModel viewModel)
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
