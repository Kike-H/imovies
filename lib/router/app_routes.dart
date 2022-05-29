import 'package:flutter/material.dart';

import 'package:imovies/models/models.dart';
import 'package:imovies/screens/screens.dart';

class AppRoutes {
  static const String initialRoute = 'home';

  static final routes = <MenuOption>[
    MenuOption(route: 'home', screen: const HomeScreen()),
    MenuOption(route: 'details', screen: const DetailsScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final r in routes) {
      appRoutes.addAll({r.route: (BuildContext context) => r.screen});
    }
    return appRoutes;
  }
}
