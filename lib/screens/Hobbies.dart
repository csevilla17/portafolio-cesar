import 'package:flutter/material.dart';
import '../Themes/Theme.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/SideMenu.dart';
import '../Widgets/Footer.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({super.key});

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
                  children: [
                    const Text(
                      'Hobbies',
                      style: TextStyle(
                        color: AppTheme.Texto,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1E2230),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        children: [
                          CheckboxListTile(
                            value: true,
                            onChanged: null,
                            secondary: Icon(Icons.sports_soccer, color: AppTheme.Acento),
                            title: Text(
                              'Fútbol (Jugador y Espectador)',
                              style: TextStyle(color: AppTheme.Texto, fontSize: 16),
                            ),
                          ),
                          CheckboxListTile(
                            value: true,
                            onChanged: null,
                            secondary: Icon(Icons.sports_basketball, color: AppTheme.Acento),
                            title: Text(
                              'Baloncesto',
                              style: TextStyle(color: AppTheme.Texto, fontSize: 16),
                            ),
                          ),
                          CheckboxListTile(
                            value: true,
                            onChanged: null,
                            secondary: Icon(Icons.sports_baseball, color: AppTheme.Acento),
                            title: Text(
                              'Béisbol',
                              style: TextStyle(color: AppTheme.Texto, fontSize: 16),
                            ),
                          ),
                          CheckboxListTile(
                            value: true,
                            onChanged: null,
                            secondary: Icon(Icons.videogame_asset, color: AppTheme.Acento),
                            title: Text(
                              'Videojuegos (Pokémon, FIFA, Call of Duty)',
                              style: TextStyle(color: AppTheme.Texto, fontSize: 16),
                            ),
                          ),
                          CheckboxListTile(
                            value: true,
                            onChanged: null,
                            secondary: Icon(Icons.sports_martial_arts, color: AppTheme.Acento),
                            title: Text(
                              'Juegos de Pelea (Dragon Ball)',
                              style: TextStyle(color: AppTheme.Texto, fontSize: 16),
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
