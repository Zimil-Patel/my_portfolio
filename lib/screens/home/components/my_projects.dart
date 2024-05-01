import 'package:flutter/material.dart';
import 'package:my_portfolio/models/Project.dart';
import 'package:my_portfolio/screens/home/components/project_card.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/responsive.dart';

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
        Responsive(
          mobile: ProjectGridView(
            crossAxisCount: 1,
          ),
          mobileLarge: ProjectGridView(crossAxisCount: 2),
          tablet: ProjectGridView(childAspectRatio: 1.1),
          desktop: ProjectGridView(),
        ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    super.key,
    this.childAspectRatio = 1.3,
    this.crossAxisCount = 3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_projects.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
