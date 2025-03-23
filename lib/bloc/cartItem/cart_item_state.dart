part of 'cart_item_bloc.dart';

sealed class CartItemState extends Equatable {
  const CartItemState();
}

final class CartItemInitial extends CartItemState {
  const CartItemInitial();
  @override
  List<Object?> get props => [];
}

final class CartItemLoading extends CartItemState {
  const CartItemLoading();
  @override
  List<Object?> get props => [];
}

final class CartItemAddedSucessful extends CartItemState {
  final CartItem cartItem;
  const CartItemAddedSucessful(this.cartItem);
  @override
  List<Object?> get props => [cartItem];
}

final class CartItemFoodListSuccess extends CartItemState {
  final BuiltList<CartItem> cartItemList;
  const CartItemFoodListSuccess(this.cartItemList);
  @override
  List<Object?> get props => [cartItemList];
}

final class CartItemFailed extends CartItemState {
  final String errorMsg;
  const CartItemFailed(this.errorMsg);
  @override
  List<Object?> get props => [errorMsg];
}

final class CartItemUpdated extends CartItemState {
  final CartItem cartItem;
  const CartItemUpdated(this.cartItem);
  @override
  List<Object?> get props => [cartItem];
}

final class CartItemDeleted extends CartItemState {
  const CartItemDeleted();
  @override
  List<Object?> get props => [];
}
