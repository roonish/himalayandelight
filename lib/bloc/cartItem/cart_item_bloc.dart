import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:himalayan_delights/model/cartItem.dart';

part 'cart_item_event.dart';
part 'cart_item_state.dart';

class CartItemBloc extends Bloc<CartItemEvent, CartItemState> {
  CartItemBloc() : super(CartItemInitial()) {
    on<CartItemEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
