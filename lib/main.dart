import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_personal_portfolio/res/utils/app_colors.dart';
import 'package:my_personal_portfolio/view/splash/splash_view.dart';

import 'view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white).copyWith(
            titleSmall: const TextStyle(color: AppColors.bodyTextColor),
            titleLarge: const TextStyle(color: AppColors.bodyTextColor),
          )
      ),
      home: const SplashView(),
    );
  }
}

