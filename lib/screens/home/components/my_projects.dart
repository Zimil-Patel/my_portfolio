import 'package:flutter/material.dart';
import 'package:my_portfolio/models/Project.dart';
import 'package:my_portfolio/screens/home/components/project_card.dart';
import 'package:my_portfolio/utils/constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),

        const SizedBox(
          height: defaultPadding,
        ),

        //PROJECT GRID-VIEW
        GridView.builder(
          shrinkWrap: true,
          itemCount: demo_projects.length,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demo_projects[index],
          ),
        ),
      ],
    );
  }
}
