import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/favourite.dart';
import '../../model/foodItem.dart';
import '../../repositories/fav_repository.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  final ApiFavRepository favRepository;
  FavBloc(this.favRepository) : super(FavInitial()) {
    on<DisplayFav>(_displayFavFood);
  }

  void _displayFavFood(DisplayFav event, Emitter<FavState> emit) async {}
}
