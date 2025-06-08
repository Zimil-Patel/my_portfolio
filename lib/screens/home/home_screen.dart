import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/screens/home/components/my_projects.dart';
import 'package:my_portfolio/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/recommendations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      //BACKGROUND IMAGES AND ANIMATED TEXT
      HomeBanner(),

      //HIGH LIGHTS INFO IN ROW
      // HighlightsInfo(),

      //MY PROJECTS
      MyProjects(),

      //RECOMMENDATIONS
      Recommendations(),
    ]);
  }
}
