import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';
import '../bloc/navbar_bloc/navbar_bloc.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  const BottomNavBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;

    final navBarEvent = BlocProvider.of<NavbarBloc>(context);
    return SizedBox(
      height: getDeviceExactHeight(66, mediaQ),
      child: BottomNavigationBar(
          currentIndex: index,
          backgroundColor: AppColor.searchColor,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedItemColor: AppColor.headerColor,
          unselectedItemColor: AppColor.textColor,
          unselectedLabelStyle: const TextStyle(fontSize: 10),
          selectedLabelStyle: const TextStyle(fontSize: 10),
          onTap: (value) => navBarEvent.add(TabChange(tabIndex: value)),
          items: [
            navBarItem(icon: Icons.home, label: 'Home'),
            navBarItem(icon: Icons.favorite, label: 'Favourite'),
            navBarItem(icon: Icons.local_grocery_store, label: 'My cart'),
            navBarItem(icon: Icons.mail, label: 'Message'),
            navBarItem(icon: Icons.person, label: 'Profile'),
          ]),
    );
  }

  BottomNavigationBarItem navBarItem(
      {required IconData icon, required String label}) {
    const EdgeInsetsGeometry iconPadding = EdgeInsets.symmetric(vertical: 5);
    const EdgeInsetsGeometry gapPadding = EdgeInsets.all(6.0);

    return BottomNavigationBarItem(
      icon: Padding(
        padding: iconPadding,
        child: Icon(
          icon,
          color: AppColor.textColor,
        ),
      ),
      activeIcon: Padding(
        padding: iconPadding,
        child: Container(
          padding: gapPadding,
          decoration: BoxDecoration(
              color: AppColor.primaryColor, shape: BoxShape.circle),
          child: Icon(
            icon,
            color: AppColor.headerColor,
          ),
        ),
      ),
      label: label,
    );
  }
}
