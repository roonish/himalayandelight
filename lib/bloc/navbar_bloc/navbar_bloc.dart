import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navbar_event.dart';
part 'navbar_state.dart';

class NavbarBloc extends Bloc<NavbarEvent, NavbarState> {
  NavbarBloc() : super(const NavbarInitial(index: 0)) {
    on<NavbarEvent>((event, emit) {
      if (event is TabChange) {
        emit(NavbarInitial(index: event.tabIndex));
      }
    });
  }
}
