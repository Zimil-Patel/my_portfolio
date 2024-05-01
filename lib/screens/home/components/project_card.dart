import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/models/Project.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TITLE
          Text(
            project.title!,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          //DESCRIPTION
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.5,
            ),
          ),
          const Spacer(),
          //READ MORE BUTTON
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: const Text(
              'Read More >>',
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
