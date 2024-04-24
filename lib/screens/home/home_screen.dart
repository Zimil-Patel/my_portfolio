import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/models/Project.dart';
import 'package:my_portfolio/models/Recommendation.dart';
import 'package:my_portfolio/screens/home/components/highlights_info.dart';
import 'package:my_portfolio/screens/home/components/my_projects.dart';
import 'package:my_portfolio/screens/main/main_screen.dart';
import 'package:my_portfolio/utils/constants.dart';

import 'components/home_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      //BACKGROUND IMAGES AND ANIMATED TEXT
      HomeBanner(),

      //HIGH LIGHTS INFO IN ROW
      HighlightsInfo(),

      //MY PROJECTS
      MyProjects(),

      //RECOMMENDATIONS
      Recommendations(),
    ]);
  }
}

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommendations',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Row(
            children: List.generate(
              demo_recommendations.length,
              (index) => RecommendationCard(),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //NAME
          Text(
            demo_recommendations[0].name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          //SOURCE
          Text(demo_recommendations[0].source!),
          SizedBox(
            height: defaultPadding,
          ),
          //TEXT
          Text(
            demo_recommendations[0].text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
        ],
      ),
    );
  }
}
