using kleos_app_final.ViewModels;

namespace kleos_app_final.Views;

public partial class TodoPage : ContentPage
{
    private readonly TodoViewModel _viewModel;

    public TodoPage(TodoViewModel viewModel)
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
