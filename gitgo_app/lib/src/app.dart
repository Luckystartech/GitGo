import 'package:flutter/material.dart';
import 'package:gitgo_app/src/features/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      title: 'GitGo-App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
