import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key,
    required this.title,
    required this.text,
  });

  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$title : ',
            style: const TextStyle(color: Colors.white),
          ),
          Text(text),
        ],
      ),
    );
  }
}
