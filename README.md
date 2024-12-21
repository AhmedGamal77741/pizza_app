# Pizza App

A feature-rich Flutter application designed for managing pizza orders and users, built using Firebase, BLoC state management, and clean architecture principles.

## Project Overview
The **Pizza App** is a demonstration of modern app development techniques using Flutter. It showcases:
- Firebase integration for backend services.
- BLoC for state management.
- Clean Architecture for maintainable and scalable code.
- Custom repositories for managing domain-specific logic.

## Features
- User authentication and profile management.
- Pizza ordering functionality.
- Responsive UI supporting multiple platforms (iOS, Android, Web, Desktop).
- Modular architecture for easy code maintenance and scalability.

## Tech Stack
- **Flutter**: UI framework for building cross-platform apps.
- **Firebase**: Backend services.
- **BLoC (Business Logic Component)**: State management.
- **Equatable**: For concise and readable code in value objects.
- **Font Awesome Flutter**: Icon library.

## Getting Started

### Prerequisites
- Install [Flutter SDK](https://docs.flutter.dev/get-started/install).
- Configure Firebase for your platforms (Android, iOS, Web).

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/AhmedGamal77741/pizza_app.git
   cd pizza_app
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Project Structure
```
lib/
├── blocs/               # BLoC components
├── models/              # Data models
├── repositories/        # Custom repositories
├── screens/             # UI screens
├── widgets/             # Reusable widgets
└── main.dart            # Application entry point
```

## Contributions
Contributions are welcome! Please fork the repository and submit a pull request.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments
- [Flutter](https://flutter.dev)
- [Firebase](https://firebase.google.com)
- [BLoC Library](https://bloclibrary.dev)

