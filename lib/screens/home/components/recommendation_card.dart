import 'package:flutter/material.dart';

import '../../../models/Recommendation.dart';
import '../../../utils/constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NAME
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          //SOURCE
          Text(recommendation.source!),
          const SizedBox(
            height: defaultPadding,
          ),
          //TEXT
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}