import 'package:flutter/material.dart';
import 'package:islami_app/Layout/home_layout.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/modules/Splash_Screen/splash_screen.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // give it key of screen to start with it
      initialRoute: SplashScreen.routeName,
      // map faster the array on search with key
      routes: {
        // call back function ( function in another place)
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
