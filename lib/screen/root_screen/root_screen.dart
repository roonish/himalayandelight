import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/navbar_bloc/navbar_bloc.dart';
import 'package:himalayan_delights/screen/cart_screen/cart_screen.dart';
import 'package:himalayan_delights/screen/home_screen/home_screen.dart';
import 'package:himalayan_delights/screen/home_screen/imports.dart';
import '../favourite_screen/favourite_screen.dart';
import '../message_screen/message_screen.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //limited to 5 screen
    List<Widget> navBarScreen = const [
      HomeScreen(),
      FavouriteScreen(),
      CartScreen(),
      MessagesScreen(),
      Text('5'),
    ];

    return BlocBuilder<NavbarBloc, NavbarState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(index: state.index, children: navBarScreen),
          bottomNavigationBar: BottomNavBar(
            index: state.index,
          ),
        );
      },
    );
  }
}
