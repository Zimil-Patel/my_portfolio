import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_circular_progress_indicator.dart';
import 'package:my_portfolio/utils/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //DIVIDER
        const Divider(),

        //SKILLS INFO
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),

        const Row(
          children: [
            AnimatedCircularProgressIndicator(
              percentage: 82,
              skillName: 'Flutter',
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percentage: 90,
              skillName: 'Dart',
            ),
            SizedBox(
              width: defaultPadding,
            ),
            AnimatedCircularProgressIndicator(
              percentage: 70,
              skillName: 'Firebase',
            ),
          ],
        ),
      ],
    );
  }
}
