import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //DIVIDER
        const Divider(),

        //KNOWLEDGE INFO
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Text('Knowledge', style: Theme.of(context).textTheme.subtitle2,),
        ),

        const KnowledgeText(name: 'Flutter, Dart',),
        const KnowledgeText(name: 'Stylus, Sass, Less',),
        const KnowledgeText(name: 'Gulp, Webpack, Grunt',),
        const KnowledgeText(name: 'GIT Knowledge',),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/check.svg'),
        const SizedBox(width: defaultPadding / 2,),
        Text(name),
      ],
    );
  }
}