import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key,
    required this.percentage,
    required this.languageName,
  });

  final double percentage;
  final String languageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                languageName,
                style: const TextStyle(color: Colors.white),
              ),
              Text('${percentage.toInt()}%'),
            ],
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          TweenAnimationBuilder(
            duration: defaultDuration,
            tween: Tween<double>(begin: 0, end: percentage / 100),
            builder: (context, double value, child) => LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ),
        ],
      ),
    );
  }
}
