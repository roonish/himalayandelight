part of 'navbar_bloc.dart';

@immutable
sealed class NavbarState {
  final int index;

  const NavbarState({required this.index});
}

final class NavbarInitial extends NavbarState {
  const NavbarInitial({required super.index});
}
