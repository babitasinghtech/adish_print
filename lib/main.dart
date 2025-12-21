import 'package:adish_print/ui/screen/cartscreen.dart';
import 'package:adish_print/ui/screen/checkkoutscreen.dart';
import 'package:adish_print/ui/screen/homescreen.dart';
import 'package:adish_print/ui/screen/loginscreen.dart';
import 'package:adish_print/ui/screen/profilescreen.dart';
import 'package:adish_print/ui/screen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/routes.dart';
import 'app/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adish Print',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
        AppRoutes.cart: (context) => const CartScreen(),
        AppRoutes.checkout: (context) => const CheckoutScreen(),
        AppRoutes.profile: (context) => const ProfileScreen(),
      },
    );
  }
}
