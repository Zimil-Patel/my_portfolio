import 'package:flutter/material.dart';
import 'package:my_portfolio/components/animated_counter.dart';
import 'package:my_portfolio/screens/home/components/highlight_ui.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/responsive.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: defaultPadding),
      child: !Responsive.isMobileLarge(context) ? Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(
              value: 119,
              text: 'K+',
            ),
            label: 'Subscribers',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 40,
              text: '+',
            ),
            label: 'Videos',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 30,
              text: '+',
            ),
            label: 'Github Projects',
          ),
          Highlight(
            counter: AnimatedCounter(
              value: 13,
              text: 'K+',
            ),
            label: 'Stars',
          ),
        ],
      ) : Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
                counter: AnimatedCounter(
                  value: 119,
                  text: 'K+',
                ),
                label: 'Subscribers',
              ),
              Highlight(
                counter: AnimatedCounter(
                  value: 40,
                  text: '+',
                ),
                label: 'Videos',
              ),
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Highlight(
                counter: AnimatedCounter(
                  value: 30,
                  text: '+',
                ),
                label: 'Github Projects',
              ),
              Highlight(
                counter: AnimatedCounter(
                  value: 13,
                  text: 'K+',
                ),
                label: 'Stars',
              ),
            ],
          ),
        ],
      )
    );
  }
}
