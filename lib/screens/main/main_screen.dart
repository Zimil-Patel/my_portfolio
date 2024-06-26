import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main/components/side_menu.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //HIDE APP BAR ON DESKTOP MODE
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(Icons.menu)),
              )),

      drawer: const SideMenu(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //LEFT PART - DRAWER
              if (Responsive.isDesktop(context))
                const Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),

              const SizedBox(
                width: defaultPadding,
              ),

              //RIGHT PART OF SCREEN - HOME SCREEN
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: children,
                  ),
                ),
              ),

              const SizedBox(
                width: defaultPadding,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
