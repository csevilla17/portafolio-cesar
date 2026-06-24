import 'package:flutter/material.dart';
import '../Themes/Theme.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext Context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: AppTheme.Acento),
      backgroundColor: AppTheme.Fondo,
      centerTitle: true,
      shape: const Border(
        bottom: BorderSide(color: Colors.white30, width: 1),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
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
            child: Text(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
