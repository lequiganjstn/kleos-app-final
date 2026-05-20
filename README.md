# Kleos

A task management application built with **.NET MAUI 10**, designed to help users stay organized, build consistent habits, and gain insight into their productivity — all stored locally on their device.

---

## Features

### Authentication
Users can register for a new local account or log in to an existing one. Passwords are secured using **BCrypt hashing**, and sessions are persisted via device Preferences so returning users stay logged in without re-entering their credentials.

### Task Management
Create and manage personal to-do tasks, each with a required title and an optional description. Tasks are stored locally using **SQLite** and are scoped to the currently logged-in user.

### To-Do List
The main screen displays all incomplete tasks for the logged-in user. Each item shows the task title along with a one-line description preview. New tasks can be added through a modal or bottom sheet, and tasks can be marked complete using a **swipe-to-complete** gesture.

### Completed Tasks
A dedicated screen lists all completed tasks, showing each task's title and the date it was completed. Tasks are sorted from newest to oldest. Users can permanently remove completed tasks using a **swipe-to-delete** gesture.

### Streak Tracking
Kleos tracks daily task completion streaks. A streak grows when the user completes at least one task on consecutive days and resets if a day is skipped. The app displays both the **current streak** and the **longest streak** achieved.

### Productivity Insights
A simple insights view shows the number of tasks completed per day over the **last seven days** and compares the current week's total completions against the previous week's.

### User Profile
Each user has a profile screen displaying their name and avatar. The avatar can be updated by picking an image from the device gallery. If no avatar is set, the app displays an **initials placeholder** instead.

### Logout
Users can log out from the Profile screen. Logging out clears the locally saved session and returns the user to the Login screen.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | .NET MAUI 10 |
| Local Database | SQLite |
| Password Hashing | BCrypt |
| Session Persistence | MAUI Preferences |

---

## Getting Started

### Prerequisites

- [.NET 10 SDK](https://dotnet.microsoft.com/download)
- Visual Studio 2022+ with the **.NET MAUI** workload installed, or JetBrains Rider with MAUI support

### Running the App

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/kleos.git
   cd kleos
   ```

2. Restore dependencies:
   ```bash
   dotnet restore
   ```

3. Run on your target platform:
   ```bash
   # Android
   dotnet build -t:Run -f net10.0-android

   # iOS
   dotnet build -t:Run -f net10.0-ios

   # Windows
   dotnet build -t:Run -f net10.0-windows10.0.19041.0
   ```

---

## Project Structure

```
Kleos/
├── Models/          # Data models (User, TaskItem, etc.)
├── Views/           # XAML pages (Login, Register, Home, Completed, Insights, Profile)
├── ViewModels/      # MVVM view models
├── Services/        # Database, authentication, and session services
├── Resources/       # Fonts, images, styles
└── MauiProgram.cs   # App entry point and DI configuration
```

---

## License

This project is licensed under the [MIT License](LICENSE).
