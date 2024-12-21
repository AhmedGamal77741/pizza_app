# Pizza Delivery App

This repository contains the code for a **Pizza Delivery App** built using **Flutter**, **Firebase**, and the **BLoC** state management pattern. The app follows **Clean Architecture principles** to ensure a modular, scalable, and maintainable codebase.

## Features

- **User Authentication**: Secure login and sign-up using Firebase Authentication.
- **Dynamic Menu**: Browse available pizzas and customize orders.
- **Order Tracking**: Real-time updates on order status using Firebase Firestore.
- **Favorites**: Save favorite pizzas for quick access.
- **Responsive Design**: Optimized for both Android and iOS devices.

## Tech Stack

- **Flutter**: Cross-platform mobile app development.
- **Firebase**: 
  - Authentication
  - Firestore (real-time database)
- **BLoC (Business Logic Component)**: For state management.
- **Clean Architecture**: Ensures separation of concerns with clear domain, data, and presentation layers.

## Project Structure

```
lib/
├── core/                     # Common utilities and constants
├── features/
│   ├── authentication/       # User authentication feature
│   ├── menu/                 # Menu and pizza listing feature
│   ├── order_tracking/       # Order tracking feature
│   ├── favorites/            # Favorites management
├── main.dart                 # Application entry point
```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/pizza-delivery-app.git
   cd pizza-delivery-app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure Firebase:
   - Create a Firebase project in the [Firebase Console](https://console.firebase.google.com/).
   - Download the `google-services.json` file (for Android) and `GoogleService-Info.plist` file (for iOS).
   - Place them in the respective `android/app` and `ios/Runner` directories.

4. Run the app:
   ```bash
   flutter run
   ```

## Screenshots

### Home Screen
![Home Screen](path-to-home-screen-screenshot.png)

### Pizza Menu
![Menu Screen](path-to-menu-screen-screenshot.png)

### Order Tracking
![Order Tracking](path-to-order-tracking-screenshot.png)

## Contributions

Contributions are welcome! If you would like to report a bug, suggest a feature, or contribute code:

1. Fork the repository.
2. Create a new branch.
3. Commit your changes.
4. Submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.

---

Developed with ❤️ using Flutter.
