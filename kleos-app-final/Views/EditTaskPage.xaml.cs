using kleos_app_final.ViewModels;

namespace kleos_app_final.Views;

public partial class EditTaskPage : ContentPage
{
    private readonly EditTaskViewModel _viewModel;

    public EditTaskPage(EditTaskViewModel viewModel)
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
