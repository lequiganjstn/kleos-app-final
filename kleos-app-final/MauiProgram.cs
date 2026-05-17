using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;
using kleos_app_final.Services;
using kleos_app_final.Views;
using kleos_app_final.ViewModels;

namespace kleos_app_final
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    // Headings
                    fonts.AddFont("InstrumentSerif.ttf", "InstrumentSerif");
                    
                    // Body text
                    fonts.AddFont("Inter.ttf", "Inter");
                });

            // Register Services
            builder.Services.AddSingleton<DatabaseService>();
            builder.Services.AddSingleton<AuthenticationService>();
            builder.Services.AddSingleton<StreakService>();

            // Register ViewModels
            builder.Services.AddTransient<LoginViewModel>();
            builder.Services.AddTransient<RegisterViewModel>();
            builder.Services.AddTransient<TodoViewModel>();
            builder.Services.AddTransient<CompletedViewModel>();
            builder.Services.AddTransient<StreaksViewModel>();
            builder.Services.AddTransient<InsightsViewModel>();
            builder.Services.AddTransient<ProfileViewModel>();
            builder.Services.AddTransient<EditTaskViewModel>();

            // Register Views
            builder.Services.AddTransient<LoginPage>();
            builder.Services.AddTransient<RegisterPage>();
            builder.Services.AddTransient<TodoPage>();
            builder.Services.AddTransient<CompletedPage>();
            builder.Services.AddTransient<StreaksPage>();
            builder.Services.AddTransient<InsightsPage>();
            builder.Services.AddTransient<ProfilePage>();
            builder.Services.AddTransient<EditTaskPage>();

            // Register Shell and App
            builder.Services.AddSingleton<AppShell>();
            builder.Services.AddSingleton<App>();

#if DEBUG
    		builder.Logging.AddDebug();
#endif

            return builder.Build();
        }
    }
}
