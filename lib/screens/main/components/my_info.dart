import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.23,
        child: Container(
          color: secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(
                flex: 2,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/redprofile.jpg"),
              ),
              Spacer(),
              Text(
                "Nishant Bhardwaj",
                style: Theme.of(context).textTheme.subtitle2,
              ),
              AnimatedTextKit(repeatForever: true, animatedTexts: [
                TyperAnimatedText('Competitive Programmer.',
                    speed: Duration(milliseconds: 120)),
                TyperAnimatedText('Flutter Developer.',
                    speed: Duration(milliseconds: 120)),
              ]),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ));
  }
}
