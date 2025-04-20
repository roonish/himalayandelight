import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';

import '../../model/favourite.dart';
import '../../model/foodItem.dart';
import '../../repositories/fav_repository.dart';

part 'fav_event.dart';
part 'fav_state.dart';

class FavBloc extends Bloc<FavEvent, FavState> {
  //  keep track of which food items are marked as favorites
  final Set<int> favoriteFoodIds = {}; // Store favorite item IDs
  final ApiFavRepository favRepository;
  FavBloc(this.favRepository) : super(const FavInitial()) {
    on<DisplayFav>(_displayFavFood);
    on<AddToFav>(_addToggleFavFood);
    on<DeleteFav>(_deleteFavFood);
  }

  void _displayFavFood(DisplayFav event, Emitter<FavState> emit) async {
    emit(const FavLoading());
    try {
      final BuiltList<Favourite>? favItems = await favRepository.getFavFood();
      if (favItems!.isEmpty) {
        emit(const FavInitial());
      } else {
        favoriteFoodIds.clear();
        favoriteFoodIds.addAll(favItems.map((fav) => fav.foodItem.id));
        emit(FavFoodListSuccess(favItems));
      }
    } on Exception catch (e) {
      emit(FavFailed(e.toString()));
    }
  }

  void _addToggleFavFood(AddToFav event, Emitter<FavState> emit) async {
    final foodId = event.foodItem.id;
    emit(const FavLoading());
    // If the item is already a favorite (foodId is in favoriteFoodIds) → Remove it
    if (favoriteFoodIds.contains(foodId)) {
      // Remove from favorites
      favoriteFoodIds.remove(foodId);
      await favRepository.deleteFav(foodId);
      emit(FavFoodDeleted());
    } else {
      // Add to favorites
      favoriteFoodIds.add(foodId);

      try {
        final Favourite favourite =
            await favRepository.addFavFood(event.foodItem);
        if (favourite.foodItem.name.isEmpty) {
          emit(const FavInitial());
        } else {
          emit(FavFoodAddedSucessful(favourite));
        }
      } on Exception catch (e) {
        emit(FavFailed(e.toString()));
      }
    }
  }

  void _deleteFavFood(DeleteFav event, Emitter<FavState> emit) async {
    emit(const FavLoading());
    try {
      await favRepository.deleteFav(event.id);
      favoriteFoodIds.remove(event.id);
      emit(FavFoodDeleted());
    } on Exception catch (e) {
      emit(FavFailed(e.toString()));
    }
  }

  bool isFavorite(int id) {
    return favoriteFoodIds.contains(id);
  }
}
