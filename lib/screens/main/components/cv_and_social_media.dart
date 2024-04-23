import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio/utils/constants.dart';

class CVAndSocialMedia extends StatelessWidget {
  const CVAndSocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //DIVIDER
        const Divider(),

        const SizedBox(
          height: defaultPadding / 2,
        ),

        // DOWNLOAD BUTTON
        TextButton(
          onPressed: () {},
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  'Download CV',
                  style: TextStyle(
                      color: Theme.of(context).textTheme.bodyText1!.color),
                ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset('assets/icons/download.svg'),
              ],
            ),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: defaultPadding),
          color: surfaceColorTwo,
          child: Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/linkedin.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/github.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/twitter.svg'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
