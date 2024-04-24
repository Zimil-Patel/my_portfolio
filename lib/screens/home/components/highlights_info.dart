import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_counter.dart';
import 'package:my_portfolio/screens/home/components/highlight_ui.dart';
import 'package:my_portfolio/utils/constants.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(
              value: 119,
              text: 'K+',
            ),
            lable: 'Subscribers',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 40,
              text: '+',
            ),
            lable: 'Videos',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 30,
              text: '+',
            ),
            lable: 'Github Projects',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 13,
              text: 'K+',
            ),
            lable: 'Stars',
          ),
        ],
      ),
    );
  }
}
