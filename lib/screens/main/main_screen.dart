import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main/components/side_menu.dart';
import 'package:my_portfolio/utils/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //LEFT PART - DRAWER
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),


              const SizedBox(width: defaultPadding,),


              //RIGHT PART OF SCREEN - HOME SCREEN
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
