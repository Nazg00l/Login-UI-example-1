import 'package:flutter/material.dart';
import 'package:login_ui_example_1/screens/login_screen/animation/change_screen_animation.dart';
import 'package:login_ui_example_1/screens/login_screen/components/center_widget/login_content.dart';
import 'package:login_ui_example_1/utils/helper_fucntions.dart';

class TopText extends StatefulWidget {
  const TopText({
    Key? key,
  }) : super(key: key);

  @override
  State<TopText> createState() => _TopTextState();
}

class _TopTextState extends State<TopText> {
  @override
  void initState() {
    ChangeScreenAnimation.topTextAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HelperFunctions.wrapWithAnimationBuilder(
      animation: ChangeScreenAnimation.topTextAnimation,
      child: Text(
        ChangeScreenAnimation.currentScreen == Screens.createAccount
            ? 'Create\nAccount'
            : 'welcome\nBack',
        style: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
