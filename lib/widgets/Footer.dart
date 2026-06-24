import 'package:flutter/material.dart';
import '../Themes/Theme.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext Context) {
    return Container(
      width: double.infinity,
      color: AppTheme.Fondo,
      padding: const EdgeInsets.all(20),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '© 2026 César Sevilla',
            style: TextStyle(
              color: AppTheme.Texto,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Estrella Porno',
            style: TextStyle(
              color: Colors.white54,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Todos los derechos reservados',
            style: TextStyle(
              color: Colors.white54,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
