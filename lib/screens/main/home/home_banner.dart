import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url5 = Uri.parse('https://github.com/NishantBhardwajGitHub');

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/red city.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              color: darkColor.withOpacity(0.6),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Explore My Art Space",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  if (!Responsive.isMobileLarge(context))
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                  MyAnimatedText(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  if (!Responsive.isMobileLarge(context)) ExploreHeaderButton()
                ],
              ),
            )
          ],
        ));
  }
}

class ExploreHeaderButton extends StatelessWidget {
  const ExploreHeaderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _launchUrl5,
      style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(
              horizontal: defaultPadding * 2, vertical: defaultPadding),
          backgroundColor: primaryColor),
      child: Text(
        "Explore All",
        style: TextStyle(color: darkColor),
      ),
    );
  }
}

Future<void> _launchUrl5() async {
  if (!await launchUrl(_url5)) {
    throw Exception('Could not launch $_url5');
  }
}

class MyAnimatedText extends StatelessWidget {
  const MyAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              height: defaultPadding / 2,
            ),
          Text(
            "Developed ",
            style: Theme.of(context).textTheme.subtitle1!,
          ),
          Responsive.isMobile(context)
              ? Expanded(
                  child: AnimatedText(),
                )
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              height: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(repeatForever: true, animatedTexts: [
      TyperAnimatedText('Meal Market ......',
          speed: Duration(milliseconds: 120)),
      TyperAnimatedText('Sole Mate ......', speed: Duration(milliseconds: 120)),
      TyperAnimatedText('Watch Advice......',
          speed: Duration(milliseconds: 120)),
      TyperAnimatedText('GiggleGram ......',
          speed: Duration(milliseconds: 120)),
    ]);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(
          text: "Personal Projects", style: TextStyle(color: primaryColor)),
      TextSpan(
        text: '>',
      )
    ]));
  }
}
