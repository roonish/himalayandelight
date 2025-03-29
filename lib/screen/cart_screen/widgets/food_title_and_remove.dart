import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/cartItem/cart_item_bloc.dart';
import 'package:himalayan_delights/screen/cart_screen/imports.dart';

import '../../../model/cartItem.dart';

class FoodTitleAndRemove extends StatelessWidget {
  final CartItem cartDetail;
  const FoodTitleAndRemove({
    super.key,
    required this.cartDetail,
  });

  @override
  Widget build(BuildContext context) {
    final cartEvent = BlocProvider.of<CartItemBloc>(context);

    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      LabelText(
        text: cartDetail.foodItem.name,
        color: AppColor.primaryColor,
        size: 18,
      ),
      InkWell(
          onTap: () {
            cartEvent.add(DeleteCart(id: cartDetail.cartItemId));
          },
          child: const Icon(Icons.delete))
    ]);
  }
}
