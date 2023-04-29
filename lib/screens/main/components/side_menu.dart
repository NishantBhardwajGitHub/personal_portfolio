import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/main/components/area_info_text.dart';
import 'package:flutter_profile/screens/main/components/contact_me.dart';
import 'package:flutter_profile/screens/main/components/languages.dart';
import 'package:flutter_profile/screens/main/components/resume.dart';
import 'package:flutter_profile/screens/main/components/skills.dart';


import 'my_info.dart';

class sideMenu extends StatelessWidget {
  const sideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  AreaInfo(title: "Nationality", text: "Indian"),
                  AreaInfo(title: "City", text: "Gurugram"),
                  AreaInfo(title: "Age", text: "21"),
                  Skills(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Languages(),
                  Divider(),
                  SizedBox(
                    height: defaultPadding / 2,
                  ),
                  Resume(),
                  ContactMe()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

