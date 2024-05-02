import 'package:flutter/material.dart';

import '../themes/color_theme.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle:
              const TextStyle(color: AppColor.textColor, fontSize: 10),
          selectedLabelStyle: const TextStyle(fontSize: 10),
          items: [
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(Icons.home),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Icon(Icons.home),
                  ),
                ),
                label: 'Home',
                backgroundColor: AppColor.searchColor),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.favorite),
                    ),
                  ),
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(
                    Icons.local_grocery_store,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.local_grocery_store),
                    ),
                  ),
                ),
                label: 'My cart'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(
                    Icons.mail,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.mail),
                    ),
                  ),
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Icon(
                    Icons.person_off_outlined,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(Icons.home),
                    ),
                  ),
                ),
                label: 'Profile'),
          ]),
    );
  }
}