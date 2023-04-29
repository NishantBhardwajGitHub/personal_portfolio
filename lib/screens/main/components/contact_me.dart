import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_profile/constants.dart';

final Uri _url = Uri.parse('https://www.linkedin.com/in/nishantbhardwaj2/');

final Uri _url2 = Uri.parse('https://github.com/NishantBhardwajGitHub');

final Uri _url3 = Uri.parse('https://www.instagram.com/nishantbhaardwaj/');

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0xff24242e),
      child: Row(children: [
        Spacer(),
        IconButton(
          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          onPressed: _launchUrl,
        ),
        IconButton(
            onPressed: _launchUrl2,
            icon: SvgPicture.asset("assets/icons/github.svg")),
        IconButton(
            onPressed: _launchUrl3,
            icon: SvgPicture.asset("assets/icons/instagram.svg")),
        Spacer(),
      ]),
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url');
  }
}
