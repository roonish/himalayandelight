part of 'fav_bloc.dart';

sealed class FavState extends Equatable {
  const FavState();
}

final class FavInitial extends FavState {
  const FavInitial();
  @override
  List<Object?> get props => [];
}

final class FavLoading extends FavState {
  const FavLoading();
  @override
  List<Object?> get props => [];
}

final class FavFoodAddedSucessful extends FavState {
  final Favourite favFood;
  const FavFoodAddedSucessful(this.favFood);
  @override
  List<Object?> get props => [favFood];
}

final class FavFoodListSuccess extends FavState {
  final BuiltList<Favourite> favFoodItem;
  const FavFoodListSuccess(this.favFoodItem);
  @override
  List<Object?> get props => [favFoodItem];
}

final class FavFailed extends FavState {
  final String errorMsg;
  const FavFailed(this.errorMsg);
  @override
  List<Object?> get props => [errorMsg];
}

final class FavFoodDeleted extends FavState {
  const FavFoodDeleted();
  @override
  List<Object?> get props => [];
}
