import 'package:flutter/material.dart';
import 'onboarding_screen.dart';

class OnboardingRootScreen extends StatefulWidget {
  const OnboardingRootScreen({super.key});

  @override
  State<OnboardingRootScreen> createState() => _OnboardingRootScreenState();
}

class _OnboardingRootScreenState extends State<OnboardingRootScreen> {
  int currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
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

  //goes to previous page when called
  void previousPage() {
    _pageController.previousPage(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Order your food now',
      'image': 'assets/images/food.png',
      'description':
          "A variety of foods made by the best chef. Ingredients are easy to find, all delicious flavors can only be found at cookbunda",
      'skip': true,
    },
    {
      'title': 'Carefully Prepared',
      'image': 'assets/images/chef.png',
      'description':
          'Not all food, we provide clear healthy drink options for you. Fresh taste always accompanies you',
      'skip': true
    },
    {
      'title': 'Fast Delivery',
      'image': 'assets/images/deliveryboy.webp',
      'description':
          'Are you ready to make a dish for your friends or family? create an account and cooks',
      'skip': false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return OnboardingScreen(
            nextPage: nextPage,
            image: _pages[index]['image'],
            topic: _pages[index]['title'],
            desc: _pages[index]['description'],
            skip: _pages[index]['skip'],
            pageIndex: currentIndex,
          );
        },
      ),
    );
  }
}
