
import 'package:flutter/material.dart';
import 'package:flutter_profile/screens/main/components/animated_progress_indicator.dart';
import 'package:flutter_profile/constants.dart';

class Languages extends StatelessWidget {
  const Languages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child:
              Text("Languages", style: Theme.of(context).textTheme.subtitle2),
        ),
        AnimatedLinearProgressIndicator(percentage: 0.9, label: "C++",),
        AnimatedLinearProgressIndicator(percentage: 0.75, label: "Java",),
        AnimatedLinearProgressIndicator(percentage: 0.7, label: "Dart",),
        AnimatedLinearProgressIndicator(percentage: 0.8, label: "SQL",),
      
      ],
    );
  }
}
