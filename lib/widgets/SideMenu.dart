import 'package:flutter/material.dart';
import '../Themes/Theme.dart';
import '../Screens/Secret.dart';
import '../Screens/WhatIDo.dart';
import '../Screens/Home.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext Context) {
    return Drawer(
      backgroundColor: AppTheme.Fondo,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white30, width: 1),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Porn',
                          style: TextStyle(
                            color: AppTheme.Texto,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: AppTheme.Acento,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text(
                            'hub',
                            style: TextStyle(
                              color: AppTheme.Fondo,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person_outline, color: AppTheme.Acento),
                  title: const Text('Sobre mí', style: TextStyle(color: AppTheme.Texto)),
                  onTap: () {
                    Navigator.pushReplacement(
                      Context,
                      MaterialPageRoute(builder: (Context) => const Home()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.work_outline, color: AppTheme.Acento),
                  title: const Text('Qué hago', style: TextStyle(color: AppTheme.Texto)),
                  onTap: () {
                    Navigator.pushReplacement(
                      Context,
                      MaterialPageRoute(builder: (Context) => const WhatIDo()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.star_border, color: AppTheme.Acento),
                  title: const Text('Hobbies', style: TextStyle(color: AppTheme.Texto)),
                  onTap: () {},
                ),
                ListTile(
                  leading: const Icon(Icons.comment_outlined, color: AppTheme.Acento),
                  title: const Text('Comentarios', style: TextStyle(color: AppTheme.Texto)),
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white30, height: 1),
          ListTile(
            leading: const Icon(Icons.logout, color: AppTheme.Acento),
            title: const Text('Cerrar sesión', style: TextStyle(color: AppTheme.Texto)),
            onTap: () {
              Navigator.push(
                Context,
                MaterialPageRoute(builder: (Context) => const Secret()),
              );
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
