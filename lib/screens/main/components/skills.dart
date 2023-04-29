
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "CP",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.9,
                label: "C++",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "Java",
              ),
            )
          ],
        ),
        SizedBox(
          height: defaultPadding / 2,
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.9,
                label: "LLD",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.5,
                label: "ML",
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "Firebase",
              ),
            ),
            
          ],
        )
      ],
    );
  }
}
