import 'package:flutter/material.dart';
import '../Themes/Theme.dart';

class Secret extends StatelessWidget {
  const Secret({super.key});

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.Fondo,
        iconTheme: const IconThemeData(color: AppTheme.Acento),
        title: const Text(
          'Secreto',
          style: TextStyle(color: AppTheme.Texto),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Encontraste la seccion secreta toma esta foto como regalo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppTheme.Texto,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/secret.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
