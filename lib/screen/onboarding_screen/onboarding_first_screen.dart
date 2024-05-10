import 'package:flutter/material.dart';
import 'package:himalayan_delights/utils/safe_size.dart';

class OnboardingFirstScreen extends StatefulWidget {
  final void Function() nextPage;

  const OnboardingFirstScreen({super.key, required this.nextPage});

  @override
  State<OnboardingFirstScreen> createState() => _OnboardingFirstScreenState();
}

class _OnboardingFirstScreenState extends State<OnboardingFirstScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
    );

    _controller.addListener(() {
      if (_controller.isCompleted) {
        setState(() {
          _controller.reset();
          _controller.forward();
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _welcomeOnboardingPadding = const EdgeInsets.only(top: 50);
    final _buttonPadding = const EdgeInsets.only(bottom: 60, right: 10);
    final MediaQueryData mediaQD = MediaQuery.of(context);
    Size safeAreaSize = getSafeAreaSize(mediaQD);

    return Container();
  }
}
