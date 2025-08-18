import 'package:cal_track_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color(0xFF0D0D15), 
  primaryColor: const Color(0xFF4F46E5), 
  fontFamily: GoogleFonts.inter().fontFamily,
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF1E1E2D),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide.none,
    ),
    hintStyle: const TextStyle(color: Colors.white54),
    labelStyle: const TextStyle(color: Colors.white70),
  ),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    titleLarge: TextStyle(fontWeight: FontWeight.bold),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFF4F46E5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
    ),
  ),
);



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://gktjlubvxzcbceqmfvkj.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdrdGpsdWJ2eHpjYmNlcW1mdmtqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI2MTg2ODksImV4cCI6MjA2ODE5NDY4OX0.VYhgnj-tTaQ9zbNwVaJ3hB-xe4_QSLCnqqADYjSeA9I',
  );
  runApp(const ProviderScope(child: CalorieTrackApp()));
}

class CalorieTrackApp extends StatelessWidget {
  const CalorieTrackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorie Track App',
      theme: theme,
      home: const LoginPage(),
    );
  }
}