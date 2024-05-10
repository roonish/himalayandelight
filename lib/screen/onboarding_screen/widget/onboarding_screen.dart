import 'package:flutter/material.dart';
import 'package:himalayan_delights/screen/onboarding_screen/onboarding_final_screen.dart';
import 'package:himalayan_delights/screen/onboarding_screen/onboarding_first_screen.dart';
import 'package:himalayan_delights/screen/onboarding_screen/onboarding_second_screen.dart';
import 'package:himalayan_delights/themes/color_theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({
    super.key,
  });

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

//goes to next page when called
  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  void prevPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBackgroundColor,
      body: SafeArea(
        child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return OnboardingFirstScreen(
                nextPage: () => nextPage(),
              );
            } else if (index == 1) {
              return OnboardingSecondScreen();
              //     nextPage: (List<String> selectedCriterias) {
              //   _selectedCriterias = selectedCriterias;
              //   nextPage();
              // });
            } else {
              return OnboardingFinalScreen();
            }
          },
        ),
      ),
    );
  }
}
