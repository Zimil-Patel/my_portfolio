import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class Highlight extends StatelessWidget {
  const Highlight({
    super.key,
    required this.counter,
    this.lable,
  });

  final Widget counter;
  final String? lable;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          lable!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
