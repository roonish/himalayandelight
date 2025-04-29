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

class DisplayFav extends FavEvent {
  @override
  List<Object?> get props => [];
}

class DeleteFav extends FavEvent {
  final int id;

  const DeleteFav({required this.id});
  @override
  List<Object?> get props => [id];
}
