part of 'fav_bloc.dart';

sealed class FavState extends Equatable {
  const FavState();
  
  @override
  List<Object> get props => [];
}

final class FavInitial extends FavState {}
