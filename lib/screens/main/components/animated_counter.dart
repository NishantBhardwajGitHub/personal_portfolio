import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';

class HighlighterText extends StatelessWidget {
  const HighlighterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 3,
                        text: "*",
                      ),
                      label: 'Codechef',
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                        value: 150,
                        text: "+",
                      ),
                      label: 'Leetcode',
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlight(
                      counter: AnimatedCounter(
                        value: 400,
                        text: "+",
                      ),
                      label: 'Geeksforgeeks',
                    ),
                    Highlight(
                      counter: AnimatedCounter(
                        value: 5,
                        text: "*",
                      ),
                      label: 'HackerRank',
                    )
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "*",
                  ),
                  label: 'Codechef',
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 150,
                    text: "+",
                  ),
                  label: 'Leetcode',
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 400,
                    text: "+",
                  ),
                  label: 'Geeksforgeeks',
                ),
                Highlight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: "*",
                  ),
                  label: 'HackerRank',
                )
              ],
            ),
    );
  }
}

class Highlight extends StatelessWidget {
  const Highlight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final Widget counter;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1,
        )
      ],
    );
  }
}

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0, end: value),
        duration: defaultDuration * 2,
        builder: ((context, value, child) => Text("$value$text",
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: primaryColor))));
  }
}
