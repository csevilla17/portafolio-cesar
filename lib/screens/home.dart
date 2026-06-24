import 'package:flutter/material.dart';
import '../Themes/Theme.dart';
import '../Widgets/NavBar.dart';
import '../Widgets/Footer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 340),
                        child: Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 80),
                          padding: const EdgeInsets.only(
                            top: 110,
                            left: 24,
                            right: 24,
                            bottom: 24,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1E2230),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'César Sevilla',
                                style: TextStyle(
                                  color: AppTheme.Texto,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Estrella Porno',
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: 24),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.access_time, color: AppTheme.Acento, size: 16),
                                      SizedBox(width: 8),
                                      Text(
                                        '2.5 Horas en cama',
                                        style: TextStyle(color: Colors.white, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(Icons.favorite, color: AppTheme.Acento, size: 16),
                                      SizedBox(width: 8),
                                      Text(
                                        '60 Pulsaciones por minuto',
                                        style: TextStyle(color: Colors.white, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Icon(Icons.visibility, color: AppTheme.Acento, size: 16),
                                      SizedBox(width: 8),
                                      Text(
                                        'Tetitaaas',
                                        style: TextStyle(color: Colors.white, fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 24),
                              Divider(
                                color: Colors.white24,
                                thickness: 1,
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_outlined, color: Colors.white54, size: 16),
                                      Text(' Venezuela', style: TextStyle(color: Colors.white54, fontSize: 12)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_today_outlined, color: Colors.white54, size: 16),
                                      Text(' Unimar', style: TextStyle(color: Colors.white54, fontSize: 12)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppTheme.Acento,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'assets/foto.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
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
