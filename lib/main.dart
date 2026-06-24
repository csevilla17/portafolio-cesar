import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'themes/theme.dart';

void main() => runApp(const PortafolioApp());

class PortafolioApp extends StatelessWidget {
  const PortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cesar Sevilla - Desarrollador de Software',
      theme: ThemeData(
        scaffoldBackgroundColor: AppTheme.fondo,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
