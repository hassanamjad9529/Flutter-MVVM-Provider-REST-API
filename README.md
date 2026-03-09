# Flutter MVVM + Provider + REST API

**Implements a Flutter app using the MVVM architectural pattern with Provider for state management and REST API integration.**  
This project demonstrates clean separation of concerns, scalable folder structure, and production-ready architecture suitable for real-world applications.

---

## Features

- MVVM architecture with **Provider** state management
- REST API integration for login, home, and other modules
- Splash screen and app initialization
- Reusable widgets and UI components
- Light & dark theme support
- Session & local storage management
- Error handling with custom widgets and API response handling

---

## Folder Structure
```
lib/
├── configs/                    # App-level configuration, constants, themes, routes
│   ├── theme/                  # Light, dark themes, typography, state
│   ├── components/             # Reusable UI components (buttons, alerts, loading, etc.)
│   └── routes/                 # Route definitions, navigation helpers
├── data/                       # Data layer
│   ├── network/                # REST API services, base API
│   └── response/               # API response models & status handling
├── model/                      # Data models (User, MovieList, etc.)
├── repository/                 # Repository layer
│   └── auth_api/               # Login/auth repositories
├── services/                   # Session manager, splash services, local storage
├── features/                   # UI layer (organized by feature)
│   ├── splash/                 # Splash screen
│   ├── login/                  # Login feature
│   │   ├── view/               # Views & widgets
│   │   └── view_model/         # Login ViewModel
│   └── home/                   # Home feature
│       ├── view/               # Home view
│       └── widgets/            # Feature-specific widgets
└── main.dart                   # App entry point
```

---

## Tech Stack

- **Flutter** (Dart)
- **Provider** for state management
- **MVVM architecture**
- **REST API integration**
- **Local storage** (SharedPreferences / custom session manager)
- **Theming** (Light & Dark)
- **Custom reusable widgets**

---

## Getting Started

1. Clone the repository:
```bash
   git clone <repo-url>
```

2. Install dependencies:
```bash
   flutter pub get
```

3. Run the app:
```bash
   flutter run
```

---

## Improvements / Next Steps

- Add more feature modules (e.g., Profile, Settings)
- Implement offline-first support
- Add unit & widget tests for MVVM layers
- Enhance error handling & loading states

---

## Notes

This project is a demo showcasing MVVM with Provider and REST API integration, designed to demonstrate folder structure, clean code practices, and scalable architecture for Flutter apps.# Flutter-MVVM-Provider-REST-API
