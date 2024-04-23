import 'package:flutter/material.dart';
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
        SizedBox(
          height: defaultPadding,
        ),
        //DIVIDER
        Divider(),

        //CODING INFO
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),

        TweenAnimationBuilder(
          duration: defaultDuration,
          tween: Tween<double>(begin: 0, end: 0.8),
          builder: (context, double value, child) => LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ),
      ],
    );
  }
}
