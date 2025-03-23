import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/repositories/cart_repository.dart';

part 'cart_item_event.dart';
part 'cart_item_state.dart';

class CartItemBloc extends Bloc<CartItemEvent, CartItemState> {
  final ApiCartRepository cartRepository;
  CartItemBloc(this.cartRepository) : super(CartItemInitial()) {
    on<DisplayCart>(_displayCartItem);
    //     on<AddToCart>(_addCartItem);
    // on<UpdateCart>(_updateCartItem);
    // on<DeleteCart>(_deleteCartItem);
  }

  void _displayCartItem(DisplayCart event, Emitter<CartItemState> emit) async {
    emit(const CartItemLoading());
    try {
      final BuiltList<CartItem>? cartItem = await cartRepository.getCartItems();
      if (cartItem!.isEmpty) {
        emit(const CartItemInitial());
      } else {
        emit(CartItemFoodListSuccess(cartItem));
      }
    } on Exception catch (e) {
      emit(CartItemFailed(e.toString()));
    }
  }

  // void _addCartItem(AddToCart event, Emitter<CartItemState> emit) async {
  //   emit(const CartItemLoading());
  //   try {
  //     final BuiltList<CartItem>? cartItem = await cartRepository.getCartItems();
  //     if (cartItem!.isEmpty) {
  //       emit(const CartItemInitial());
  //     } else {
  //       emit(CartItemFoodListSuccess(cartItem));
  //     }
  //   } on Exception catch (e) {
  //     emit(CartItemFailed(e.toString()));
  //   }
  // }
}
