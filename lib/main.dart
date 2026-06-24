import 'package:flutter/material.dart';
import 'Routes/AppRoutes.dart';
import 'Themes/Theme.dart';

void main() => runApp(const PortafolioApp());

class PortafolioApp extends StatelessWidget {
  const PortafolioApp({super.key});

  @override
  Widget build(BuildContext Context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cesar Sevilla - Desarrollador de Software',
      theme: ThemeData(
        scaffoldBackgroundColor: AppTheme.Fondo,
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getRoutes(),
    );
  }
}
