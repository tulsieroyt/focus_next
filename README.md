# FocusNext - Task Manager

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/Platform-Flutter-blue.svg)](https://flutter.dev/)

FocusNext is a beautifully designed, cross-platform task manager application built with Flutter. It helps you organize your daily tasks, stay productive, and focus on what matters most with a clean and intuitive user interface.

## Key Features

*   **Task Management:** Create, edit, and delete tasks with ease.
*   **Intuitive UI:** A clean, minimalist, and user-friendly interface that helps you focus.
*   **Task Prioritization:** Organize your tasks to tackle the most important ones first. (Example feature)
*   **Calendar View:** See your tasks organized by date.
*   **Progress Tracking:** Visualize your task completion and stay motivated.
*   **Cross-Platform:** Single codebase that runs smoothly on Android, iOS, Web, and Desktop.

## Screenshots

Here's a glimpse of the FocusNext application in action.

| Splash Screen | Onboarding 1 | Onboarding 2 | Home Screen |
| :-----------: | :-----------: | :-----------: | :-----------: |
| ![Splash Screen](https://github.com/tulsieroyt/focus_next/assets/128843282/760428ac-30f9-4759-9c72-b1aff7cd1208) | ![Onboarding 1](https://github.com/tulsieroyt/focus_next/assets/128843282/dcc17d47-5352-4fdc-b01b-ce8ecb086a97) | ![Onboarding 2](https://github.com/tulsieroyt/focus_next/assets/128843282/c0538799-3bd4-4c76-aefd-9c90577c7ac3) | ![Home Screen](https://github.com/tulsieroyt/focus_next/assets/128843282/3d708ea5-3e1a-4c22-b3c4-64d6f1fefae0) |

## Technology Stack

*   **Framework:** [Flutter](https://flutter.dev/)
*   **Language:** [Dart](https://dart.dev/)
*   **State Management:** (GetX)
*   **Database:** (Firebase Firestore)

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have the following installed on your machine:

*   [Flutter SDK](https://flutter.dev/docs/get-started/install) (Channel stable)
*   [Git](https://git-scm.com/downloads)
*   A code editor like [VS Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio)

### Installation & Setup

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/tulsieroyt/focus_next.git
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd focus_next
    ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

### Running the Application

1.  Make sure you have an emulator running or a physical device connected.
2.  Run the following command in your terminal:
    ```sh
    flutter run
    ```

## Project Structure

The project follows a standard Flutter application structure to maintain a clean and scalable codebase.

```
focus_next/
├── android/            # Android specific files
├── ios/                # iOS specific files
├── lib/                # Main application source code in Dart
│   ├── main.dart       # Entry point of the application
│   ├── models/         # Data models (e.g., Task)
│   ├── screens/        # UI screens/pages
│   ├── widgets/        # Reusable custom widgets
│   ├── services/       # Business logic and services (e.g., API calls, database)
│   └── utils/          # Utility classes and helper functions
├── test/               # Unit and widget tests
└── pubspec.yaml        # Project dependencies and metadata
```

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".

1.  **Fork the Project**
2.  **Create your Feature Branch** (`git checkout -b feature/AmazingFeature`)
3.  **Commit your Changes** (`git commit -m 'Add some AmazingFeature'`)
4.  **Push to the Branch** (`git push origin feature/AmazingFeature`)
5.  **Open a Pull Request**

Please make sure your code adheres to the project's coding standards.

## License

Distributed under the MIT License. See [`LICENSE`](https://github.com/tulsieroyt/focus_next/blob/master/LICENSE) for more information.

## Contact

Tulsie Chandra Barman - [tulsieroyt@gmail.com](mailto:tulsieroyt@gmail.com)

Project Link: [https://github.com/tulsieroyt/focus_next](https://github.com/tulsieroyt/focus_next)
