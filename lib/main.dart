import 'package:flutter/material.dart';

import 'core/resources/manager_font_sizes.dart';
import 'core/routes.dart';
import 'presentation/View/about_screen.dart';
import 'presentation/View/main_screen.dart';
import 'presentation/View/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: ManagerFontSizes.s20,
            color: Colors.black,
          ),
        ),
      ),
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.mainScreen: (context) => const MainScreen(),
        Routes.aboutScreen: (context) => const AboutScreen(),
      },
    );
  }
}
