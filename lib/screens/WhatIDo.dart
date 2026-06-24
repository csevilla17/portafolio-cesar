import 'package:flutter/material.dart';
import '../Themes/Theme.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/SideMenu.dart';
import '../Widgets/Footer.dart';

class WhatIDo extends StatelessWidget {
  const WhatIDo({super.key});

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: const NavBar(),
      drawer: const SideMenu(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        color: AppTheme.Acento,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          'assets/quehago.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    const Text(
                      'Qué hago',
                      style: TextStyle(
                        color: AppTheme.Texto,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E2230),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hobbies e Intereses',
                            style: TextStyle(
                              color: AppTheme.Acento,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Me apasiona mucho el fútbol, lo disfruto tanto como jugador y como espectador. También soy un gran fan de los videojuegos, con una fuerte preferencia por los juegos de pelea y la franquicia de Pokémon.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E2230),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enfoque en Ingeniería',
                            style: TextStyle(
                              color: AppTheme.Acento,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'En el campo de la ingeniería de software, mi trabajo se inclina fuertemente hacia la gestión de bases de datos y el desarrollo de videojuegos. También tengo una gran experiencia construyendo soluciones empresariales prácticas, como sistemas de facturación y gestión de pedidos.',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
