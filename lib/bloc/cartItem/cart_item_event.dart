part of 'cart_item_bloc.dart';

sealed class CartItemEvent extends Equatable {
  const CartItemEvent();
}

class AddToCart extends CartItemEvent {
  final CartItem cartItem;

  const AddToCart({required this.cartItem});
  @override
  List<Object?> get props => [cartItem];
}

class DisplayCart extends CartItemEvent {
  @override
  List<Object?> get props => [];
}

class DeleteCart extends CartItemEvent {
  final int id;

  const DeleteCart({required this.id});
  @override
  List<Object?> get props => [id];
}

class UpdateCart extends CartItemEvent {
  final CartItem updatedCartItem;

  final int id;

  const UpdateCart({required this.id, required this.updatedCartItem});
  @override
  List<Object?> get props => [id, updatedCartItem];
}
