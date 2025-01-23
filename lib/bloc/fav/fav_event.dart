part of 'fav_bloc.dart';

sealed class FavEvent extends Equatable {
  const FavEvent();
}

class AddToFav extends FavEvent {
  final FoodItem foodItem;

  const AddToFav({required this.foodItem});
  @override
  List<Object?> get props => [foodItem];
}
