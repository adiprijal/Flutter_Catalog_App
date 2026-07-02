# Flutter Catalog App

A clean, cross-platform Flutter catalog application for browsing products, viewing item details, and managing a shopping cart.

## 📜 Overview

This is my first project with Flutter creating during my learning. It is a simple e-commerce style demo built with Flutter. It loads catalog data from a remote JSON source, presents products in a responsive layout, and lets users view details and add items to a cart.

The project is a good starting point for learning Flutter app structure, navigation, theming, responsive layouts, and lightweight state management.

Every commits shows step by step progress.

## 🌟 Features

- Login screen with basic form validation
- Product catalog fetched from a remote API
- Responsive product grid and list layouts
- Product detail page with hero-style transitions
- Shopping cart with item count and total price
- Remove items from the cart
- Light and dark theme support
- Asset support for local images and files

## 🛠 Tech Stack

- Flutter
- Dart
- `http` for API calls
- `velocity_x` for UI helpers and state updates
- `google_fonts` for typography
- `url_strategy` for cleaner web URLs

## 📁 Project Structure

```text
lib/
	core/        # App store and shared state
	models/      # Catalog and cart models
	pages/       # Login, home, detail, and cart screens
	utils/       # Routing utilities and helpers
	widgets/     # Reusable UI components
assets/
	images/      # Image assets
	files/       # JSON and other local data files
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK installed
- Dart SDK included with Flutter
- A device, emulator, or desktop target configured

### Installation

```bash
git clone https://github.com/adiprijal/flutter_catalog_app.git
cd flutter_catalog_app
flutter pub get
```

### Run the app

```bash
flutter run
```

To run on a specific platform, use one of the supported Flutter targets such as Android, iOS, web, Windows, macOS, or Linux.

## ⚙️ Configuration

The app currently loads catalog content from a remote JSON endpoint. If you want to change the product source, update the API URL in the home page data loader.

Local assets are configured in `pubspec.yaml`:

- `assets/images/`
- `assets/files/`

## 🤔 How It Works

- Users start on the login page.
- Successful form validation moves into the home/catalog experience.
- Products are fetched from a JSON API and rendered in a responsive list or grid.
- Tapping a product opens a detail page.
- Items can be added to or removed from the cart.
- The cart view displays quantity and total price information.


## 📁 Assets and Data

- Images are expected in `assets/images/`
- Local data files are expected in `assets/files/`
- `pubspec.yaml` already includes these asset directories

## 🏗 Building For Release

```bash
flutter build apk
flutter build ios
flutter build web
flutter build windows
flutter build macos
flutter build linux
```

## 🛠 Troubleshooting

- Run `flutter pub get` if dependencies are missing.
- Run `flutter clean` if build artifacts become stale.
- Verify your network connection if the catalog does not load.
- Check that asset paths in `pubspec.yaml` match the real folder structure.

## 📸 Screenshots

Here you can add screenshots of the app running on different platforms to showcase the UI and features.

```text
assets/screenshots/
    login_page.png
    home_page.png
    product_detail.png
    cart_page.png
```

## 🤝 Contributing

Contributions are welcome. If you want to improve the app, a good workflow is:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Run `flutter analyze`
5. Open a pull request
