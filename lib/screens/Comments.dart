import 'package:flutter/material.dart';
import '../Themes/Theme.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/SideMenu.dart';
import '../Widgets/Footer.dart';
import '../Models/CommentModel.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext Context) {
    final List<CommentModel> comments = [
      CommentModel(author: 'Sofía', text: '¡Polvo de gallo!', date: '2026-06-24'),
      CommentModel(author: 'Ana', text: 'Programa en phyton creo que es gay', date: '2026-06-23'),
      CommentModel(author: 'Carlos', text: 'Pagame lo que me debess!', date: '2026-06-22'),
    ];

    return Scaffold(
      appBar: const NavBar(),
      drawer: const SideMenu(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(24.0),
              itemCount: comments.length,
              itemBuilder: (Context, index) {
                final comment = comments[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1E2230),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            comment.author,
                            style: const TextStyle(
                              color: AppTheme.Acento,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            comment.date,
                            style: const TextStyle(
                              color: Colors.white54,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Text(
                        comment.text,
                        style: const TextStyle(
                          color: AppTheme.Texto,
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
