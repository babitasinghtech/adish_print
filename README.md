# adish_print

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



adish_print/
├─ pubspec.yaml
├─ lib/
│  ├─ main.dart
│  ├─ app/
│  │  ├─ routes.dart
│  │  └─ theme.dart
│  ├─ data/
│  │  ├─ models/
│  │  │  ├─ product.dart
│  │  │  ├─ cart_item.dart
│  │  │  └─ user.dart
│  │  └─ services/
│  │     └─ mock_api.dart
│  ├─ repository/
│  │  └─ product_repository.dart
│  ├─ controllers/
│  │  ├─ auth_provider.dart
│  │  ├─ product_provider.dart
│  │  └─ cart_provider.dart
│  └─ ui/
│     ├─ screens/
│     │  ├─ splash_screen.dart
│     │  ├─ login_screen.dart
│     │  ├─ home_screen.dart
│     │  ├─ product_detail_screen.dart
│     │  ├─ cart_screen.dart
│     │  ├─ checkout_screen.dart
│     │  └─ profile_screen.dart
│     └─ widgets/
│        ├─ product_card.dart
│        └─ cart_item_tile.dart
