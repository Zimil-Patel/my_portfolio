import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/responsive.dart';

import '../../../utils/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 1.8 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          //BACKGROUND IMAGE
          Image.asset(
            bgPhoto,
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),

          //ANIMATED TEXT COLUMN
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Discover my journey\n as a developer!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(
                    height: defaultPadding / 2,
                  ),
                const MyBuildAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
                // if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,
                        ),
                        backgroundColor: primaryColor,
                      ),
                      child: const Text(
                        'GET IN TOUCH',
                        style: TextStyle(color: darkColor),
                      )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text('I build '),
          Responsive.isMobile(context) ? const Expanded(child: AnimatedText()) : const AnimatedText(),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          'Responsive mobile app.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Employee real time attendance',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'complete e-Commerce app UI.',
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          'Chat app with Firebase.',
          speed: const Duration(milliseconds: 60),
        ),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: '<',
        children: [
          TextSpan(text: 'flutter', style: TextStyle(color: primaryColor)),
          TextSpan(text: '>'),
        ],
      ),
    );
  }
}
