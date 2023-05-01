import 'package:flutter/material.dart';

import 'package:flutter_profile/screens/main/components/animated_counter.dart';
import 'package:flutter_profile/screens/main/components/my_projects.dart';
import 'package:flutter_profile/screens/main/components/recommendation_bottom.dart';
import 'package:flutter_profile/screens/main/home/home_banner.dart';

import 'package:flutter_profile/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        HighlighterText(),
        MyProjects(),
        // Recommendations()
      ],
    );
  }
}
