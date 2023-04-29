import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url4 = Uri.parse(
    'https://drive.google.com/file/d/1AahU_4P_lkPjZ8gA0ejY2-r9WyntP3WK/view?usp=share_link');

class Resume extends StatelessWidget {
  const Resume({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: _launchUrl4,
        child: FittedBox(
          child: Row(
            children: [
              Text(
                "RESUME",
                style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText1!.color),
              ),
              SizedBox(
                width: defaultPadding / 2,
              ),
              SvgPicture.asset("icons/download.svg")
            ],
          ),
        ));
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}

