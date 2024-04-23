import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/main/components/address_column.dart';
import 'package:my_portfolio/screens/main/components/coding.dart';
import 'package:my_portfolio/screens/main/components/my_info.dart';
import 'package:my_portfolio/screens/main/components/skills.dart';
import 'package:my_portfolio/utils/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          //PROFILE PHOTO - NAME - BIO
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  //ADDRESS INFO
                  AddressColumn(),

                  //SKILLS
                  Skills(),

                  //CODING
                  Coding(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
