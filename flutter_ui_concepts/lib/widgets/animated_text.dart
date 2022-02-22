import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
        fontSize: 72.0, fontFamily: 'Horizon', fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Text Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Suresh K.',
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                    speed: const Duration(milliseconds: 400)),
              ],
              totalRepeatCount: 4,
              pause: const Duration(microseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     RotateAnimatedText(
            //       'Suresh K.',
            //       textStyle: const TextStyle(
            //           fontSize: 30,
            //           fontWeight: FontWeight.w600,
            //           color: Colors.redAccent),
            //     ),
            // RotateAnimatedText(
            //   'Sharma',
            //   textStyle: const TextStyle(
            //       fontSize: 30, fontWeight: FontWeight.bold),
            // ),
            // RotateAnimatedText(
            //   'Cool',
            //   textStyle: const TextStyle(
            //       fontSize: 30, fontWeight: FontWeight.bold),
            // ),
            //   ],
            // ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     WavyAnimatedText('Hello World',
            //         textStyle: const TextStyle(
            //             fontSize: 30, fontWeight: FontWeight.bold)),
            //     WavyAnimatedText('Its cool',
            //         textStyle: const TextStyle(
            //             fontSize: 30, fontWeight: FontWeight.bold))
            //   ],
            // ),
            // AnimatedTextKit(
            //   animatedTexts: [
            //     TyperAnimatedText('Hello World',
            //         textStyle: const TextStyle(
            //             fontSize: 30, fontWeight: FontWeight.bold),
            //         speed: const Duration(milliseconds: 400)),
            //   ],
            // )
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText('Hello World',
                    textStyle: colorizeTextStyle, colors: colorizeColors),
              ],
            ),
            SizedBox(
              child: TextLiquidFill(
                text: 'Suresh K.',
                boxBackgroundColor: Colors.white,
                textStyle:
                    const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
