import 'package:flutter/material.dart';
import 'package:practice/core/Secrets/Supabase/supabase_secret.dart';
import 'package:practice/core/theme/theme.dart';
import 'package:practice/features/auth/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final supabase= Supabase.initialize(
    url: SupabaseSecret.supabaseURL, 
    anonKey: SupabaseSecret.anonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}


