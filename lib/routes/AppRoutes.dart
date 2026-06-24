import 'package:flutter/material.dart';
import '../Screens/Home.dart';
import '../Screens/WhatIDo.dart';
import '../Screens/Secret.dart';
import '../Screens/Hobbies.dart';

class AppRoutes {
  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      '/home': (BuildContext Context) => const Home(),
      '/what_i_do': (BuildContext Context) => const WhatIDo(),
      '/secret': (BuildContext Context) => const Secret(),
      '/hobbies': (BuildContext Context) => const Hobbies(),
    };
  }
}
