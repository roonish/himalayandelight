import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  FavBloc() : super(FavInitial()) {
    on<FavEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
