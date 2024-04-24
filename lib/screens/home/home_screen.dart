import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/screens/main/main_screen.dart';
import 'package:my_portfolio/utils/constants.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      //BACKGROUND IMAGES AND ANIMATED TEXT
      HomeBanner(),
    ]);
  }
}

