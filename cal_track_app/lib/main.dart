import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_page.dart';

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
      theme: ThemeData(primarySwatch: Colors.green),
      home: const AuthPage(),
    );
  }
}