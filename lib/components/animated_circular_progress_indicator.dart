import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    super.key,
    required this.percentage,
    required this.skillName,
  });

  final String skillName;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: percentage / 100),
              duration: defaultDuration,
              builder: (context, double value, child) => Stack(
                fit: StackFit.expand,
                children: [
                  //CIRCULAR PROGRESS INDICATOR
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),

                  //SKILL PERCENTAGE TEXT
                  Center(
                    child: Text(
                      '${(value * 100).toInt()}%',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            skillName,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
