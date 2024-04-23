import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main/components/side_menu.dart';
import 'package:my_portfolio/utils/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              //LEFT PART - DRAWER
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),

              //RIGHT PART OF SCREEN - HOME SCREEN
              Expanded(
                flex: 7,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
