import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/theme_constants.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const PrompterApp());
}

class PrompterApp extends StatelessWidget {
  const PrompterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prompter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(
          primary: ThemeConstants.primaryColor,
          secondary: ThemeConstants.accentColor,
          background: ThemeConstants.backgroundColor,
          surface: ThemeConstants.surfaceColor,
        ),
        textTheme: GoogleFonts.orbitronTextTheme(
          ThemeData.dark().textTheme,
        ),
        scaffoldBackgroundColor: ThemeConstants.backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeConstants.surfaceColor,
          foregroundColor: ThemeConstants.textColor,
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}
