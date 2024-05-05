import 'package:himalayan_delights/screen/home_screen/imports.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry iconPadding = EdgeInsets.symmetric(vertical: 5);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.all(6.0);

    return SizedBox(
      height: getDeviceExactHeight(67, mediaQ),
      child: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle:
              const TextStyle(color: AppColor.textColor, fontSize: 10),
          selectedLabelStyle: const TextStyle(fontSize: 10),
          items: [
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: iconPadding,
                  child: Icon(Icons.home),
                ),
                activeIcon: Padding(
                  padding: iconPadding,
                  child: Container(
                    padding: gapPadding,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Icon(Icons.home),
                  ),
                ),
                label: 'Home',
                backgroundColor: AppColor.searchColor),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: iconPadding,
                  child: Icon(
                    Icons.favorite,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: iconPadding,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: gapPadding,
                      child: Icon(Icons.favorite),
                    ),
                  ),
                ),
                label: 'Favourite'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: iconPadding,
                  child: Icon(
                    Icons.local_grocery_store,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: iconPadding,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: gapPadding,
                      child: Icon(Icons.local_grocery_store),
                    ),
                  ),
                ),
                label: 'My cart'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: iconPadding,
                  child: Icon(
                    Icons.mail,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: iconPadding,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: gapPadding,
                      child: Icon(Icons.mail),
                    ),
                  ),
                ),
                label: 'Message'),
            BottomNavigationBarItem(
                icon: const Padding(
                  padding: iconPadding,
                  child: Icon(
                    Icons.person_off_outlined,
                    color: AppColor.textColor,
                  ),
                ),
                activeIcon: Padding(
                  padding: iconPadding,
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor, shape: BoxShape.circle),
                    child: const Padding(
                      padding: gapPadding,
                      child: Icon(Icons.home),
                    ),
                  ),
                ),
                label: 'Profile'),
          ]),
    );
  }
}
