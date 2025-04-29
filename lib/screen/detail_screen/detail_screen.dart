import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:himalayan_delights/bloc/cartItem/cart_item_bloc.dart';
import 'package:himalayan_delights/model/cartItem.dart';
import 'package:himalayan_delights/screen/detail_screen/imports.dart';

import '../../model/foodItem.dart';

class DetailScreen extends StatelessWidget {
  final FoodItem foodItem;

  const DetailScreen({
    super.key,
    required this.foodItem,
  });

  @override
  Widget build(BuildContext context) {
    final Size mediaQ = MediaQuery.of(context).size;
    const EdgeInsetsGeometry bodyPadding = EdgeInsets.symmetric(horizontal: 18);
    final ValueNotifier<int> itemCount = ValueNotifier<int>(1);
    const EdgeInsetsGeometry quantityButtonPadding =
        EdgeInsets.only(top: 30, bottom: 10);
    const EdgeInsetsGeometry descPadding = EdgeInsets.symmetric(vertical: 20);
    const EdgeInsetsGeometry buttonPadding = EdgeInsets.symmetric(vertical: 20);

    final cartEvent = BlocProvider.of<CartItemBloc>(context);
    final CartItem cartItem = CartItem(
      (b) {
        b.foodItem = foodItem.toBuilder();
        b.quantity = 1;
      },
    );

    return Scaffold(
      appBar: appBar(context, title: 'Food detail'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FoodImage(mediaQ: mediaQ, image: foodItem.image),
            Padding(
              padding: quantityButtonPadding,
              child: QuantityButton(
                itemCount: itemCount,
              ),
            ),
            Padding(
              padding: bodyPadding,
              child: Column(
                children: [
                  FoodTitle(title: foodItem.name, price: foodItem.unitPrice),
                  Padding(
                    padding: descPadding,
                    child: LabelText(maxLine: 6, size: 15, text: foodItem.desc),
                  ),
                  FoodDetail(
                    calory: foodItem.calory,
                    rating: foodItem.rating,
                  ),
                  Padding(
                    padding: buttonPadding,
                    child: AppButton(
                        text: 'Add to cart',
                        verticalPadding: 12,
                        ontap: () {
                          // cartEvent.add(AddToCart(cartItem: foodItem));
                          // context.go('/orderSuccess');
                          print(itemCount.value);
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
