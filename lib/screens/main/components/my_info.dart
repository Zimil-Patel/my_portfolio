import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: surfaceColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            //PROFILE PHOTO
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profilePhoto),
            ),
            const Spacer(),
            //NAME
            Text(
              profileName,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            //BIO
            const Text(
              profileBio,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
