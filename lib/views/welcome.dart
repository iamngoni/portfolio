import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return const Scaffold();
    });
  }
}
