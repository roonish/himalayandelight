import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';

import '../../model/favourite.dart';
import '../../model/foodItem.dart';
import '../../repositories/fav_repository.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  final ApiFavRepository favRepository;
  FavBloc(this.favRepository) : super(const FavInitial()) {
    on<DisplayFav>(_displayFavFood);
    on<AddToFav>(_addFavFood);
    on<DeleteFav>(_deleteFavFood);
  }

  void _displayFavFood(DisplayFav event, Emitter<FavState> emit) async {
    emit(const FavLoading());
    try {
      final BuiltList<Favourite>? favItems = await favRepository.getFavFood();
      if (favItems!.isEmpty) {
        emit(const FavInitial());
      } else {
        emit(FavFoodListSuccess(favItems));
      }
    } on Exception catch (e) {
      emit(FavFailed(e.toString()));
    }
  }

  void _addFavFood(AddToFav event, Emitter<FavState> emit) async {
    emit(const FavLoading());
    try {
      final Favourite favourite =
          await favRepository.addFavFood(event.foodItem);
      if (favourite.foodItem.name.isEmpty) {
        emit(const FavInitial());
      } else {
        emit(FavFoodAddedSucessful());
      }
    } on Exception catch (e) {
      emit(FavFailed(e.toString()));
    }
  }

  void _deleteFavFood(DeleteFav event, Emitter<FavState> emit) async {
    emit(const FavLoading());
    try {
      await favRepository.deleteFav(event.id);
      emit(FavFoodDeleted());
      
    } on Exception catch (e) {
      emit(FavFailed(e.toString()));
    }
  }
}
