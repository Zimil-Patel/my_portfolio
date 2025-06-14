import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_linear_progress_indicator.dart';
import 'package:my_portfolio/utils/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding,
        ),

        //DIVIDER
        const Divider(),

        //CODING INFO
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),

        const AnimatedLinearProgressIndicator(
          languageName: 'Dart',
          percentage: 90,
        ),

        const AnimatedLinearProgressIndicator(
          languageName: 'C',
          percentage: 80,
        ),

        const AnimatedLinearProgressIndicator(
          languageName: 'C++',
          percentage: 80,
        ),

        const AnimatedLinearProgressIndicator(
          languageName: 'PHP',
          percentage: 60,
        ),

        // const AnimatedLinearProgressIndicator(
        //   languageName: 'Python',
        //   percentage: 50,
        // ),
      ],
    );
  }
}
