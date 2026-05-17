using kleos_app_final.Services;

namespace kleos_app_final
{
    public partial class App : Application
    {
        private readonly DatabaseService _database;
        private readonly AuthenticationService _authService;
        private readonly AppShell _appShell;

        public App(DatabaseService database, AuthenticationService authService, AppShell appShell)
        {
            InitializeComponent();
            _database = database;
            _authService = authService;
            _appShell = appShell;
        }

        protected override async void OnStart()
        {
            base.OnStart();
            await InitializeApp();
        }

        private async Task InitializeApp()
        {
            try
            {
                // Initialize database
                await _database.InitializeAsync();

                // Check if user was previously logged in
                var isAuthenticated = await _authService.InitializeAsync();

                if (isAuthenticated)
                {
                    // Navigate to main app
                    await Shell.Current.GoToAsync("//todo");
                }
                else
                {
                    // Navigate to login
                    await Shell.Current.GoToAsync("//login");
                }
            }
            catch (Exception ex)
            {
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    MainPage?.DisplayAlert("Error", $"Failed to initialize app: {ex.Message}", "OK");
                });
            }
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(_appShell);
        }
    }
}