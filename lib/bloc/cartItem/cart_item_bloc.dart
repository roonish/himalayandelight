import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:himalayan_delights/model/cartDetail.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/repositories/cart_repository.dart';

part 'cart_item_event.dart';
part 'cart_item_state.dart';

class CartItemBloc extends Bloc<CartItemEvent, CartItemState> {
  final ApiCartRepository cartRepository;
  CartItemBloc(this.cartRepository) : super(CartItemInitial()) {
    on<DisplayCart>(_displayCartItem);
    //     on<AddToCart>(_addCartItem);
    on<UpdateCart>(_updateCartItem);
    on<DeleteCart>(_deleteCartItem);
  }

  void _displayCartItem(DisplayCart event, Emitter<CartItemState> emit) async {
    emit(const CartItemLoading());
    try {
      final CartDetail? cartDetail = await cartRepository.getCartItems();
      if (cartDetail!.cartItems.isEmpty) {
        emit(const CartItemInitial());
      } else {
        emit(CartItemFoodListSuccess(cartDetail));
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

  void _updateCartItem(UpdateCart event, Emitter<CartItemState> emit) async {
    emit(const CartItemLoading());
    try {
      final CartItem updatedCartItem =
          await cartRepository.updateCartItem(event.id, event.updatedCartItem);
      if (updatedCartItem == null) {
        emit(const CartItemInitial());
      } else {
        //once updated get newly updated cartdetails
        final CartDetail? cartDetail = await cartRepository.getCartItems();
        if (cartDetail == null || cartDetail.cartItems.isEmpty) {
          emit(const CartItemInitial());
        } else {
          emit(CartItemFoodListSuccess(cartDetail));
        }
      }
    } on Exception catch (e) {
      emit(CartItemFailed(e.toString()));
    }
  }

  void _deleteCartItem(DeleteCart event, Emitter<CartItemState> emit) async {
    emit(const CartItemLoading());
    try {
      await cartRepository.deleteCartItem(event.id);
      //once updated get newly updated cartdetails
      final CartDetail? cartDetail = await cartRepository.getCartItems();
      if (cartDetail == null || cartDetail.cartItems.isEmpty) {
        emit(const CartItemInitial());
      } else {
        emit(CartItemDeleted());
        emit(CartItemFoodListSuccess(cartDetail));
      }
    } on Exception catch (e) {
      emit(CartItemFailed(e.toString()));
    }
  }
}
